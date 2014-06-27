class TrackersController < ApplicationController
  require 'nokogiri'
  require 'open-uri'

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all

    @tweet_count = Tweet.count

    # request = "curl 'http://tracker.ironman.com/sportstatsv2/ironman/index.xhtml' -H 'Pragma: no-cache' -H 'Origin: http://tracker.ironman.com' -H 'Accept-Encoding: gzip,deflate,sdch' -H 'Accept-Language: en-US,en;q=0.8' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'Accept: application/xml, text/xml, */*; q=0.01' -H 'Faces-Request: partial/ajax' -H 'Cache-Control: no-cache' -H 'X-Requested-With: XMLHttpRequest' -H 'Cookie: JSESSIONID=e105432527db7715864f299686d4; X-Mapping-fjhppofk=4516D8E3701358999CFD5766F3E9BB2B; __gads=ID=71f658b474305e85:T=1403880913:S=ALNI_Mb3xaz2M80_FYt7Z5yvQdHi0_H7NQ; __utma=96012228.425546886.1403880913.1403880913.1403884950.2; __utmc=96012228; __utmz=96012228.1403880913.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); tracertraffic=2' -H 'Connection: keep-alive' -H 'Referer: http://tracker.ironman.com/sportstatsv2/ironman/index.xhtml?raceid=67&bib=1627' --data 'javax.faces.partial.ajax=true&javax.faces.source=resultForm%3Aj_idt76&javax.faces.partial.execute=resultForm%3Aj_idt76&javax.faces.partial.render=resultForm%3Aj_idt76%3AsplitTable+resultForm%3Aj_idt76&javax.faces.behavior.event=rowToggle&javax.faces.partial.event=rowToggle&resultForm%3Aj_idt76_rowExpansion=true&resultForm%3Aj_idt76_expandedRowIndex=0&resultForm%3Aj_idt76_encodeFeature=true&resultForm%3Aj_idt76_skipChildren=true&resultForm=resultForm&resultForm%3Afirstname=&resultForm%3Alastname=&resultForm%3Abib=1627&resultForm%3AcategoryFilter=all&resultForm%3AcountryFilter=any&javax.faces.ViewState=1407641506171889495%3A-5883081663794101444'"
    # response = `#{request}`
    # document = Nokogiri::HTML(response)

    # @name = document.css('tr td')[9].text
  end
end








