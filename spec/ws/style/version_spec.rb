describe Ws::Style::VERSION do
  def get_version(git, branch = 'HEAD')
    git.grep('VERSION = ', 'lib/*/version.rb', { object: branch }).
      map { |_sha, matches| matches.first[1] }.
      map(&method(:parse_version)).
      reject(&:nil?).
      first
  end

  def parse_version(string)
    string.match(/VERSION = ['"](.*)['"]/)[1]
  end

  let(:git) { Git.open('.') }
  let(:head_version) { get_version(git, 'HEAD') }
  let(:master_version) { get_version(git, 'origin/master') }

  it 'has a version number' do
    expect(head_version).not_to be_nil
  end

  it 'has a bumped version' do
    skip('already on master branch, no need to compare versions') if git.current_branch == 'master'

    raise 'no version.rb file found on the current branch' if head_version.nil?
    raise 'no version.rb file found on the master branch' if master_version.nil?

    expect(Gem::Version.new(head_version)).to be > Gem::Version.new(master_version)
  end
end
