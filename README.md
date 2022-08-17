Device configuration for Sony Xperia XZ1 Compact (lilac)
========================================================

Description
-----------

This repository is for LineageOS 19.1 on Sony Xperia XZ1 Compact (lilac).

How to build LineageOS
----------------------

* Make a workspace:

        mkdir -p ~/lineageos
        cd ~/lineageos

* Initialize the repo:

        repo init -u git://github.com/LineageOS/android.git -b lineage-19.1

* Create a local manifest:

        vim .repo/local_manifests/roomservice.xml

        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
            <!-- SONY -->
            <project name="whatawurst/android_kernel_sony_msm8998" path="kernel/sony/msm8998" remote="github" revision="lineage-19.1" />
            <project name="whatawurst/android_device_sony_yoshino-common" path="device/sony/yoshino-common" remote="github" revision="lineage-19.1" />
            <project name="whatawurst/android_device_sony_lilac" path="device/sony/lilac" remote="github" revision="lineage-19.1" />

            <!-- blobs for lilac -->
            <project name="whatawurst/android_vendor_sony_yoshino-common" path="vendor/sony/yoshino-common" remote="github" revision="lineage-19.1" />
            <project name="whatawurst/android_vendor_sony_lilac" path="vendor/sony/lilac" remote="github" revision="lineage-19.1" />
        </manifest>

* Sync the repo:

        repo sync

* Setup the environment

        source build/envsetup.sh
        lunch lineage_lilac-userdebug

* Build LineageOS

        make -j8 bacon
