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
static const char *ng0 = "D:/Sem4/CompArch/Lab/Assgt4-CompArch/src/Flags.vhd";



static void work_a_1561973598_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(52, ng0);

LAB3:    t2 = (t0 + 3400);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t7 = (t8 + t12);
    t13 = *((unsigned char *)t7);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(48, ng0);

LAB9:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t9 = (1 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t3 + t12);
    t1 = *((unsigned char *)t2);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(49, ng0);

LAB12:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t9 = (2 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t3 + t12);
    t1 = *((unsigned char *)t2);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(50, ng0);

LAB15:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t9 = (3 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t3 + t12);
    t1 = *((unsigned char *)t2);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(51, ng0);

LAB18:    goto LAB3;

LAB5:    t2 = (t0 + 1472U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(48, ng0);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t17 = (0 - 3);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t15 = (t16 + t20);
    t21 = *((unsigned char *)t15);
    t22 = (t0 + 3496);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = t21;
    xsi_driver_first_trans_delta(t22, 3U, 1, 0LL);
    goto LAB9;

LAB11:    xsi_set_current_line(49, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t17 = (1 - 3);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t7 = (t8 + t20);
    t5 = *((unsigned char *)t7);
    t15 = (t0 + 3496);
    t16 = (t15 + 56U);
    t22 = *((char **)t16);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = t5;
    xsi_driver_first_trans_delta(t15, 2U, 1, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(50, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t17 = (2 - 3);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t7 = (t8 + t20);
    t5 = *((unsigned char *)t7);
    t15 = (t0 + 3496);
    t16 = (t15 + 56U);
    t22 = *((char **)t16);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = t5;
    xsi_driver_first_trans_delta(t15, 1U, 1, 0LL);
    goto LAB15;

LAB17:    xsi_set_current_line(51, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t17 = (3 - 3);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t7 = (t8 + t20);
    t5 = *((unsigned char *)t7);
    t15 = (t0 + 3496);
    t16 = (t15 + 56U);
    t22 = *((char **)t16);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = t5;
    xsi_driver_first_trans_delta(t15, 0U, 1, 0LL);
    goto LAB18;

}

static void work_a_1561973598_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3560);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3416);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1561973598_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1561973598_3212880686_p_0,(void *)work_a_1561973598_3212880686_p_1};
	xsi_register_didat("work_a_1561973598_3212880686", "isim/Test_Control_isim_beh.exe.sim/work/a_1561973598_3212880686.didat");
	xsi_register_executes(pe);
}
