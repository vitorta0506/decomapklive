package org.light;

import android.text.TextUtils;
/* loaded from: classes7.dex */
public class LightBundleInfo {
    public String agent_type;
    public String bundle_name;
    public String bundle_special;
    public LightBundleDownloadInfo high;
    public boolean isSuccess = false;
    public LightBundleDownloadInfo low;
    public LightBundleDownloadInfo middle;
    public LightBundleDownloadInfo still;
    public LightBundleDownloadInfo veryhigh;
    public LightBundleDownloadInfo verylow;

    /* loaded from: classes7.dex */
    public static class LightBundleDownloadInfo {
        public String md5;
        public String url;
    }

    public String getDownloadUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1979547688:
                if (str.equals("veryhigh")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c10 = 1;
                    break;
                }
                break;
            case 107348:
                if (str.equals("low")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3202466:
                if (str.equals("high")) {
                    c10 = 3;
                    break;
                }
                break;
            case 109765032:
                if (str.equals("still")) {
                    c10 = 4;
                    break;
                }
                break;
            case 351789662:
                if (str.equals("verylow")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                LightBundleDownloadInfo lightBundleDownloadInfo = this.veryhigh;
                if (lightBundleDownloadInfo != null) {
                    return lightBundleDownloadInfo.url;
                }
                return null;
            case 1:
                LightBundleDownloadInfo lightBundleDownloadInfo2 = this.middle;
                if (lightBundleDownloadInfo2 != null) {
                    return lightBundleDownloadInfo2.url;
                }
                return null;
            case 2:
                LightBundleDownloadInfo lightBundleDownloadInfo3 = this.low;
                if (lightBundleDownloadInfo3 != null) {
                    return lightBundleDownloadInfo3.url;
                }
                return null;
            case 3:
                LightBundleDownloadInfo lightBundleDownloadInfo4 = this.high;
                if (lightBundleDownloadInfo4 != null) {
                    return lightBundleDownloadInfo4.url;
                }
                return null;
            case 4:
                LightBundleDownloadInfo lightBundleDownloadInfo5 = this.still;
                if (lightBundleDownloadInfo5 != null) {
                    return lightBundleDownloadInfo5.url;
                }
                return null;
            case 5:
                LightBundleDownloadInfo lightBundleDownloadInfo6 = this.verylow;
                if (lightBundleDownloadInfo6 != null) {
                    return lightBundleDownloadInfo6.url;
                }
                return null;
            default:
                return null;
        }
    }
}
