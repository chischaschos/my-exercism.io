(ns bob
  (:require [clojure.string :refer [blank? upper-case]]))

(defn screaming? [msg]
  (and
    (= (upper-case msg) msg)
    (not (blank? msg))
    (re-find #"[A-Z]+" msg)))

(defn asking? [msg]
  (re-find #"\?$" msg))

(defn silence? [msg]
  (re-find #"^\s*$" msg))


(defn response-for [msg]
  (cond
    (screaming? msg) "Woah, chill out!"
    (asking? msg) "Sure."
    (silence? msg) "Fine. Be that way!"
    :else "Whatever."))
