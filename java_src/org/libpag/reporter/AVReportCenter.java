package org.libpag.reporter;

import android.util.Log;
import com.tencent.beacon.event.open.BeaconEvent;
import com.tencent.beacon.event.open.BeaconReport;
import com.tencent.beacon.event.open.EventResult;
import java.util.Map;
import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class AVReportCenter {
    private static final String TAG = "AVReportCenter-" + Integer.toHexString(AVReportCenter.class.hashCode());
    private static boolean beaconEnable = false;
    private static final AVReportCenter ourInstance = new AVReportCenter();
    private boolean enable = true;

    private AVReportCenter() {
        init();
    }

    public static AVReportCenter getInstance() {
        return ourInstance;
    }

    public void commit(String str, String str2, Map<String, String> map) {
        if (beaconEnable && this.enable && map != null) {
            try {
                EventResult report = BeaconReport.getInstance().report(BeaconEvent.builder().withAppKey(str2).withCode(str).withParams(map).build());
                if (report.isSuccess()) {
                    return;
                }
                Log.e(TAG, report.errMsg);
            } catch (Exception e10) {
                beaconEnable = false;
                String str3 = TAG;
                Log.e(str3, "report: " + e10);
            }
        }
    }

    public void init() {
        if (LibraryLoadUtils.getAppContext() != null) {
            try {
                Class.forName("com.tencent.beacon.event.open.BeaconReport");
                beaconEnable = true;
            } catch (ClassNotFoundException e10) {
                String str = TAG;
                Log.e(str, "init: " + e10);
            }
        }
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setEnable(boolean z10) {
        this.enable = z10;
    }
}
