benchxml
========

**DISCLAIMER:** Benchmarks are not always reliable, the numbers vary, and many factors must be taken into account. I am new to benchmarking. If you are the maintainer of one of these projects and you disagree with my conclusions, please tell me why and I will gladly correct this documentation. I know developers often put a lot into testing and optimizing their code. I put these benchmarks together for my own education. If you are trying to decide which library to use, don't just take these numbers at face value, run your own tests. Each system is different.

    WARNING: Nokogiri was built against LibXML version 2.8.0, but has dynamically loaded 2.9.1
           user     system      total        real
    ox  1.030000   0.000000   1.030000 (  1.146722)
    libxml  1.010000   0.000000   1.010000 (  1.107478)
    nokogiri  1.030000   0.000000   1.030000 (  1.111019)
    rexml  0.990000   0.000000   0.990000 (  1.092973)

**SUBJECTIVE INTERPRETATION:** All were run with multi_xml. Curiously, on my system Peter Ohler's [ox](http://www.ohler.com/dev/xml_with_ruby/xml_with_ruby.html) gem came in dead last. I was not expecting that. Even stranger, the pure ruby STDLIB REXML XML parsing was the fastest. YMMV.
