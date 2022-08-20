function [pntsMap] = world_to_map_coordinates(pntsWorld, gridSize, offset)
% Convert points from the world coordinates frame to the map frame.
% pntsWorld is a matrix of N points with each column representing a point in world coordinates (meters).
% gridSize is the size of each grid in meters.
% offset = [offsetX; offsetY] is the offset that needs to be subtracted from a point
% when converting to map coordinates.
% pntsMap is a 2xN matrix containing the corresponding points in map coordinates.

% hence this is bascially a transform from one coordinate frame to another, as a pseudocode:
% mapFrame = (worldFrame - offset)/ratio 

% note that pntsMap values should be integers
% TODO: compute pntsMap
pntsMap = ceil( (pntsWorld-offset) / gridSize );

end
