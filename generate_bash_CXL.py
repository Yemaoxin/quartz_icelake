# sudo LOGV=1 ./CXL-MEM-Simulator -t /home/ymx/memcached-1.6.19/memcached -i 100 -c 0 -s 30,1,1,1 -l 250,250,250,250,250,250 -d 92
# python2 ./bin/ycsb load memcached -s -P /home/ymx/YCSB/workloads/workloada -threads 16 -target 160000  -p memcached.hosts=127.0.0.1:11212  -p requestdistribution=zipfian>/home/ymx/test_cxlsim.txt

# 设计一个合理的workload属性很重要
workloads = [
    "workloada",
    # "workloadb",
    # "workloadc",
    # "workloadd",
    # "workloade",
    # "workloadf"
]

Memory_types= [
    'DRAM',
    "CXL"
]

# quartz没办法通过外部参数实现设置内存,这一点很麻烦的嘞
distributions = [
    'uniform',
    'zipfian'
]

if __name__ == "__main__":

    for memory in memory_allocate:
        for distribution in distributions:
            for workload in workloads:    
                
                print("sudo pkill -9 memcached")
                print(
                    "echo \"astl402\" | sudo -S lsof -l -i tcp:11212 | awk '{if (NR>1){print $2}}' |sudo xargs kill -9")
                print(
                    "echo \"astl402\" | sudo -S ps -aux| grep 11212 | awk '{print $2}'|sudo xargs kill -9")
                print("sudo pkill -9 python2")
                Result_Dir = "/home/ymx/Memcached_DRAM_CXL/{}/distribution-{}".format(
                    memory,distribution)
                print("mkdir -p {}".format(Result_Dir))
                print("sleep 2")
                Sim_LOG_txt = Result_Dir + "/{}_LOG.txt".format(workload)
                Load_Result_txt = Result_Dir + "/{}_load.txt".format(workload)
                Run_Result_txt = Result_Dir + "/{}_run.txt".format(workload)
                # 后台挂起
                CXL_Mem_Sim_cmd = "sudo LOGV=5 ./CXL-MEM-Simulator -t /home/ymx/memcached-1.6.21/memcached -d 92 -i {} -c 0,1,2,3,4,5,6,7,8,9,10,11,12,13 -s {} -l 250,250,250,250,250,250 -p 1 -f 3900 -M true >{}  &".format(
                    epoch, memory, Sim_LOG_txt)
                YCSB_load_cmd = "numactl --physcpubind 15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31 python2 ./bin/ycsb load memcached -s -P /home/ymx/YCSB/workloads/{} -threads 16 -target 160000  -p memcached.hosts=127.0.0.1:11212   > {}".format(
                    workload, Load_Result_txt)
                YCSB_run_cmd = "numactl --physcpubind 15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31 python2 ./bin/ycsb run memcached -s -P /home/ymx/YCSB/workloads/{} -threads 16 -target 160000  -p memcached.hosts=127.0.0.1:11212    > {}".format(
                    workload, Run_Result_txt)
                print("cd /home/ymx/CXLMemSim-main/build")
                print(CXL_Mem_Sim_cmd)
                print("cd /home/ymx/YCSB")
                print("sleep 5")
                print(YCSB_load_cmd)
                print("sleep 5")
                # print(YCSB_run_cmd)
