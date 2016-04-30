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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_0290344353_3212880686_init();
    work_a_1001770038_3212880686_init();
    work_a_4240393197_3212880686_init();
    work_a_1009422619_3212880686_init();
    work_a_3149057673_3212880686_init();
    work_a_0246524863_3212880686_init();
    work_a_2161729135_3212880686_init();
    work_a_2313853754_3212880686_init();
    work_a_3094466155_3212880686_init();
    work_a_2180838062_3212880686_init();
    work_a_4075195172_3212880686_init();
    work_a_0349337648_3212880686_init();
    work_a_1090243787_3212880686_init();
    work_a_3035693203_3212880686_init();
    work_a_3140398450_3212880686_init();
    work_a_1097210267_3212880686_init();
    work_a_0452692822_3212880686_init();
    work_a_0364751592_3212880686_init();
    work_a_3450814419_3212880686_init();
    work_a_0084377853_3212880686_init();
    work_a_3701691041_3212880686_init();
    work_a_2687908779_3212880686_init();
    work_a_1098225424_3212880686_init();
    work_a_0955054603_3212880686_init();
    work_a_0243096240_3212880686_init();
    work_a_1920712516_3212880686_init();
    work_a_2554805589_3212880686_init();
    work_a_1492497583_3212880686_init();
    work_a_0807604087_3212880686_init();
    work_a_0162411442_3212880686_init();
    work_a_2058635832_3212880686_init();
    work_a_2625681708_3212880686_init();
    work_a_3572610285_3212880686_init();
    work_a_3882926292_3212880686_init();
    work_a_3189988576_3212880686_init();
    work_a_1117991490_3212880686_init();
    work_a_1567887973_3212880686_init();
    work_a_1837178026_3212880686_init();
    work_a_0945777706_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2657849955_3212880686_init();
    work_a_1632567566_3212880686_init();
    work_a_0720342707_3212880686_init();
    work_a_1561973598_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_1848946276_3212880686_init();
    work_a_2738276421_3212880686_init();
    work_a_3222946569_3212880686_init();
    work_a_1329951597_2372691052_init();


    xsi_register_tops("work_a_1329951597_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
