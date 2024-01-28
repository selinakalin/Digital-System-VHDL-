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
static const char *ng0 = "C:/ise-vhdl/lab_7_3/converter.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0876240023_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    int t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 3072);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(20, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t4 = (t9 < 49999999);
    if (t4 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 < 99999999);
    if (t3 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t10 + 1);
    t2 = (t0 + 3136);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t11;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(23, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t10 = *((int *)t5);
    t11 = (t10 + 1);
    t1 = (t0 + 3136);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    *((int *)t12) = t11;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

}


extern void work_a_0876240023_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0876240023_3212880686_p_0};
	xsi_register_didat("work_a_0876240023_3212880686", "isim/tb_top_isim_beh.exe.sim/work/a_0876240023_3212880686.didat");
	xsi_register_executes(pe);
}
