# Distributed algorithm for finding the median
## Problem Description
You have a few thousands servers in your network. Each server stores a huge list of integers. How do you find the overall median?

## Assumptions
1. The servers are able to communicate as needed.
2. An extra server may be used as the "Orchestrator"/"Master" of the aggregation.
3. The network communication should be minimal. In other words, avoid copying the complete files.
4. The integers are unsigned 32-bits and held locally in a sorted way.

## Milestones
1. Select a master/slave algorithm, which is efficient and yet reasonably simple to implement.
2. Define a configuration file and the API for each module (master/slave).
3. Create the place-holder source files and a Makefile to compile the library and the unit-testing programs.
4. Write a unit-testing program for each module.
5. Write a simple logging framework for debugging the modules.
6. Write a framework abstracting the communication. Initially, just simulate all the modules in one process.
7. Implement the slave side and test it.
8. Implement the master side and test it in a single-process mode.
9. Replace the simulation framework with a TCP-based communication.
10. Simulate the servers as daemons in the same machine.
