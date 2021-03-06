+++
type = "rivanna"
images = [
  "/2016/10/image.jpg",
]
categories = [
  "HPC",
  "software",
]
date = "2019-06-23T08:37:46-05:00"
tags = [
  "lang",
]
draft = false
shorttitle = "Jupyter Lab"
title = "Jupyter Lab on Rivanna"
description = "Jupyter Lab in Rivanna's HPC environment"
author = "RC Staff"

+++
# Overview
Jupyter Notebooks are documents which can combine executable code, formatted text, and interactive graphics into a single file.  Because Notebooks can be shared, they provide developers with a tool for capturing and explaining their computational results.  To use a Jupyter Notebook, a web application, such as JupyterLab, is needed.

We now provide a web portal where JupyterLab can be accessed on Rivanna.

However, to use JupyterLab, you must have an account on Rivanna.

# Accessing JupyterLab
To access JupyterLab, you will begin by connecting to our Open OnDemand portal:

1. Open a web browser and go to https://rivanna-portal.hpc.virginia.edu.
2. Use your `Netbadge` credentials to log in.
3. On the top right of the menu bar of the Open OnDemand dashboard, click on `Interactive Apps`.
4. In the drop-down box, click on `JupyterLab`.

# Requesting an Instance
Your instance (or copy) of JupyterLab will run on a Rivanna compute node. So it will need a list of resources, such as partition, time, and allocation. If you are new to Rivanna, you may want to read the [Rivanna User Guide](/userinfo/rivanna/overview) to learn more about the partitions.

1. After connecting to JupyterLab through Open OnDemand, a form will appear where you can fill in the resources for JupyterLab.
2. When done filling in the resources, click on the blue “Launch” button at the bottom of the form.
3. It will take a few minutes for the system to gather the resources for your instance of JupyterLab.  When the resources are ready a `Connect to Jupyter` button will appear. Click on the button and the Notebook session will open in a new tab.

# Running Notebooks
The JupyterLab dashboard will have two panes:

* A file browser pane on the left where you will see the files and folders in your Rivanna directory; and
* A `Launcher` pane on the right with tiles for the available kernels (i.e., underlying software that will run the code in your Notebooks).

If you already have a Jupyter Notebook in your account, you can maneuver to the file in the file-browser pane, and double-click on the file name to open the Notebook.

However, if you want to create a new Notebook, go to the Launcher pane and click on the tile for the desired kernel (e.g., Python 3).

If you are more familiar with the classic Notebook environment, you can change the JupyterLab format by clicking on `Help` and select `Launch Classic Notebook`.

# Custom JupyterLab Kernels
You may notice that the number or type of tiles on the Launcher differs between your account and a colleague’s account.  If you have created conda environments with the `ipykernel` package installed, those environments will appear as separate, specialized kernels labeled `Python [conda env:<ENV_NAME>]`.  You may need to hover over a tile to see the name of the environment.
