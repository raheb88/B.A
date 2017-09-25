module ApplicationHelper
  def gravatar_for(user, options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "img-circle")
  end

  # for header
  def header(text)
  content_for(:header) { text.to_s }
end

#def resource_name
#  :participant
#end

#def resource
#  @participant ||= Participant.new
#end
#def devise_mapping
#  @devise_mapping ||= Devise.mappings[:participant]
#end

end
