# Tests for pkg-lint

(import ../pkg-lint :as lint)

(lint/declare-project :name "test")
(try
  (do
    (lint/declare-project :name "BadProjectName")
    (error [:fail "Declare project didn't catch a bad project name!"]))

([err fib] 
 (match err 
  [:fail msg] (propagate msg fib)
  _ nil)))



