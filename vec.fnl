(local V (require :hump-vector))

(fn f [method]
  (fn [v ...]
    (: v method ...)))

; Methods from Hump.vector converted to functions
(local new V.new)
(local from-polar V.fromPolar)
(local rand-dir V.randomDirection)
(local vec? (f :isvector))
(local clone (f :clone))
(local unpack (f :unpack))
(local dot (f :permul))
(local angle (fn [v]
               (math.atan2 v.y v.x)))

(local len2 (f :len2))
(local len (f :len))
(local dist (f :dist))
(local dist2 (f :dist2))
(local normalize-in-place (f :normalizeInplace))
(local normalize (f :normalized))
(local rotate-in-place (f :rotateInplace))
(local rotate (f :rotated))
(local perpendicular (f :perpendicular))
(local project-on (f :projectOn))
(local mirror-on (f :mirrorOn))
(local cross (f :cross))
(local trim-in-place (f :trimInplace))
(local trim (f :trimmed))
(local angle-to (f :angleTo))

(setmetatable {: from-polar
               : rand-dir
               : vec?
               : clone
               : unpack
               : dot
               : angle
               : len2
               : len
               : dist
               : dist2
               : normalize-in-place
               : normalize
               : rotate-in-place
               : rotate
               : perpendicular
               : project-on
               : mirror-on
               : cross
               : trim-in-place
               : trim
               : angle-to
               ; Extra functions
               :to-len (fn to-len [v l]
                         (* l (normalize v)))}
              
              {:__call (fn [_ ...]
                         (new ...))})

