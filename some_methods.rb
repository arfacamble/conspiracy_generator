require 'open-uri'
require 'nokogiri'
# html = open('https://en.wikipedia.org/wiki/Ty_Jordan')
# doc = Nokogiri::HTML(html)
# paragraphs = []
# doc.css('p').each do |para|
#   paragraphs.push para.text
# end

# links = doc.css('p a').map { |link| link['href'] }
# links.select! { |link| link[0] == '/' }
#      .map! { |link| "https://en.wikipedia.org#{link}" }
# p links

def array_of_links(url)
  html = open(url)
  doc = Nokogiri::HTML(html)
  array_of_links = doc.css('p a').map { |link| link['href'] }
  array_of_links.select! { |link| link[0] == '/' }
                .map! { |link| "https://en.wikipedia.org#{link}" }
end
