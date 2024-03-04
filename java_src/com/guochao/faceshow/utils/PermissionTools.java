package com.guochao.faceshow.utils;

import android.app.Activity;
import android.os.Build;
import android.provider.Settings;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.BaseApplication;
/* loaded from: classes4.dex */
public class PermissionTools {
    public static final int ACT_STORAGE_REQUEST_CODE = 4097;
    public static final int FRAGMENT_STORAGE_REQUEST_CODE = 4098;

    public static boolean checkStoragePer() {
        try {
            return ContextCompat.checkSelfPermission(BaseApplication.getInstance(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean checkUnKnowResourcePer() {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                return BaseApplication.getInstance().getPackageManager().canRequestPackageInstalls();
            }
            return checkUnKnowResourcePermStatus();
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean checkUnKnowResourcePermStatus() {
        return Settings.Global.getInt(BaseApplication.getInstance().getContentResolver(), "install_non_market_apps", 0) == 1;
    }

    public static void requestStoragePer(Activity activity) {
        try {
            String[] strArr = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
            if (ContextCompat.checkSelfPermission(activity, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                ActivityCompat.requestPermissions(activity, strArr, 4097);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void requestStoragePerByFragment(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        try {
            String[] strArr = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
            if (ContextCompat.checkSelfPermission(BaseApplication.getInstance(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                fragment.requestPermissions(strArr, 4098);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void requestStoragePer(Activity activity, int i9) {
        if (activity == null) {
            return;
        }
        try {
            String[] strArr = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
            if (ContextCompat.checkSelfPermission(activity, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                ActivityCompat.requestPermissions(activity, strArr, i9);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
