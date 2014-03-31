(ns dna
  (:require [clojure.string :refer (replace)]))

(defn to-rna [dna]
  (replace dna #"T" "U"))
