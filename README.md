# C code for Strength Pareto Evolutionary Algorithm

Authors:
- Eckart Zitzler, Marco Laumanns, and Lothar Thiele
- Computer Engineering and Networks Laboratory (TIK) 
- Department of Electrical Engineering Swiss Federal Institute of Technology (ETH) Zurich ETH Zentrum, Gloriastrasse 35, CH-8092 Zurich, Switzerland

Related article :
- [Link to the article](http://e-collection.library.ethz.ch/eserv/eth:24689/eth-24689-01.pdf)

Brief:
- The Strength Pareto Evolutionary Algorithm (SPEA) (Zitzler and Thiele 1999) is a relatively recent technique for finding or approximating the Pareto-optimal set for multiobjective optimization problems. In different studies (Zitzler and Thiele 1999; Zitzler, Deb, and Thiele 2000) SPEA has shown very good performance in comparison to other multiobjective evolutionary algorithms, and therefore it has been a point of reference in various recent investigations, e.g., (Corne, Knowles, and Oates 2000). Furthermore, it has been used in different applications, e.g., (Lahanas, Milickovic, Baltas, and Zamboglou 2001). In this paper, an improved version, namely SPEA2, is proposed, which incorporates in contrast to its predecessor a fine-grained fitness assignment strategy, a density estimation technique, and an enhanced archive truncation method. The comparison of SPEA2 with SPEA and two other modern elitist methods, PESA and NSGA-II, on different test problems yields promising results.

## Parameters

SPEA2 uses the following values for the common parameters. These parameters are specified in 'XXXXX_cfg'.

- alpha    (population size)
- mu       (number of parent individuals)
- lambda   (number of offspring individuals)
- dim      (number of objectives)

'XXXXX_cfg' is a PISA_configuration file.

SPEA2 takes two local parameter which is given in a parameter file. The name of this parameter file is passed to SPEA2 as command line argument. (See 'spea2_param.txt' for an example.)

- seed         (seed for the random number generator)
- tournament   (tournament size for mating selection)


## Files description

The source code for LOTZ is divided into four files:

- 'spea2.h' is the header file.
- 'spea2.c' contains the main function and implements the control flow.
- 'spea2_io.c' implements the file i/o functions.
- 'spea2_functions.c' implements all other functions including the selection.

Additionally a Makefile, a PISA_configuration file with common parameters and a PISA_parameter file with local parameters are contained in the tar file.

Depending on whether you compile on Windows or on Unix (any OS having ``<unistd.h>``) uncomment the according '#define' in the 'spea2.h' file.

## Usage:

Start SPEA2 with the following arguments:

```
spea2 paramfile filenamebase poll
```

- paramfile: specifies the name of the file containing the local
- parameters (e.g. spea2_param.txt)
- filenamebase: specifies the name (and optionally the directory) of the communication files. The filenames of the communication files and the configuration file are built by appending 'sta', 'var', 'sel','ini', 'arc' and 'cfg' to the filenamebase. This gives the following names for the 'PISA_' filenamebase:
  - XXXXX_cfg - configuration file
  - XXXXX_ini - initial population
  - XXXXX_sel - individuals selected for variation (PISA_
  - XXXXX_var - variated individuals (offspring)
  - XXXXX_arc - individuals in the archive


**Caution: the filenamebase must be consistent with the name of the configuration file and the filenamebase specified for the SPEA2 module.**

poll: gives the value for the polling time in seconds (e.g. 0.5). This
      polling time must be larger than 0.01 seconds.

information from the authors: [Here](http://www.tik.ee.ethz.ch/pisa/selectors/spea2/spea2_documentation.txt)
