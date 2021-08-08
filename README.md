# `hump.vector` but in fennel

I have done absolutely nothing smart to write this. This is just a wrapper around [`hump.vector`](https://github.com/vrld/hump/blob/master/vector.lua) which allows you to use the methods provided by the library as functions. So instead of writing `(: v :rotated math.pi)` you can write `(V.rotate v math.pi)`. The names have changed a bit so I recommend looking at the code to find the right function. Here is some example code:

```
(local V (require :vec))

(V) ; this creates the vector (0, 0) 

(-> (V 12 -2) ; this creates the vector (12, -2)
    (V.rotate 3)
    (+ V.rand-dir)
    (V.trim 3)
) 
```

## Install
You need both `hump-vector.lua` and `vec.fnl` in your project. `vec.fnl` requires `hump-vector.lua` and you must make sure this path is correct.
