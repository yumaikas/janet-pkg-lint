(declare-project 
      :name "pkg-lint"
      :author "Andrew Owen <yumaikas94@gmail.com>"
      :url "https://github.com/yumaikas/janet-pkg-lint"
      :description "A program that lints a project.janet for conformance with")

(declare-source :source ["pkg-lint.janet"])

(declare-executable :entry "pkg-lint.janet"
                    :name "pkg-lint")
