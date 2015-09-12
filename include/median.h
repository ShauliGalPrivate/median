#ifndef __MEDIAN_H__
#define __MEDIAN_H__
 
#include <stdint.h>

int init_as_master(void);

uint32_t get_median(void);

int init_as_slave(uint32_t master_ip, char *int_file_name);

#endif /* __MEDIAN_H__ */
