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
static const char *ng0 = "C:/ise-vhdl/Lab_4/digital_clock.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3817547928_3212880686_p_0(char *t0)
{
    char t22[16];
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
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t23;
    unsigned int t24;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4128);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 4240);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6256U);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t22, 0, 4);
    t3 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t5, t22);
    if (t3 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6256U);
    t5 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t22, t2, t1, 1);
    t6 = (t22 + 12U);
    t23 = *((unsigned int *)t6);
    t24 = (1U * t23);
    t3 = (4U != t24);
    if (t3 == 1)
        goto LAB21;

LAB22:    t7 = (t0 + 4240);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t5, 4U);
    xsi_driver_first_trans_fast(t7);

LAB19:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2152U);
    t7 = *((char **)t2);
    t2 = (t0 + 6256U);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 6224U);
    t15 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t7, t2, t9, t8);
    if (t15 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6256U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t22, t2, t1, 1);
    t6 = (t22 + 12U);
    t23 = *((unsigned int *)t6);
    t24 = (1U * t23);
    t3 = (4U != t24);
    if (t3 == 1)
        goto LAB16;

LAB17:    t7 = (t0 + 4240);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t5, 4U);
    xsi_driver_first_trans_fast(t7);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(26, ng0);
    t10 = xsi_get_transient_memory(4U);
    memset(t10, 0, 4U);
    t16 = t10;
    memset(t16, (unsigned char)2, 4U);
    t17 = (t0 + 4240);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB14;

LAB16:    xsi_size_not_matching(4U, t24, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(32, ng0);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 4240);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB19;

LAB21:    xsi_size_not_matching(4U, t24, 0);
    goto LAB22;

}

static void work_a_3817547928_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6256U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 6224U);
    t5 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 4304);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 4144);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 4304);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3817547928_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4160);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3817547928_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3817547928_3212880686_p_0,(void *)work_a_3817547928_3212880686_p_1,(void *)work_a_3817547928_3212880686_p_2};
	xsi_register_didat("work_a_3817547928_3212880686", "isim/test_digital_clock_isim_beh.exe.sim/work/a_3817547928_3212880686.didat");
	xsi_register_executes(pe);
}
