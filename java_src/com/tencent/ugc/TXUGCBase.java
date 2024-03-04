package com.tencent.ugc;

import android.content.Context;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.ugc.datereport.UGCDataReport;
import com.tencent.ugc.datereport.UGCDataReportDef;
/* loaded from: classes4.dex */
public class TXUGCBase {
    private static TXUGCBase sInstance;
    private static TXUGCBaseListener sListener;

    /* loaded from: classes4.dex */
    public static abstract class TXUGCBaseListener {
        public abstract void onLicenceLoaded(int i9, String str);
    }

    static {
        com.tencent.liteav.base.util.r.a();
    }

    private TXUGCBase() {
    }

    public static TXUGCBase getInstance() {
        if (sInstance == null) {
            synchronized (TXUGCBase.class) {
                if (sInstance == null) {
                    sInstance = new TXUGCBase();
                }
            }
        }
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setLicence$0(int i9, String str) {
        TXUGCBaseListener tXUGCBaseListener = sListener;
        if (tXUGCBaseListener != null) {
            tXUGCBaseListener.onLicenceLoaded(i9, str);
        }
        if (i9 == 0) {
            UGCDataReport.reportDAU(1016);
        } else {
            UGCDataReport.reportDAU(1017, i9, str);
        }
    }

    public static void setListener(TXUGCBaseListener tXUGCBaseListener) {
        sListener = tXUGCBaseListener;
    }

    public String getLicenceInfo(Context context) {
        return LicenseChecker.getInstance().getLicense(LicenseChecker.c.UGC);
    }

    public void setLicence(Context context, String str, String str2) {
        ContextUtils.initApplicationContext(context.getApplicationContext());
        ContextUtils.setDataDirectorySuffix("liteav");
        LicenseChecker.getInstance().setListener(a.a());
        LicenseChecker.getInstance().setLicense(LicenseChecker.c.UGC, str, str2);
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_UGCKIT);
    }
}
