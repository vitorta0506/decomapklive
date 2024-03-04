package com.tencent.ugc.datereport;

import com.facebook.internal.security.CertificateUtil;
import com.tencent.liteav.base.datareport.Event4XReporter;
import com.tencent.liteav.base.system.LiteavSystemInfo;
/* loaded from: classes4.dex */
public class UGCDataReport {
    private static UGCDataReport sInstance;
    private String mNetType = Integer.toString(LiteavSystemInfo.getNetworkType());
    private String mDevId = LiteavSystemInfo.getDeviceUuid();
    private String mDevUUID = LiteavSystemInfo.getDeviceUuid();
    private String mPkgName = LiteavSystemInfo.getAppPackageName();
    private String mAppName = LiteavSystemInfo.getAppName() + CertificateUtil.DELIMITER + this.mPkgName;
    private String mSystemVersion = String.valueOf(LiteavSystemInfo.getSystemOSVersionInt());
    private final Event4XReporter mDAUReporter = new Event4XReporter(UGCDataReportDef.COMMAND_ID_DAU, 1004, "", true, 1);

    private UGCDataReport() {
    }

    private static UGCDataReport getInstance() {
        if (sInstance == null) {
            synchronized (UGCDataReport.class) {
                if (sInstance == null) {
                    sInstance = new UGCDataReport();
                }
            }
        }
        return sInstance;
    }

    public static synchronized void reportDAU(int i9) {
        synchronized (UGCDataReport.class) {
            getInstance().reportDAUImpl(i9, 0, "");
        }
    }

    private void reportDAUImpl(int i9, int i10, String str) {
        setCommonInfo();
        this.mDAUReporter.reportDau(i9, i10, str);
    }

    private void setCommonInfo() {
        String str = this.mNetType;
        if (str != null) {
            this.mDAUReporter.setCommonStringValue("net_type", str);
        }
        String str2 = this.mDevId;
        if (str2 != null) {
            this.mDAUReporter.setCommonStringValue(UGCDataReportDef.DR_KEY_DEV_ID, str2);
        }
        String str3 = this.mDevUUID;
        if (str3 != null) {
            this.mDAUReporter.setCommonStringValue(UGCDataReportDef.DR_KEY_DEV_UUID, str3);
        }
        String str4 = this.mAppName;
        if (str4 != null) {
            this.mDAUReporter.setCommonStringValue("app_name", str4);
        }
        String str5 = this.mSystemVersion;
        if (str5 != null) {
            this.mDAUReporter.setCommonStringValue(UGCDataReportDef.DR_KEY_SYS_VER, str5);
        }
    }

    public static synchronized void reportDAU(int i9, int i10, String str) {
        synchronized (UGCDataReport.class) {
            getInstance().reportDAUImpl(i9, i10, str);
        }
    }
}
