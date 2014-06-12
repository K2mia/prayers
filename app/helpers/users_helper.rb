module UsersHelper

  def gravatar_for(user)
    gid = Digest::MD5::hexdigest(user.email.downcase)
    #gurl = "https://secure.gravatar.com/avatars/#{gid}.png"
    gurl = 'http://mudconnect.com/images/avatars/icculus1.jpg'
    image_tag(gurl, class: 'gravatar' )
  end

end
