MODULE Module1
    CONST robtarget Target_10:=[[450.999987805,0.004,610.099],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2:=[[126.719422004,661.158479903,182.817520703],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[126.719422004,661.158479903,37.5],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2_2:=[[464.471825029,427.319706587,301.095329059],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30_2:=[[277.627422004,-486.606520097,300.389057938],[-0.000000022,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[277.627422004,-486.606520097,175.506],[-0.000000022,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[450.999997776,0.004,610.098996275],[-0.000000026,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50_2:=[[494.007422004,110.120479903,243.149179906],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[494.007422004,110.120479903,27],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60_2:=[[364.007422004,-486.879520097,296.377438496],[-0.000000026,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[[364.007422004,-486.879520097,166],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70_2:=[[494.007422004,410.120479903,208.921069694],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[494.007422004,410.120479903,27],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80_2:=[[190.007422004,-486.879520097,254.222556398],[-0.000000026,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[190.007422004,-486.879520097,166],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90:=[[451.000000008,0.004,610.098996275],[-0.000000026,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100_2:=[[406.507422004,108.732479903,260.213700633],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100:=[[406.507422004,108.732479903,27],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_110_2:=[[364.007422004,-486.879520097,317.402767153],[-0.000000026,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_110:=[[364.007422004,-486.879520097,166],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_120_2:=[[494.007422004,410.120479903,241.125441554],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_120:=[[494.007422004,410.120479903,27],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_130_2:=[[190.007422004,-486.879520097,321.160892308],[-0.000000026,0,1,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_130:=[[190.007422004,-486.879520097,166],[-0.000000026,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PROC Path_1()
        MoveL Target_10,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_20,v300,fine,smc_gripper\WObj:=wobj0;
        MoveL Target_20_2_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_30_2,v300,z100,smc_gripper\WObj:=wobj0;
        MoveL Target_30,v300,fine,smc_gripper\WObj:=wobj0;
        MoveL Target_10,v300,z100,smc_gripper\WObj:=wobj0;
    ENDPROC
    PROC Path_Blue_Objects()
        MoveL Target_40,v300,z100,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_50_2,v300,z100,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_50,v300,fine,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_50_2,v300,z100,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_60_2,v300,z100,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_60,v300,fine,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_60_2,v300,z100,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_70_2,v300,z100,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_70,v300,fine,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_70_2,v300,z100,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_80_2,v300,z100,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_80,v300,fine,smc_gripper\WObj:=Blue_Objects;
        MoveL Target_40,v300,z100,smc_gripper\WObj:=Blue_Objects;
    ENDPROC
    PROC Path_Red_Objects()
        MoveL Target_90,v300,z100,smc_gripper\WObj:=Red_Objects;
        MoveL Target_100_2,v300,z100,smc_gripper\WObj:=Red_Objects;
        MoveL Target_100,v300,fine,smc_gripper\WObj:=Red_Objects;
        MoveL Target_100_2,v300,z100,smc_gripper\WObj:=Red_Objects;
        MoveL Target_110_2,v300,z100,smc_gripper\WObj:=Red_Objects;
        MoveL Target_110,v300,fine,smc_gripper\WObj:=Red_Objects;
        MoveL Target_110_2,v300,z100,smc_gripper\WObj:=Red_Objects;
        MoveL Target_120_2,v300,z100,smc_gripper\WObj:=Red_Objects;
        MoveL Target_120,v300,fine,smc_gripper\WObj:=Red_Objects;
        MoveL Target_120_2,v300,z100,smc_gripper\WObj:=Red_Objects;
        MoveL Target_130_2,v300,z100,smc_gripper\WObj:=Red_Objects;
        MoveL Target_130,v300,fine,smc_gripper\WObj:=Red_Objects;
        MoveL Target_90,v300,z100,smc_gripper\WObj:=Red_Objects;
    ENDPROC
ENDMODULE