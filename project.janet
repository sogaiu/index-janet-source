(declare-project
  :name "index-janet-source"
  :url "https://gitlab.com/sogaiu/index-janet-source"
  :repo "git+https://gitlab.com/sogaiu/index-janet-source.git")

(declare-source
  :source @["index-janet-source"])

(declare-binscript
  :main "index-janet-source/idk-janet"
  :is-janet true)

# git and a net connection are required for this part
(import ./support/test-indexing :as ti)
(phony "test-indexing" []
       (ti/main))

