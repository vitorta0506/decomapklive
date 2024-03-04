package org.libpag.reporter;

import java.util.HashMap;
/* loaded from: classes7.dex */
public class PAGReporter {
    private static final String APP_KEY = "0DOU0WKP4I47KH3I";
    private static final String REPORT_EVET = "pag_monitor";
    private static PAGReporterListener mListener;

    /* loaded from: classes7.dex */
    public interface PAGReporterListener {
        void onReport(String str, String str2, HashMap<String, String> hashMap);
    }

    private static void OnReportData(HashMap<String, String> hashMap) {
        if (hashMap == null || hashMap.isEmpty()) {
            return;
        }
        PAGReporterListener pAGReporterListener = mListener;
        if (pAGReporterListener != null) {
            pAGReporterListener.onReport(REPORT_EVET, APP_KEY, hashMap);
        } else {
            AVReportCenter.getInstance().commit(REPORT_EVET, APP_KEY, hashMap);
        }
    }

    public static void SetReportListener(PAGReporterListener pAGReporterListener) {
        mListener = pAGReporterListener;
    }
}
