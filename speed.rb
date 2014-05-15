require 'benchmark'
require 'libxml'
require 'multi_xml'
require 'nokogiri'
require 'rexml/document'

def parse(str, parser)
  msg = nil
  case parser
    when :ox
      MultiXml.parser = :ox
      str = MultiXml.parse(msg)
    when :libxml
      MultiXml.parser = :libxml
      str = MultiXml.parse(msg)
    when :nokogiri
      MultiXml.parser = :nokogiri
      str = MultiXml.parse(msg)
    when :rexml
      MultiXml.parser = :rexml
      str = MultiXml.parse(msg)
  end
  msg
end

SAMPLES = 100_000
obj = File.readlines('complex.xml').join
Benchmark.bm do |r|
  r.report('Ox') do
    SAMPLES.times do
      parse(obj, :ox)
    end
  end
  r.report('LibXML') do
    SAMPLES.times do
      parse(obj, :libxml)
    end
  end
  r.report('Nokogiri') do
    SAMPLES.times do
      parse(obj, :nokogiri)
    end
  end
  r.report('REXML') do
    SAMPLES.times do
      parse(obj, :rexml)
    end
  end
end
