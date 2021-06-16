MODULE Module1
        
    PERS bool right_robot_finish_job;
    
    CONST robtarget Target_10:=[[450.999987804,0.004,610.099],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10_2:=[[450.999987804,342.827527975,610.099],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[-50.983,411.162,37.5],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_4:=[[-50.983,411.162,244.449000256],[-0.000000022,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2:=[[490.514454781,411.162,230.394262339],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2_2:=[[490.514454781,-318.377872721,230.394262339],[-0.000000022,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30_2:=[[93.065,-736.357,280.541363068],[-0.000000022,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[93.065,-736.357,175.663],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[451.000036797,0.004,610.099011176],[-0.000000009,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50_2:=[[316.305,-139.876,305.234651046],[-0.000000009,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[316.305,-139.876,27],[-0.000000009,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60_2:=[[5.967,-736.683,257.05228842],[-0.000000009,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[[5.967,-736.683,172.249],[-0.000000009,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70_2:=[[316.305,160.124,275.544099207],[-0.000000009,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[316.305,160.124,27],[-0.000000009,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80_2:=[[180.276,-736.154,228.525083503],[-0.000000009,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[180.276,-736.154,169.28],[-0.000000009,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PROC main()
        !MoveAbsJ [[0,0,0,0,90,0],[9E9,9E9,9E9,9E9,9E9,9E9]],v500,fine, tool0;
        PulseDO DO_POS_0;
        PulseDO DO_POS_A;
        PulseDO DO_POS_B;
        SetDO DO_MOVER, 0;
        Path_10;
        Path_20;
        
        !PulseDO DO_POS_0;
        !PulseDO DO_POS_A;
        !PulseDO DO_POS_B;
    ENDPROC
    PROC Path_10()
        MoveL Target_10,v150,fine,smc_gripper\WObj:=wobj0;
        MoveL Target_10_2,v150,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20,v150,fine,smc_gripper\WObj:=wobj0;
        WaitTime 0.5;
        ! ATTACH
        PulseDO DO_ATT_0;
        WaitTime 0.5;
        MoveL Target_20_4,v150,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20_2,v150,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20_2_2,v150,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_30_2,v150,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_30,v150,fine,smc_gripper\WObj:=wobj0;
        WaitTime 0.5;
        ! DETACH
        PulseDO DO_DET_0;
        WaitTime 0.5;
        MoveL Target_10,v150,z100,smc_gripper\WObj:=wobj0;
    ENDPROC
    PROC Path_20()
        MoveL Target_40,v150,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_50_2,v150,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_50,v150,fine,smc_gripper\WObj:=Blue_unit;
        WaitTime 0.5;
        ! ATTACH
        PulseDO DO_ATT_A;
        WaitTime 0.5;
        MoveL Target_50_2,v150,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_60_2,v150,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_60,v150,fine,smc_gripper\WObj:=Blue_unit;
        WaitTime 0.5;
        ! DETACH
        PulseDO DO_DET_A;
        WaitTime 0.5;
        MoveL Target_60_2,v150,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_70_2,v150,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_70,v150,fine,smc_gripper\WObj:=Blue_unit;
        WaitTime 0.5;
        ! ATTACH
        PulseDO DO_ATT_B;
        WaitTime 0.5;
        MoveL Target_70_2,v150,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_80_2,v150,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_80,v150,fine,smc_gripper\WObj:=Blue_unit;
        WaitTime 0.5;
        ! DETACH
        PulseDO DO_DET_B;
        WaitTime 0.5;
        MoveL Target_80_2,v150,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_40,v150,z100,smc_gripper\WObj:=Blue_unit;
        SetDO DO_MOVER, 1;
        ! Tady vytvorit novy cil, ktery bude na konci dopravniku, kde dalsi robot bere tu blbinu, Mark0tka je nejlepsi a moc ju miluju!
    ENDPROC
ENDMODULE