MODULE Module1
    CONST robtarget Target_10:=[[451.999987804,-3299.996,610.099],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2:=[[93.065,-2707.86,291.725175217],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[93.065,-2707.86,175.663],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30_2:=[[407.375,-3352.598,286.818745293],[-0.000000022,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[407.375,-3352.598,70.482],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    VAR num actual_state;
    CONST robtarget Target_40:=[[452.000023874,-3299.995946885,610.099011176],[-0.000000009,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50_2:=[[211.406,-3786.818,149.010334685],[-0.000000009,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[238.593999842,-3786.818,25.000267756],[-0.000000009,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60_2:=[[407.375,-3352.598,214.250917252],[-0.000000009,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[[407.375,-3352.598,100],[-0.000000009,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PROC main()
        TEST actual_state
            CASE 0:
                IF CONV_SENS=1 THEN
                    SetDO DO_MOVER, 0;
                    actual_state :=1;
                ENDIF
            CASE 1:
                Path_10;
                actual_state :=2;
            CASE 2:
                Path_20;
                actual_state :=3;
            CASE 3:
                actual_state :=100;
            CASE 100:
            
        ENDTEST
    ENDPROC
    PROC Path_10()
        MoveL Target_10,v150,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20_2,v150,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20,v150,fine,smc_gripper\WObj:=wobj0;
        WaitTime 0.5;
        ! ATTACH
        PulseDO DO_ATT_TAB_LEFT;
        WaitTime 0.5;
        MoveL Target_20_2,v150,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_30_2,v150,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_30,v150,fine,smc_gripper\WObj:=wobj0;
         WaitTime 0.5;
        ! DETACH
        PulseDO DO_DET_TAB_LEFT;
        WaitTime 0.5;
        MoveL Target_30_2,v150,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_10,v150,z100,smc_gripper\WObj:=wobj0;
    ENDPROC
    PROC Path_20()
        MoveL Target_40,v150,z100,smc_gripper\WObj:=Close_box;
        MoveL Target_50_2,v150,z100,smc_gripper\WObj:=Close_box;
        MoveL Target_50,v150,fine,smc_gripper\WObj:=Close_box;
         WaitTime 0.5;
        ! ATTACH
        PulseDO DO_ATT_BOX;
        WaitTime 0.5;
        MoveL Target_50_2,v150,z100,smc_gripper\WObj:=Close_box;
        MoveL Target_60_2,v150,z100,smc_gripper\WObj:=Close_box;
        MoveL Target_60,v150,fine,smc_gripper\WObj:=Close_box;
        WaitTime 0.5;
        ! DETACH
        PulseDO DO_DET_BOX;
        WaitTime 0.5;
        MoveL Target_40,v150,z100,smc_gripper\WObj:=Close_box;
    ENDPROC
    PROC Initial_position()
        PulseDO DO_POS_0;
        PulseDO DO_POS_A;
        PulseDO DO_POS_B;
        PulseDO DO_POS_BOX;
    ENDPROC
ENDMODULE