/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Xilinx/Projects/Lab6/seven_four.vhd";



static void work_a_0593685529_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 4488);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0593685529_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    t1 = (t0 + 3560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6822);
    t5 = xsi_mem_cmp(t2, t3, 8U);
    if (t5 == 1)
        goto LAB5;

LAB14:    t6 = (t0 + 6830);
    t8 = xsi_mem_cmp(t6, t3, 8U);
    if (t8 == 1)
        goto LAB6;

LAB15:    t9 = (t0 + 6838);
    t11 = xsi_mem_cmp(t9, t3, 8U);
    if (t11 == 1)
        goto LAB7;

LAB16:    t12 = (t0 + 6846);
    t14 = xsi_mem_cmp(t12, t3, 8U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t15 = (t0 + 6854);
    t17 = xsi_mem_cmp(t15, t3, 8U);
    if (t17 == 1)
        goto LAB9;

LAB18:    t18 = (t0 + 6862);
    t20 = xsi_mem_cmp(t18, t3, 8U);
    if (t20 == 1)
        goto LAB10;

LAB19:    t21 = (t0 + 6870);
    t23 = xsi_mem_cmp(t21, t3, 8U);
    if (t23 == 1)
        goto LAB11;

LAB20:    t24 = (t0 + 6878);
    t26 = xsi_mem_cmp(t24, t3, 8U);
    if (t26 == 1)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 6942);
    t4 = (t0 + 4552);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(43, ng0);

LAB25:    t2 = (t0 + 4376);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(44, ng0);
    t27 = (t0 + 6886);
    t29 = (t0 + 4552);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t27, 7U);
    xsi_driver_first_trans_fast(t29);
    goto LAB4;

LAB6:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 6893);
    t4 = (t0 + 4552);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 6900);
    t4 = (t0 + 4552);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 6907);
    t4 = (t0 + 4552);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 6914);
    t4 = (t0 + 4552);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 6921);
    t4 = (t0 + 4552);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 6928);
    t4 = (t0 + 4552);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 6935);
    t4 = (t0 + 4552);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB22:;
LAB23:    t3 = (t0 + 4376);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_0593685529_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6949);
    t5 = xsi_mem_cmp(t2, t3, 8U);
    if (t5 == 1)
        goto LAB5;

LAB14:    t6 = (t0 + 6957);
    t8 = xsi_mem_cmp(t6, t3, 8U);
    if (t8 == 1)
        goto LAB6;

LAB15:    t9 = (t0 + 6965);
    t11 = xsi_mem_cmp(t9, t3, 8U);
    if (t11 == 1)
        goto LAB7;

LAB16:    t12 = (t0 + 6973);
    t14 = xsi_mem_cmp(t12, t3, 8U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t15 = (t0 + 6981);
    t17 = xsi_mem_cmp(t15, t3, 8U);
    if (t17 == 1)
        goto LAB9;

LAB18:    t18 = (t0 + 6989);
    t20 = xsi_mem_cmp(t18, t3, 8U);
    if (t20 == 1)
        goto LAB10;

LAB19:    t21 = (t0 + 6997);
    t23 = xsi_mem_cmp(t21, t3, 8U);
    if (t23 == 1)
        goto LAB11;

LAB20:    t24 = (t0 + 7005);
    t26 = xsi_mem_cmp(t24, t3, 8U);
    if (t26 == 1)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 7045);
    t4 = (t0 + 4616);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(54, ng0);

LAB25:    t2 = (t0 + 4392);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(55, ng0);
    t27 = (t0 + 7013);
    t29 = (t0 + 4616);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t27, 4U);
    xsi_driver_first_trans_fast(t29);
    goto LAB4;

LAB6:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 7017);
    t4 = (t0 + 4616);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 7021);
    t4 = (t0 + 4616);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 7025);
    t4 = (t0 + 4616);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 7029);
    t4 = (t0 + 4616);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 7033);
    t4 = (t0 + 4616);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 7037);
    t4 = (t0 + 4616);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 7041);
    t4 = (t0 + 4616);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB22:;
LAB23:    t3 = (t0 + 4392);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_0593685529_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4408);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 1992U);
    t8 = *((char **)t4);
    t4 = (t0 + 4680);
    t9 = (t4 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t8, 7U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 4744);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}


extern void work_a_0593685529_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0593685529_3212880686_p_0,(void *)work_a_0593685529_3212880686_p_1,(void *)work_a_0593685529_3212880686_p_2,(void *)work_a_0593685529_3212880686_p_3};
	xsi_register_didat("work_a_0593685529_3212880686", "isim/tb_top_isim_beh.exe.sim/work/a_0593685529_3212880686.didat");
	xsi_register_executes(pe);
}
