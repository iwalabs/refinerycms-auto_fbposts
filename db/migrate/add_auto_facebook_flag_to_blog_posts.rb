class AddAutoFacebookFlagToBlogPosts < ActiveRecord::Migration

  def self.up
    add_column :blog_posts, :post_facebook, :boolean, default: false
    add_column :blog_posts, :facebook_posted, :boolean, default: false
  end

  def self.down
    remove_column :blog_posts, :post_facebook
    remove_column :blog_posts, :facebook_posted
  end

end
