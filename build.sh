emcc -O2 --closure 0 -s WASM=0 -s EXPORT_NAME='Module' --memory-init-file 0 -s ASSERTIONS=1 -s ALLOW_MEMORY_GROWTH=1 libtess2/Source/bucketalloc.c libtess2/Source/dict.c libtess2/Source/geom.c libtess2/Source/mesh.c libtess2/Source/priorityq.c libtess2/Source/sweep.c libtess2/Source/tess.c libtess2.c -o out.js -I./libtess2/Include -s EXPORTED_FUNCTIONS="['_newTess', '_deleteTess', '_addContour', '_tesselate', '_getVertexCount', '_getVertices', '_getVertexIndices', '_getElementCount', '_getElements']" --extern-pre-js ./libtess2.pre.js --extern-post-js ./libtess2.post.js 
# emcc -O2 libtess2/libtess2.bc libtess2.c -o libtess2.raw.js --closure 1 -s EXPORTED_FUNCTIONS="['_newTess', '_deleteTess', '_addContour', '_tesselate', '_getVertexCount', '_getVertices', '_getVertexIndices', '_getElementCount', '_getElements']"
# cat libtess2.pre.js > libtess2.js
# cat libtess2.raw.js >> libtess2.js
# cat libtess2.post.js >> libtess2.js
# rm libtess2/libtess2.bc
# rm libtess2.raw.js

#
