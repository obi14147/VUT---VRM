MODULE Module1
          
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

    VAR num actual_state;
    PROC main()
        TEST actual_state
            CASE 0:
                Initial_position;
                actual_state :=1;
            CASE 1:
                Path_10;
                actual_state :=2;
            CASE 2:
                Path_20;
                actual_state :=3;
            CASE 3:
                SetDO DO_MOVER, 1;
                actual_state :=100;
            CASE 100:
            
        ENDTEST
    ENDPROC
    
    PROC Path_10()
        MoveL Target_10,v300,fine,smc_gripper\WObj:=wobj0;
        MoveL Target_10_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20,v300,fine,smc_gripper\WObj:=wobj0;
        WaitTime 0.5;
        ! ATTACH
        PulseDO DO_ATT_0;
        WaitTime 0.5;
        MoveL Target_20_4,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20_2_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_30_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_30,v300,fine,smc_gripper\WObj:=wobj0;
        WaitTime 0.5;
        ! DETACH
        PulseDO DO_DET_0;
        WaitTime 0.5;
        MoveL Target_10,v300,z100,smc_gripper\WObj:=wobj0;
    ENDPROC
    PROC Path_20()
        MoveL Target_40,v300,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_50_2,v300,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_50,v300,fine,smc_gripper\WObj:=Blue_unit;
        WaitTime 0.5;
        ! ATTACH
        PulseDO DO_ATT_A;
        WaitTime 0.5;
        MoveL Target_50_2,v300,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_60_2,v300,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_60,v300,fine,smc_gripper\WObj:=Blue_unit;
        WaitTime 0.5;
        ! DETACH
        PulseDO DO_DET_A;
        WaitTime 0.5;
        MoveL Target_60_2,v300,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_70_2,v300,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_70,v300,fine,smc_gripper\WObj:=Blue_unit;
        WaitTime 0.5;
        ! ATTACH
        PulseDO DO_ATT_B;
        WaitTime 0.5;
        MoveL Target_70_2,v300,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_80_2,v300,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_80,v300,fine,smc_gripper\WObj:=Blue_unit;
        WaitTime 0.5;
        ! DETACH
        PulseDO DO_DET_B;
        WaitTime 0.5;
        MoveL Target_80_2,v300,z100,smc_gripper\WObj:=Blue_unit;
        MoveL Target_40,v300,z100,smc_gripper\WObj:=Blue_unit;
    ENDPROC
    PROC Initial_position()
        PulseDO DO_POS_0;
        PulseDO DO_POS_A;
        PulseDO DO_POS_B;
        PulseDO DO_POS_BOX;
        SetDO DO_MOVER, 0;
    ENDPROC
ENDMODULE