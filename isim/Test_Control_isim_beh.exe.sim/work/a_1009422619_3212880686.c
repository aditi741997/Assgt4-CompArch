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
static const char *ng0 = "C:/Users/Shreyan/Desktop/LOL/Assgt4-CompArch/src/IF_ID.vhd";



static void work_a_1009422619_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 2432U);
    t4 = xsi_signal_has_event(t3);
    if (t4 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t3 = (t0 + 4112);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t5 = (t0 + 1032U);
    t12 = *((char **)t5);
    t5 = (t0 + 4192);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(55, ng0);
    t3 = (t0 + 2632U);
    t5 = *((char **)t3);
    t17 = (31 - 23);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t3 = (t5 + t19);
    t6 = (t0 + 4256);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t3, 24U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(56, ng0);
    t3 = (t0 + 2632U);
    t5 = *((char **)t3);
    t17 = (31 - 19);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t3 = (t5 + t19);
    t6 = (t0 + 4320);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t3, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(57, ng0);
    t3 = (t0 + 2632U);
    t5 = *((char **)t3);
    t17 = (31 - 3);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t3 = (t5 + t19);
    t6 = (t0 + 4384);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t3, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(58, ng0);
    t3 = (t0 + 2632U);
    t5 = *((char **)t3);
    t17 = (31 - 15);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t3 = (t5 + t19);
    t6 = (t0 + 4448);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t3, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(59, ng0);
    t3 = (t0 + 2632U);
    t5 = *((char **)t3);
    t17 = (31 - 7);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t3 = (t5 + t19);
    t6 = (t0 + 4512);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t3, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(60, ng0);
    t3 = (t0 + 2632U);
    t5 = *((char **)t3);
    t17 = (31 - 11);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t3 = (t5 + t19);
    t6 = (t0 + 4576);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t3, 12U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(61, ng0);
    t3 = (t0 + 2632U);
    t5 = *((char **)t3);
    t3 = (t0 + 4640);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB3;

LAB5:    t5 = (t0 + 2312U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t5 = (t0 + 2472U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t2 = t8;
    goto LAB10;

}


extern void work_a_1009422619_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1009422619_3212880686_p_0};
	xsi_register_didat("work_a_1009422619_3212880686", "isim/Test_Control_isim_beh.exe.sim/work/a_1009422619_3212880686.didat");
	xsi_register_executes(pe);
}
