(def level-1-name-patt (peg/compile 
  # TODO: Add in support for unicode, or maybe use
  # negative matches instead of postivie ones?
  # This is lint, not a comprehensive spec
  ~{ :main (some (+ (range "09" "az") "-")) }))

(defn- level-1-name-check [name] (peg/match level-1-name-patt name))

(defn declare-project 
  [&keys { :name name :description desc }]
  (assert name "Name required for project!")
  (assert (level-1-name-check name) "Name isn't all lower and kebab-case!"))

(defn declare-executable [&keys {}] nil)

(defn declare-source [&keys {}] nil)

(def my-env (curenv))

(defn main [&]
  (def project-janet-path ((dyn :args) 1))
  (dofile project-janet-path :env my-env))

