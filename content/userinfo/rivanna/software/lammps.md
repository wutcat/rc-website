+++
type = "rivanna"
categories = [
  "HPC",
  "software",
  "chem"
]
date = "2019-06-22T08:37:46-05:00"
tags = [
  "multi-core",
]
draft = false
modulename = "lammps"
softwarename = "LAMMPS"
title = "LAMMPS on Rivanna"
author = "RC Staff"
+++

# Description
LAMMPS (Large-scale Atomic/Molecular Massively Parallel Simulator) is a molecular-dynamics code. The code is designed to be easy to modify or extend with new functionality. LAMMPS can run on a single core but is designed to be highly efficient running on a large number of cores in parallel using message-passing techniques and a spatial decomposition of the simulation domain.  It solves systems ranging from single atoms through polymers and proteins to rigid collections of particles.  A variety of force fields is supported.

Local support is not available.  LAMMPS has documentation and tutorials at its Website.   It has a large and active community of users; to search or join the mailing list see the instructions here.

**Software Category:** {{% module-category %}}

For detailed information, visit the [{{% software-name %}} website]({{< module-homepage >}}).

# Available Versions
The LAMMPS version installed on Rivanna incorporates the most popular optional packages. To find the available versions and learn how to load them, run:
<pre>module spider {{% module-name %}}</pre>

The output of the command shows the available {{% software-name %}} module versions.

For detailed information about a particular {{% software-name %}} module, including how to load the module, run the `module spider` command with the module's full version label. __For example__:
<pre>module spider {{% module-firstversion %}}</pre>

{{% module-versions %}}

Users may build their own versions of LAMMPS if they wish to use a different compiler and MPI combination, or to choose individual optional packages.  Instructions are available at the [LAMMPS Getting Started"](http://lammps.sandia.gov/doc/Build.html) page.

# Example SLURM script
To run the system version of LAMMPS, a script similar to the following can be used.  LAMMPS has many options so only the most basic is shown.
<pre>
#!/bin/bash
#SBATCH --account my_acct
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --time=3-00:00:00
#SBATCH --output=thermo.out
#SBATCH --partition=parallel

module purge
module load intel/16.0
module load intelmpi/16.0_16.0
module load {{% module-firstversion %}}
srun lmp_iimpi -in run.in.npt
</pre>
