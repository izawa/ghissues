require 'octokit'

module Ghissues
class Ghissues
  @@milestones = []
  @@config = { }

  def self.initialize(config)
    @@config = config
    initialize_octokit(config[:user], config[:token])
    fetchMilestones(config[:repo])
  end

  def self.initialize_octokit(user, token)
    Octokit.configure do |c|
      c.login = user
      c.access_token = token
    end
    Octokit.auto_paginate = true # e.g. over 30 OPEN milestones
  end

  def self.fetchMilestones(repo)
    @@milestones = Octokit.list_milestones(repo, direction: "desc")
  end

  def self.milestoneText2number(str)
    return nil unless str
    if @@milestones.size > 0
      match_array = @@milestones.select { |item| item[:title] == str }
      if match_array.size > 0
        return match_array[0][:number]
      else
        ret = Octokit.create_milestone(@@config[:repo], str)
        fetchMilestones(@@config[:repo])
        return ret[:number]
      end
    else
      ret = Octokit.create_milestone(@@config[:repo], str)
      fetchMilestones(@@config[:repo])
      return ret[:number]
    end
  end
end
end
