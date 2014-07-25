require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'
module WelcomeHelper
     
  def blog_feed
    source = "http://timesofindia.feedsportal.com/c/33039/f/534004/index.rss"
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    rss = RSS::Parser.parse(content, false)
    html = "<h4>Top News Feeds: </h4><ul>"
    html << "<li class='more_news'><b><i><a href='#{source}'>All Top News.. </a></i><b></li>"
    rss.items.first(3).each do |i|
      html << "<li><p>#{i.title}</p></li>"
      html << "<li><p>#{i.description}</p></li>"
    end
    html << "<li class='more_news'><b><i><a href='#{source}'>More Top News.. </a></i><b></li></ul>"
  
    science_source = "http://timesofindia.feedsportal.com/c/33039/f/533922/index.rss"
    science_content = "" # raw content of rss feed will be loaded here
    open(science_source) do |s| science_content = s.read end
    science_rss = RSS::Parser.parse(science_content, false)
    html << "<h4>Science Feeds: </h4><ul>"
    html << "<li class='more_news'><b><i><a href='#{science_source}'>All Science News.. </a></i><b></li>"
    science_rss.items.first(3).each do |i|
      html << "<li class='title'><p class='title'>#{i.title}</p></li>"
      html << "<li class='description'><p class='description'>#{i.description}</p></li>"
    end
    html << "<li class='more_news'><b><i><a href='#{science_source}'>More News.. </a></i></b></li></ul>"
    
    
    tech_source = "http://timesofindia.feedsportal.com/c/33039/f/533923/index.rss"
    tech_content = "" # raw content of rss feed will be loaded here
    open(tech_source) do |s| tech_content = s.read end
    tech_rss = RSS::Parser.parse(tech_content, false)
    html << "<h4>Technology Feeds: </h4><ul>"
    html << "<li class='more_news'><b><i><a href='#{tech_source}'>All Technology News.. </a></i><b></li>"
    tech_rss.items.first(3).each do |i|
      html << "<li class='title'><p class='title'>#{i.title}</p></li>"
      html << "<li class='description'><p class='description'>#{i.description}</p></li>"
    end
    html << "<li class='more_news'><b><i><a href='#{tech_source}'>More Technology News.. </a></i></b></li></ul>"
    
    
    bang_source = "http://timesofindia.feedsportal.com/c/33039/f/533977/index.rss"
    bang_content = "" # raw content of rss feed will be loaded here
    open(bang_source) do |s| bang_content = s.read end
    bang_rss = RSS::Parser.parse(bang_content, false)
    html << "<h4>Bangalore Feeds: </h4><ul>"
    html << "<li class='more_news'><b><i><a href='#{bang_source}'>All Bangalore News.. </a></i><b></li>"
    bang_rss.items.first(3).each do |i|
      html << "<li class='title'><p class='title'>#{i.title}</p></li>"
      html << "<li class='description'><p class='description'>#{i.description}</p></li>"
    end
    html << "<li class='more_news'><b><i><a href='#{bang_source}'>More Bangalore News.. </a></i></b></li></ul>"
    
    
    business_source = "http://timesofindia.feedsportal.com/c/33039/f/534010/index.rss"
    business_content = "" # raw content of rss feed will be loaded here
    open(business_source) do |s| business_content = s.read end
    business_rss = RSS::Parser.parse(business_content, false)
    html << "<h4>Business Feeds: </h4><ul>"
    html << "<li class='more_news'><b><i><a href='#{business_source}'>All Business News.. </a></i><b></li>"
    business_rss.items.first(3).each do |i|
      html << "<li class='title'><p class='title'>#{i.title}</p></li>"
      html << "<li class='description'><p class='description'>#{i.description}</p></li>"
    end
    html << "<li class='more_news'><b><i><a href='#{business_source}'>More Business News.. </a></i></b></li></ul>"
    
    
    html.html_safe
  end
  
end
