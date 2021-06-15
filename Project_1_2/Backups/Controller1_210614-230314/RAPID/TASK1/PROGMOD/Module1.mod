MODULE Module1
    CONST robtarget Target_10:=[[450.999987804,0.004,610.099],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2:=[[55.137566493,451.499066158,369.900385826],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[55.137566493,451.499066158,37.5],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2_2:=[[854.586678466,451.499066158,501.153829657],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2_2_2:=[[865.676413683,6.897344793,516.219514311],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30_2:=[[214.065566493,-690.774933842,368.070013574],[-0.000000022,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[214.065566493,-690.774933842,180.734],[-0.000000022,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PROC main()
        !MoveAbsJ [[0,0,0,0,90,0],[9E9,9E9,9E9,9E9,9E9,9E9]],v500,fine, tool0;
        PulseDO DO_POS_0;
        Path_10;
    ENDPROC
    
    PROC Path_10()
        MoveL Target_10,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20,v300,fine,smc_gripper\WObj:=wobj0;
        WaitTime 0.5;
        ! ATTACH
        PulseDO DO_ATT_0;
        WaitTime 0.5;
        MoveL Target_20_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20_2_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20_2_2_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_30_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_30,v300,fine,smc_gripper\WObj:=wobj0;
        WaitTime 0.5;
        ! DETACH
        PulseDO DO_DET_0;
        WaitTime 0.5;
        MoveL Target_10,v300,z100,smc_gripper\WObj:=wobj0;
    ENDPROC
ENDMODULE