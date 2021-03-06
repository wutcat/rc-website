+++
title = "/project Storage"
description = ""
author = "SOMRC Staff"
images = [""]
categories = ["userinfo"]
date = "2018-02-03T17:45:12-05:00"
tags = [
    "rivanna", 
    "project",
    "storage",
    "qumulo"
]
draft = false
+++

# Overview

The `/project` file system provides users with a collaborative space for data storage and sharing. Members in the same group have access to a shared directory created by the team lead or PI. Group membership can be defined and managed through [ITS MyGroups system](http://its.virginia.edu/mygroups/). `/project` storage is mounted on the Rivanna HPC cluster and runs on a new [scale-out](http://whatis.techtarget.com/definition/scale-out-storage) NAS file system.

# How to request space in `/project`
 
`/project` storage is available by request (via [CADRE User Support page](https://cadre.virginia.edu/user-support)) for $90/TB/YR. When filling out the form, the PI can specify the size of the `/project` directory and the name of an existing or new MyGroup that can access this space. We recommend choosing a MyGroup name specific to your group or collaboration for the `/project` directory. This will reduce confusion in the future if you manage multiple MyGroups and directories on other storage systems.
 
Once the request has been submitted, the PI will receive a notification that the /project space has been provisioned within 24 hours. Once the space becomes available, the PI can grant access to lab members by adding them to the MyGroup. Users in the MyGroup will see the directory (~/project/MyGroup_name) after logging into Rivanna. Addition and removal of users is managed by the PI of the group.
 
# Data transfer to & from `/project`

<div class="bd-callout bd-callout-warning">
<b>Secure Copy (scp)</b> 
<p><code>scp</code> uses secure shell (SSH) protocol to transfer files between your local machine and a remote host. <code>scp</code> can be used with the following syntax:</p>
<p><code>scp SourceFile mst3k@rivanna.hpc.virginia.edu:/project/MyGroup_name</code></p>
<p>Detailed instructions and examples for using <code>scp</code> are listed <a href ="https://discuss.rc.virginia.edu/t/secure-copy-scp/740">here</a>.</p>
</div>

<div class="bd-callout bd-callout-warning">
<b>Secure File Transfer Protocol (sftp)</b> 
<p><code>sftp</code> is a network protocol for secure file management. Instructions and examples for using <code>sftp</code> are located <a href = "https://discuss.rc.virginia.edu/t/secure-file-transfer-protocol-sftp/741">here</a>.</p>
</div>

<div class="bd-callout bd-callout-warning">
<b>Filezilla & Cyberduck</b> 
<p><a href="https://filezilla-project.org/">Filezilla</a> and <a href="https://cyberduck.io/">Cyberduck</a> are open source FTP client software for file management through an interactive graphical user interface. Instructions for using these FTP clients can be found <a href ="https://discuss.rc.virginia.edu/t/file-management-with-an-ftp-client/742">here</a>.</p>
</div>

<div class="bd-callout bd-callout-warning">
<b>Globus Connect (Large Data Transfer)</b>
<p><a href="https://www.globus.org/">Globus</a> provides access to data on local machines and Rivanna file systems, as well as external institutions and facilities. Globus is well suited for transferring both small files and large amounts of data. More information on Globus data transfer can be found <a href ="https://discuss.rc.virginia.edu/t/globus-connect-data-transfer-introduction/345">here</a>).</p>
</div>
 
# File manipulation and navigation with /project
 
`/project` storage is based on a Linux file system just like other storage spaces on the Rivanna cluster, including `/home` and `/scratch`. Users can invoke generic Linux commands to manage files and directories (`mv`, `cp`, `mkdir`), manage permissions (`chmod`, `chown`) and navigate the file system (`cd`, `ls`, `pwd`).  If you or your collaborators are unfamiliar with some of these commands, we encourage you to take time to review some of the material below:

- [A Gentle Introduction] (https://computers.tutsplus.com/tutorials/navigating-the-terminal-a-gentle-introduction--mac-3855)
- [10 Essential Linux Commands] (https://www.lifewire.com/linux-commands-for-navigating-file-system-4027320)
- [How To Manage Files From The Linux Terminal] (https://www.howtogeek.com/107808/how-to-manage-files-from-the-linux-terminal-11-commands-you-need-to-know/)
- [Navigating the Linux Filesystem] (http://www.linuxplanet.com/linuxplanet/tutorials/6666/1)
- [Shell Novice] (https://swcarpentry.github.io/shell-novice/)

For more help, please feel free to contact RC to set up a consultation or visit us during office hours. We also provide in-person training opportunities around basic command line skills and more through the [CADRE Academy portal](https://education.cadre.virginia.edu/#/home).
