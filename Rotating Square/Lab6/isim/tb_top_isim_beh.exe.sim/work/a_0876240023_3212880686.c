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
static const char *ng0 = "C:/Xilinx/Projects/Lab6/converter.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0876240023_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(37, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 3496);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 3400);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0876240023_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    int t7;
    int t8;
    int t9;
    unsigned char t10;
    char *t11;
    int t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3416);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t3 = (t0 + 1672U);
    t6 = *((char **)t3);
    t7 = *((int *)t6);
    t8 = (t7 / 2);
    t9 = (t8 - 1);
    t10 = (t5 < t9);
    if (t10 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t7 = *((int *)t4);
    t8 = (t7 - 1);
    t2 = (t5 < t8);
    if (t2 != 0)
        goto LAB8;

LAB9:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3624);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t11 = *((char **)t6);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3560);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t11 = *((char **)t6);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1512U);
    t11 = *((char **)t3);
    t12 = *((int *)t11);
    t13 = (t12 + 1);
    t3 = (t0 + 3560);
    t14 = (t3 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((int *)t17) = t13;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 3624);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t11 = *((char **)t6);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1512U);
    t6 = *((char **)t1);
    t9 = *((int *)t6);
    t12 = (t9 + 1);
    t1 = (t0 + 3560);
    t11 = (t1 + 56U);
    t14 = *((char **)t11);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((int *)t16) = t12;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3624);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t11 = *((char **)t6);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

}


extern void work_a_0876240023_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0876240023_3212880686_p_0,(void *)work_a_0876240023_3212880686_p_1};
	xsi_register_didat("work_a_0876240023_3212880686", "isim/tb_top_isim_beh.exe.sim/work/a_0876240023_3212880686.didat");
	xsi_register_executes(pe);
}
