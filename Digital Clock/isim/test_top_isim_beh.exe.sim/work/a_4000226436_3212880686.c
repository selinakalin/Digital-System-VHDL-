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
static const char *ng0 = "C:/ise-vhdl/Lab_4/counter.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);


static void work_a_4000226436_3212880686_p_0(char *t0)
{
    char t20[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    int t23;

LAB0:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3720);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(21, ng0);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB11;

LAB12:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 992U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(22, ng0);
    t7 = xsi_get_transient_memory(4U);
    memset(t7, 0, 4U);
    t11 = t7;
    memset(t11, (unsigned char)2, 4U);
    t12 = (t0 + 3816);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t5 = *((unsigned char *)t7);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608U);
    t7 = (t0 + 5644);
    t11 = (t20 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 3;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t23 = (3 - 0);
    t21 = (t23 * 1);
    t21 = (t21 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t21;
    t1 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t3, t2, t7, t20);
    if (t1 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608U);
    t7 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t20, t3, t2, 1);
    t8 = (t20 + 12U);
    t21 = *((unsigned int *)t8);
    t22 = (1U * t21);
    t1 = (4U != t22);
    if (t1 == 1)
        goto LAB24;

LAB25:    t11 = (t0 + 3816);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 4U);
    xsi_driver_first_trans_fast(t11);

LAB22:
LAB14:    goto LAB9;

LAB13:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1992U);
    t8 = *((char **)t2);
    t2 = (t0 + 5608U);
    t11 = (t0 + 1672U);
    t12 = *((char **)t11);
    t11 = (t0 + 5576U);
    t9 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t8, t2, t12, t11);
    if (t9 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608U);
    t7 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t20, t3, t2, 1);
    t8 = (t20 + 12U);
    t21 = *((unsigned int *)t8);
    t22 = (1U * t21);
    t1 = (4U != t22);
    if (t1 == 1)
        goto LAB19;

LAB20:    t11 = (t0 + 3816);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 4U);
    xsi_driver_first_trans_fast(t11);

LAB17:    goto LAB14;

LAB16:    xsi_set_current_line(26, ng0);
    t13 = xsi_get_transient_memory(4U);
    memset(t13, 0, 4U);
    t14 = t13;
    memset(t14, (unsigned char)2, 4U);
    t15 = (t0 + 3816);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB17;

LAB19:    xsi_size_not_matching(4U, t22, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(32, ng0);
    t12 = (t0 + 1672U);
    t13 = *((char **)t12);
    t12 = (t0 + 3816);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB22;

LAB24:    xsi_size_not_matching(4U, t22, 0);
    goto LAB25;

}

static void work_a_4000226436_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(40, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 3880);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3736);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4000226436_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4000226436_3212880686_p_0,(void *)work_a_4000226436_3212880686_p_1};
	xsi_register_didat("work_a_4000226436_3212880686", "isim/test_top_isim_beh.exe.sim/work/a_4000226436_3212880686.didat");
	xsi_register_executes(pe);
}
