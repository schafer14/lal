xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do 
	xml.channel do
		xml.title "Our posts"
		xml.content "Latest posts, come and get them"
		xml.link posts_url

		@posts.each do |post|
			xml.item do
				xml.title post.title
				xml.pubDate post.created_at.to_s(:rfc822)
				xml.content post.content
			end
		end
	end
end