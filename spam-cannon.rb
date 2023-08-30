require 'httparty'

class PullPoll

  attr_accessor :response

  def initialize(url)
    @url = url
    @token = ENV['GITHUB_TOKEN']
    @response = nil
  end

  def run
    @response = HTTParty.get(@url,
      headers: {
        "Accept" => "application/vnd.github+json",
        "Authorization" => "Bearer #{@token}",
        "X-GitHub-Api-Version" => "2022-11-28"
      }
    )
  end
end

polls = 50.times.map { PullPoll.new('https://api.github.com/repos/carltonbrown/odaiba/pulls/24') }

threads = polls.map do |poll|
  Thread.new { poll.run }
end

threads.each(&:join)

puts polls.map { |poll| poll.response.code }.join("\n")
