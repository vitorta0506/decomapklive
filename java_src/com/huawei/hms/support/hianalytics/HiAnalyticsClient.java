package com.huawei.hms.support.hianalytics;

import android.content.Context;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.utils.Util;
import java.util.Map;
/* loaded from: classes4.dex */
public class HiAnalyticsClient extends a {
    @Deprecated
    public static String reportEntry(Context context, String str) {
        return reportEntry(context, str, Util.getAppId(context), 0);
    }

    public static void reportExit(Context context, String str, String str2, int i9, int i10) {
        reportExit(context, str, str2, Util.getAppId(context), i9, i10, 0);
    }

    public static String reportEntry(Context context, String str, int i9) {
        return reportEntry(context, str, Util.getAppId(context), i9);
    }

    public static void reportExit(Context context, String str, String str2, int i9, int i10, int i11) {
        reportExit(context, str, str2, Util.getAppId(context), i9, i10, i11);
    }

    public static String reportEntry(Context context, String str, String str2, int i9) {
        String id2 = TransactionIdCreater.getId(str2, str);
        Map<String, String> mapForBi = a.getMapForBi(context, str);
        mapForBi.put("appid", str2);
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, id2);
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        mapForBi.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(i9)));
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_KIT_API_CALLED, mapForBi);
        return id2;
    }

    public static void reportExit(Context context, String str, String str2, String str3, int i9, int i10, int i11) {
        Map<String, String> mapForBi = a.getMapForBi(context, str);
        mapForBi.put("appid", str3);
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, str2);
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, String.valueOf(i9));
        mapForBi.put("result", String.valueOf(i10));
        mapForBi.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(i11)));
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_KIT_API_CALLED, mapForBi);
    }
}