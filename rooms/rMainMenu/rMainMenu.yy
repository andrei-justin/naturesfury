{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rMainMenu",
  "creationCodeFile": "rooms/rMainMenu/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_71C7C98","path":"rooms/rMainMenu/rMainMenu.yy",},
    {"name":"inst_5CD62D4B","path":"rooms/rMainMenu/rMainMenu.yy",},
    {"name":"inst_627F5EEC","path":"rooms/rMainMenu/rMainMenu.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Title","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_71C7C98","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oTitle","path":"objects/oTitle/oTitle.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Rain","assets":[
        {"resourceType":"GMRParticleSystem","resourceVersion":"1.0","name":"particle_56B832AA","colour":4294967295,"frozen":false,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"particleSystemId":{"name":"Rain","path":"particles/Rain/Rain.yy",},"rotation":0.0,"scaleX":1.0507692,"scaleY":1.0,"x":683.0,"y":0.0,},
      ],"depth":100,"effectEnabled":true,"effectType":"_filter_mask","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_MaskStart","type":0,"value":"0",},
        {"name":"g_MaskEnd","type":0,"value":"1",},
        {"name":"g_MaskTexture","type":2,"value":"_filter_mask_sprite",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Audio","depth":200,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5CD62D4B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oAudio","path":"objects/oAudio/oAudio.yy",},"properties":[],"rotation":0.0,"scaleX":0.353211,"scaleY":0.353211,"x":1312.0,"y":48.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Play","depth":300,"effectEnabled":true,"effectType":"_effect_glow","gridX":32,"gridY":30,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_627F5EEC","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oPlay","path":"objects/oPlay/oPlay.yy",},"properties":[],"rotation":0.0,"scaleX":0.21429737,"scaleY":0.23883112,"x":671.99994,"y":600.0,},
      ],"layers":[],"properties":[
        {"name":"g_GlowRadius","type":0,"value":"256",},
        {"name":"g_GlowQuality","type":0,"value":"5",},
        {"name":"g_GlowIntensity","type":0,"value":"0.5",},
        {"name":"g_GlowGamma","type":0,"value":"0",},
        {"name":"g_GlowAlpha","type":0,"value":"1",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Fire","assets":[
        {"resourceType":"GMRParticleSystem","resourceVersion":"1.0","name":"particle_74043FB4","colour":4294967295,"frozen":false,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"particleSystemId":{"name":"Fire","path":"particles/Fire/Fire.yy",},"rotation":0.0,"scaleX":1.0507692,"scaleY":3.0,"x":683.0,"y":736.0,},
      ],"depth":400,"effectEnabled":true,"effectType":"_filter_mask","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_MaskStart","type":0,"value":"0",},
        {"name":"g_MaskEnd","type":0,"value":"1",},
        {"name":"g_MaskTexture","type":2,"value":"_filter_mask_sprite",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4288716960,"depth":500,"effectEnabled":true,"effectType":"_filter_screenshake","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Magnitude","type":0,"value":"3",},
        {"name":"g_ShakeSpeed","type":0,"value":"0.25",},
        {"name":"g_NoiseTexture","type":2,"value":"_filter_screenshake_noise",},
      ],"spriteId":{"name":"sMmBg","path":"sprites/sMmBg/sMmBg.yy",},"stretch":true,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 768,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1366,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}