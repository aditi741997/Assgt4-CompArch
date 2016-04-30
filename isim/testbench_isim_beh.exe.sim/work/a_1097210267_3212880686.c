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
static const char *ng0 = "D:/Sem4/CompArch/Lab/Assgt4-CompArch/co_src/coAdder_Basic.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_1097210267_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2128U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = t3;

LAB3:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t4);
    t1 = (t0 + 2128U);
    t8 = *((char **)t1);
    t7 = *((unsigned char *)t8);
    t1 = (t0 + 1192U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t7, t10);
    t1 = (t0 + 1352U);
    t12 = *((char **)t1);
    t13 = *((unsigned char *)t12);
    t14 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t11, t13);
    t15 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t6, t14);
    t1 = (t0 + 3512);
    t16 = (t1 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t15;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t6 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t4);
    t1 = (t0 + 1352U);
    t8 = *((char **)t1);
    t7 = *((unsigned char *)t8);
    t10 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t6, t7);
    t1 = (t0 + 3576);
    t9 = (t1 + 56U);
    t12 = *((char **)t9);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t10;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3432);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t6);
    t1 = (t0 + 2128U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((unsigned char *)t1) = t7;
    goto LAB3;

}


extern void work_a_1097210267_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1097210267_3212880686_p_0};
	xsi_register_didat("work_a_1097210267_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_1097210267_3212880686.didat");
	xsi_register_executes(pe);
}
