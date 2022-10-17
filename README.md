Robot Snapshots
===============

This repository contains the snapshots for each robot version, S/N and/or batch of robots.
For each robot snapshot we created a dedicated `git branch`.

If you own an iCub robot, you can find the snapshot of your robot S/N in the branch named `icub_sn_YOUR-ROBOT-SERIAL-NUMBER`.
**NOTE**: if your robot S/N is not present, refer to the snapshot of the associated robot version.

As an example, if you want to open the shapshot of the iCub version `2.6`, switch to its dedicated branch [`iCub2_6`](https://github.com/icub-tech-iit/icub-snapshots/tree/iCub2_6).

### 🔽 How to clone specific branches locally
```sh
$ git clone https://github.com/icub-tech-iit/robot-snapshots.git --single-branch --branch <branch-name>
```

⚠ Be careful that branches are handled via [Git LFS](https://help.github.com/en/articles/installing-git-large-file-storage).


## Maintainers
The CAD designer of Team PROTO maintains this repository.
