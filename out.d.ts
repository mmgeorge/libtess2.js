
declare function _newTess(...args: any[]): any;
declare function _addContour(...args: any[]): any;
declare function _tesselate(...args: any[]): any; 

declare function _getVertices(...args: any[]): any;
declare function _getVertexIndices(...args: any[]): any;
declare function _getElements(...args: any[]): any;

declare function _getVertexCount(...args: any[]): any;
declare function _getElementCount(...args: any[]): any;

declare function _malloc(size: number): any;
declare function _free(buffer: any): void;

declare const HEAPF32: Float32Array; 


export enum WindingType {
  Odd = 0,
  NonZero = 1,
  Positive = 2,
  Negative = 3,
  AbsGeqTwo = 4,
}

export enum ElementType {
  Polygons = 0,
  ConnectedPolygons = 1,
  BoundaryContours = 2, 
}
