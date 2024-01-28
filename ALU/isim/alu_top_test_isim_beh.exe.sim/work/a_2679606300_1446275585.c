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
static const char *ng0 = "C:/ise-vhdl/ALU/decrement.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );


static void work_a_2679606300_1446275585_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(15, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4180U);
    t4 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t1, t3, t2, 1);
    t5 = (t0 + 2752);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 4U);
    xsi_driver_first_trans_fast_port(t5);

LAB2:    t10 = (t0 + 2672);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2679606300_1446275585_init()
{
	static char *pe[] = {(void *)work_a_2679606300_1446275585_p_0};
	xsi_register_didat("work_a_2679606300_1446275585", "isim/alu_top_test_isim_beh.exe.sim/work/a_2679606300_1446275585.didat");
	xsi_register_executes(pe);
}
