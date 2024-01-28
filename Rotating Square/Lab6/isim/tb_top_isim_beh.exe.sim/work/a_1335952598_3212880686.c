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
static const char *ng0 = "C:/Xilinx/Projects/Lab6/top.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1335952598_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 5176);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 7960);
    t6 = (t0 + 5304);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1952U);
    t12 = xsi_signal_has_event(t1);
    if (t12 == 1)
        goto LAB11;

LAB12:    t11 = (unsigned char)0;

LAB13:    if (t11 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(70, ng0);
    t5 = (t0 + 2312U);
    t7 = *((char **)t5);
    t5 = (t0 + 5304);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB11:    t5 = (t0 + 1992U);
    t6 = *((char **)t5);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    t11 = t14;
    goto LAB13;

}

static void work_a_1335952598_3212880686_p_1(char *t0)
{
    char t18[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 4360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(77, ng0);

LAB13:    t2 = (t0 + 5192);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB5:    xsi_set_current_line(78, ng0);
    t5 = (t0 + 2472U);
    t6 = *((char **)t5);
    t7 = (7 - 6);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t5 = (t6 + t9);
    t10 = (t0 + 2472U);
    t11 = *((char **)t10);
    t12 = (7 - 7);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t10 = (t11 + t15);
    t16 = *((unsigned char *)t10);
    t19 = ((IEEE_P_2592010699) + 4024);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 6;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 6);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t17 = xsi_base_array_concat(t17, t18, t19, (char)97, t5, t20, (char)99, t16, (char)101);
    t24 = (7U + 1U);
    t25 = (8U != t24);
    if (t25 == 1)
        goto LAB7;

LAB8:    t22 = (t0 + 5368);
    t26 = (t22 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t17, 8U);
    xsi_driver_first_trans_fast(t22);
    goto LAB4;

LAB6:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t12 = (0 - 7);
    t7 = (t12 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t2 = (t3 + t9);
    t4 = *((unsigned char *)t2);
    t5 = (t0 + 2472U);
    t6 = *((char **)t5);
    t13 = (7 - 7);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t5 = (t6 + t15);
    t11 = ((IEEE_P_2592010699) + 4024);
    t17 = (t20 + 0U);
    t19 = (t17 + 0U);
    *((int *)t19) = 7;
    t19 = (t17 + 4U);
    *((int *)t19) = 1;
    t19 = (t17 + 8U);
    *((int *)t19) = -1;
    t23 = (1 - 7);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t19 = (t17 + 12U);
    *((unsigned int *)t19) = t24;
    t10 = xsi_base_array_concat(t10, t18, t11, (char)99, t4, (char)97, t5, t20, (char)101);
    t24 = (1U + 7U);
    t16 = (8U != t24);
    if (t16 == 1)
        goto LAB9;

LAB10:    t19 = (t0 + 5368);
    t21 = (t19 + 56U);
    t22 = *((char **)t21);
    t26 = (t22 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t10, 8U);
    xsi_driver_first_trans_fast(t19);
    goto LAB4;

LAB7:    xsi_size_not_matching(8U, t24, 0);
    goto LAB8;

LAB9:    xsi_size_not_matching(8U, t24, 0);
    goto LAB10;

LAB11:    t3 = (t0 + 5192);
    *((int *)t3) = 0;
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}

static void work_a_1335952598_3212880686_p_2(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(84, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t4 = *((unsigned char *)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 7896U);
    t1 = xsi_base_array_concat(t1, t5, t6, (char)97, t2, t7, (char)99, t4, (char)101);
    t8 = (7U + 1U);
    t9 = (8U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 5432);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5208);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t8, 0);
    goto LAB6;

}

static void work_a_1335952598_3212880686_p_3(char *t0)
{
    char t5[16];
    char t7[16];
    char *t1;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t1 = (t0 + 7968);
    t3 = (t0 + 2632U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (3 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 7880U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t11 = (4U + 4U);
    t12 = (8U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 5496);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 8U);
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 5224);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t11, 0);
    goto LAB6;

}


extern void work_a_1335952598_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1335952598_3212880686_p_0,(void *)work_a_1335952598_3212880686_p_1,(void *)work_a_1335952598_3212880686_p_2,(void *)work_a_1335952598_3212880686_p_3};
	xsi_register_didat("work_a_1335952598_3212880686", "isim/tb_top_isim_beh.exe.sim/work/a_1335952598_3212880686.didat");
	xsi_register_executes(pe);
}
