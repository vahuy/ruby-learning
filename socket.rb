# frozen_string_literal: true

require 'http'
require 'file/utils'
require 'rexml/document'
require 'rexml/streamlistener'

file_link = 'https://portal.vietcombank.com.vn/Usercontrols/TVPortal.TyGia/pXML.aspx'
file_dir = '/home/ub/fileio/file.xml'

def get_exrate(file_dir)
  xmlfile = File.new(file_dir)
  doc = REXML::Document.new(xmlfile)
  array_element = doc.children[4].children
  array_element.each do |e|
    if e.class == REXML::Element && e.attributes['CurrencyCode']
      puts "CurrencyCode: #{e.attributes['CurrencyCode']} Buy: #{e.attributes['Buy']} Sell: #{e.attributes['Sell']}"
    end
  end
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end

def get_data(file_link)
  HTTP.get(file_link).body
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end

def write_xml(path, body)
  body = body.force_encoding('UTF-8')
  File::Utils.rewrite path, body
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end

data = get_data file_link
write_xml(file_dir, data.to_s)
get_exrate(file_dir)
