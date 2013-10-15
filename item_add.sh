#!/bin/sh

file_name=`date "+%Y-%m-%d"`.md
article=/home/ruby2-1/blog/morikin_blog/content/articles/$file_name

echo -n "title "
read title

echo -n "tags "
read tags

now_time=`date +"%Y/%m/%d %H:%M:%S"`

echo "---" > $article
echo "title: $title" >> $article
echo "filters_pre: " >> $article
echo '  - "redcloth"' >> $article
echo "tags: $tags" >> $article
echo "created_at: $now_time" >> $article
echo "kind: article" >> $article
echo "publish: true" >> $article
echo "---" >> $article

cat $article
echo /home/ruby2-1/blog/morikin_blog/content/articles/$file_name
