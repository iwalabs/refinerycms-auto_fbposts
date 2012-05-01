namespace :refinery do

  namespace :auto_fbposts do

    # call this task my running: rake refinery:auto_fbposts:cron

    desc "Check non-facebooked blog post and post them to facebook"
    task :cron => :environment do
      BlogPost.live.where(post_facebook: true, facebook_posted: false).each do |post|
        if post.facebook_needed?
          puts "FB: #{post.title}"
          post.post_facebook!
        end
      end
    end

  end

end