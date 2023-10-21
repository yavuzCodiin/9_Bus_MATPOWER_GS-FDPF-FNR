# 9_Bus_MATPOWER_GS-FDPF-FNR

This repository contains MATLAB code for performing power flow analysis on electrical networks using different algorithms provided by MATPOWER, a powerful simulation tool widely used in power system engineering.

## Overview
Power flow analysis is a fundamental task in electrical engineering, essential for understanding how electrical power is distributed and balanced within a network. This repository offers a flexible and comprehensive solution for power flow analysis, allowing you to explore various algorithms and their impact on system behavior.

I used MATPOWER to solve 9 bus case, methods I used are 

* Gauss-Seidel
* Full Newton-Raphson
* Fast Decoupled Power Flow

1) GAUSS SEIDEL METHOD
   
   ![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/cda40b2a-bc2d-406b-b118-faf3615a626b)

2) NEWTON RAPHSON METHOD
   
   ![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/241ed1bb-4004-4fa1-9557-a559a9972b70)

3) FAST DECOUPLED METHOD
   
   ![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/c217291c-2fd5-4139-b049-329d82a9b52e)

![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/edb57ed0-86a8-4f7b-b97a-3315b32c2f69)

## EXPERIMENT AND RESULT

### GAUSS SEIDEL METHOD
```
mpopt = mpoption('pf.alg', 'GS', 'verbose', 3);
runpf('case9', mpopt);
```
![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/2fa081fa-09e5-4f26-947e-e186c6fb931f)
![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/a596c0d9-06f6-4751-bb20-7482b6babc86)

### NEWTON RAPHSON METHOD
```
mpopt = mpoption('pf.alg', 'NR', 'verbose', 3);
runpf('case9', mpopt);
```
![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/c08f65ea-ac3b-4a2d-805d-2af11fb26237)
![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/6dbab845-3861-4473-9483-7f545c0890f1)

### FAST DECOUPLED METHOD
```
mpopt = mpoption('pf.alg', 'FDXB', 'verbose', 3);
runpf('case9', mpopt);
```
![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/9cc4bfdf-c796-4645-bf28-f3344eb3b619)
![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/a80035d6-51fb-4f19-a39d-83ae00d6afc4)

![image](https://github.com/yavuzCodiin/9_Bus_MATPOWER_GS-FDPF-FNR/assets/82445309/99108c20-b122-4d00-9e61-4ad7ff00e721)

## CONCLUSION
In the contrast, we can see that Gauss – Seidel needs a lot of iteration to get where other two 
method are, the most efficient method is Fast Decoupled because it can do more iterations 
than Newton Raphson in less time.




