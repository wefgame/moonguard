-- DB update 2023_05_14_08 -> 2023_05_15_00
SET @ENTRY := 20913;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,10436,0,0,0,80,@ENTRY*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Tashar - On Quest \'All Clear!\' Finished - Run Script');

-- Actionlist SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tashar - On Script - Remove Npc Flag Questgiver'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tashar - On Script - Say Line 0'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tashar - On Script - Set Run Off'),
(@ENTRY*100,9,3,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,4922.18,2991.38,93.9847,5.88582,'Tashar - On Script - Move To Position'),
(@ENTRY*100,9,4,0,0,0,100,0,5000,5000,0,0,17,173,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tashar - On Script - Set Emote State 173'),
(@ENTRY*100,9,5,0,0,0,100,0,4000,4000,0,0,17,26,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tashar - On Script - Set Emote State 26'),
(@ENTRY*100,9,6,0,0,0,100,0,0,0,0,0,11,28730,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tashar - On Script - Cast \'Arcane Torrent\''),
(@ENTRY*100,9,7,0,0,0,100,0,2000,2000,0,0,50,184614,15,0,0,0,0,8,0,0,0,4923.56,2990.45,93.9413,0.813699,'Tashar - On Script - Summon Gameobject \'Ethereal Repair Kit\''),
(@ENTRY*100,9,8,0,0,0,100,0,0,0,0,0,50,184614,15,0,0,0,0,8,0,0,0,4923.45,2991.21,93.9248,5.49404,'Tashar - On Script - Summon Gameobject \'Ethereal Repair Kit\''),
(@ENTRY*100,9,9,0,0,0,100,0,0,0,0,0,50,184614,15,0,0,0,0,8,0,0,0,4924.47,2990.35,93.8867,2.25067,'Tashar - On Script - Summon Gameobject \'Ethereal Repair Kit\''),
(@ENTRY*100,9,10,0,0,0,100,0,0,0,0,0,50,184614,15,0,0,0,0,8,0,0,0,4924.32,2991.21,93.8808,3.88003,'Tashar - On Script - Summon Gameobject \'Ethereal Repair Kit\''),
(@ENTRY*100,9,11,0,0,0,100,0,2000,2000,0,0,1,1,4000,0,0,0,0,1,0,0,0,0,0,0,0,'Tashar - On Script - Say Line 1'),
(@ENTRY*100,9,12,0,0,0,100,0,4000,4000,0,0,69,0,0,0,0,0,0,8,0,0,0,4914.74,2991.92,94.1138,0,'Tashar - On Script - Move To Position'),
(@ENTRY*100,9,13,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.15708,'Tashar - On Script - Set Orientation 0,15708'),
(@ENTRY*100,9,14,0,0,0,100,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tashar - On Script - Add Npc Flag Questgiver');
