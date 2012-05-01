class FacebookPostObserver < ActiveRecord::Observer
	observe :blog_post
	def after_save(record)
    if record.facebook_needed?
      record.post_facebook!
    end
  end
end