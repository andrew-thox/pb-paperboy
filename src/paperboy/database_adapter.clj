(ns paperboy.database-adapter
  (:require [environ.core :refer [env]]
            [qbits.spandex :as s]
            [qbits.spandex.utils :as s-utils])
  (:import (java.net URI)))

(def c (s/client {:hosts [(env :aws-elastic-url)]}))

(defn all-articles []
  (s/request c {:url (s-utils/url ["article", "_search?"])
              :method :get
              :body {:query {:match_all {}}
                     :sort {}}}))

