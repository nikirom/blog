# Pager for each article page
# Previous(Olfer) article
def prev_link
  prv = sorted_articles.index(@item) + 1
  unless articles.size - 1 < prv
    link_to(
      '&laquo;[Older]   ' + sorted_articles[prv][:title],
      sorted_articles[prv].reps[0],
      :class => "left"
    )
  end
end

# Next(Newer) article
def next_link
  nxt = sorted_articles.index(@item) - 1
  unless nxt < 0
    link_to(
      sorted_articles[nxt][:title] + '   [Newer]&raquo;',
      sorted_articles[nxt].reps[0],
      :class => "right"
    )
  end
end

#tag
#def count_by_tag(items = nil)
#  items = @items if items.nil?
#  count_by_tag = Hash.new(0)
#  items.each do |item|
#    if item[:tags]
#      item[:tags].each do |tag|
#        count_by_tag[tag] += 1
#      end
#    end
#  end
#  count_by_tag
#end
#
##tag
#def create_tag_pages
#  tag_set(items).each do |tag|
#    items << ::Nanoc3::Item.new(
#    "<%= render('_tag_page', :tag => '#{tag}') %>",
#      {:title => "Tags: #{tag}", :is_hidden => true},
#      "/tags/#{tag}/",
#      :binary => false
#    )
#  end
#end
#
#def tag_set(items = nil)
#  require 'set'
#  items = @items if items.nil?
#  tags = Set.new
#  items.each do |item|
#    next if item[:tags].nil?
#    item[:tags].each { |tag| tags << tag }
#  end
#  tags.to_a
#end


