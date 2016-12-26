//spriter_find_box(object, box_name)

var nSpriteInfo = spriter_GetSpriteInfoCount(argument0.modelIndex, argument0.instanceIndex);
spriter_check_errors();
for (var i = 0; i < nSpriteInfo; i++)
{
    var type = spriter_GetSpriteInfoType(argument0.modelIndex, argument0.instanceIndex, i);
    
    if type != 2
    {
        continue;
    }
    
    var name = spriter_GetSpriteInfoFileName(argument0.modelIndex, argument0.instanceIndex, i);
    
    if name == argument1
    {
        return i;
    }
}

return -1;