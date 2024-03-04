package com.huawei.hms.common.internal;

import android.app.Activity;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.ui.NotInstalledHmsDialogHelper;
import com.huawei.hms.utils.ResourceLoaderUtil;
/* loaded from: classes4.dex */
public class ConnectionErrorMessages {
    public static String getErrorDialogButtonMessage(Activity activity, int i9) {
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(activity.getApplicationContext());
        }
        return ResourceLoaderUtil.getString("hms_confirm");
    }

    public static String getErrorMessage(Activity activity, int i9) {
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(activity.getApplicationContext());
        }
        if (i9 == 1 || i9 == 2) {
            return activity.getString(ResourceLoaderUtil.getStringId("hms_apk_not_installed_hints"), new Object[]{NotInstalledHmsDialogHelper.getAppName(activity)});
        }
        return null;
    }

    public static String getErrorTitle(Activity activity, int i9) {
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(activity.getApplicationContext());
        }
        if (i9 == 1 || i9 == 2) {
            return null;
        }
        if (i9 != 3) {
            if (i9 != 9) {
                HMSLog.e("HuaweiApiAvailability", "Unexpected error code " + i9);
                return null;
            }
            HMSLog.e("HuaweiApiAvailability", "Huawei Mobile Services is invalid. Cannot recover.");
            return null;
        }
        return ResourceLoaderUtil.getString("hms_bindfaildlg_message");
    }
}
