iCub Snapshots
==============

This repository contains the snapshots for each robot version, S/N and/or batch of robots.
For each robot snapshot we created a dedicated `git branch`.

As an example, if you want to open the shapshot of the robot version `2.6`, switch to its dedicated branch [`iCub2_6`](https://github.com/icub-tech-iit/icub-snapshots/tree/iCub2_6).

If you own an iCub robot, you can find the snapshot of your robot S/N in the branch named `sn_YOUR-ROBOT-SERIAL-NUMBER`.
**NOTE**: if your robot S/N is not present, refer to the snapshot of the associated robot version.

### 🔽 How to clone specific branches locally
```sh
$ git clone https://github.com/icub-tech-iit/icub-snapshots.git --single-branch --branch <branch-name>
```

⚠ Be careful that branches are handled via [Git LFS](https://help.github.com/en/articles/installing-git-large-file-storage).


## Maintainers
This repository is maintained by the CAD designer in the Team [PROTO](https://github.com/orgs/icub-tech-iit/teams/proto/members).
