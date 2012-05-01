require 'fb_graph'

module RefineryExtension
  module Fbpost
    def self.post_facebook_message(title, url)
      access_token = RefinerySetting.get(:auto_facebook_access_token)
      page_id = RefinerySetting.get(:auto_facebook_page)
      message = RefinerySetting.get(:auto_facebook_message)
      message = message.gsub('{title}', title)

      page = FbGraph::Page.new(page_id, access_token: access_token)
      page.feed!(message: message, link: url)
    end
  end

  module AutoFbpost
    def facebook_needed?
      live? && post_facebook && !facebook_posted
    end

    def post_facebook!
      url = Rails.application.routes.url_helpers.blog_post_url(self)
      begin
        ::RefineryExtension::Fbpost.post_facebook_message(title, url)
        self.facebook_posted = true
        self.save
      rescue
      end
    end
  end
end

