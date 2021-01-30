(declare-project 
      :name "pkg-lint"
      :description "A program that lints a project.janet for conformance with")

(declare-source :source ["pkg-lint.janet"])

(declare-executable :entry "pkg-lint.janet"
                    :name "pkg-lint")
