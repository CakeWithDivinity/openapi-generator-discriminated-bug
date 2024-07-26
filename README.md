# openapi-generator bug with discriminated inner objects

This is a reproduction for an issue that occurs in the openapi-generator for typescript clients.

If I define an object that holds an array of discriminated objects defined with `oneOf`, an inner class is
generated (in this case `DiscriminatedObjectDiscriminatedValuesInner.ts`).

This file has a method called `DiscriminatedObjectDiscriminatedValuesInnerFromJSONTyped`.
However this method is wrong according to the typescript compiler, it is missing a return statement.
So this is an invalid typescript file being generated.
