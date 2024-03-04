package com.huawei.hms.support.hianalytics;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.common.internal.RequestHeader;
import com.huawei.hms.common.internal.ResponseHeader;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Util;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class HiAnalyticsUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f27818a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static HiAnalyticsUtil f27819b;

    /* renamed from: c  reason: collision with root package name */
    private static HiAnalyticsUtils f27820c;

    private String a(Context context, String str) {
        String packageName = context.getPackageName();
        return "01|" + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + packageName + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Util.getAppId(context) + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + 60500300 + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + str;
    }

    public static HiAnalyticsUtil getInstance() {
        HiAnalyticsUtil hiAnalyticsUtil;
        synchronized (f27818a) {
            if (f27819b == null) {
                f27819b = new HiAnalyticsUtil();
                f27820c = HiAnalyticsUtils.getInstance();
            }
            hiAnalyticsUtil = f27819b;
        }
        return hiAnalyticsUtil;
    }

    public static Map<String, String> getMapFromForegroundResponseHeader(ResponseHeader responseHeader) {
        HashMap hashMap = new HashMap();
        if (responseHeader == null) {
            return hashMap;
        }
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, responseHeader.getTransactionId());
        hashMap.put("appid", responseHeader.getActualAppID());
        hashMap.put("service", responseHeader.getSrvName());
        hashMap.put("apiName", responseHeader.getApiName());
        hashMap.put("package", responseHeader.getPkgName());
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, String.valueOf(responseHeader.getStatusCode()));
        hashMap.put("result", String.valueOf(responseHeader.getErrorCode()));
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_ERRORREASON, responseHeader.getErrorReason());
        hashMap.put("callTime", String.valueOf(System.currentTimeMillis()));
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "6.5.0.300");
        return hashMap;
    }

    public static Map<String, String> getMapFromRequestHeader(ResponseHeader responseHeader) {
        HashMap hashMap = new HashMap();
        if (responseHeader == null) {
            return hashMap;
        }
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, responseHeader.getTransactionId());
        hashMap.put("appid", responseHeader.getActualAppID());
        hashMap.put("service", responseHeader.getSrvName());
        String apiName = responseHeader.getApiName();
        if (!TextUtils.isEmpty(apiName)) {
            String[] split = apiName.split("\\.");
            if (split.length >= 2) {
                hashMap.put("apiName", split[1]);
            }
        }
        hashMap.put("package", responseHeader.getPkgName());
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, String.valueOf(responseHeader.getStatusCode()));
        hashMap.put("result", String.valueOf(responseHeader.getErrorCode()));
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_ERRORREASON, responseHeader.getErrorReason());
        hashMap.put("callTime", String.valueOf(System.currentTimeMillis()));
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "6.5.0.300");
        return hashMap;
    }

    public static String versionCodeToName(String str) {
        return HiAnalyticsUtils.versionCodeToName(str);
    }

    @Deprecated
    public Map<String, String> getMapForBi(Context context, String str) {
        HashMap hashMap = new HashMap();
        String[] split = str.split("\\.");
        if (split.length >= 2) {
            String str2 = split[0];
            String str3 = split[1];
            String appId = Util.getAppId(context);
            hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, TransactionIdCreater.getId(appId, str));
            hashMap.put("appid", appId);
            hashMap.put("service", str2);
            hashMap.put("apiName", str3);
            hashMap.put("package", context.getPackageName());
            hashMap.put("version", "6.5.0.300");
            hashMap.put("callTime", String.valueOf(System.currentTimeMillis()));
        }
        return hashMap;
    }

    public Map<String, String> getMapFromForegroundRequestHeader(RequestHeader requestHeader) {
        HashMap hashMap = new HashMap();
        if (requestHeader == null) {
            return hashMap;
        }
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, requestHeader.getTransactionId());
        hashMap.put("appid", requestHeader.getActualAppID());
        hashMap.put("service", requestHeader.getSrvName());
        hashMap.put("apiName", requestHeader.getApiName());
        hashMap.put("package", requestHeader.getPkgName());
        hashMap.put("callTime", String.valueOf(System.currentTimeMillis()));
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "6.5.0.300");
        return hashMap;
    }

    @Deprecated
    public boolean hasError() {
        if (SystemUtils.isChinaROM()) {
            return false;
        }
        HMSLog.i("HiAnalyticsUtil", "not ChinaROM ");
        return true;
    }

    public void onBuoyEvent(Context context, String str, String str2) {
        f27820c.onBuoyEvent(context, str, str2);
    }

    public void onEvent(Context context, String str, Map<String, String> map) {
        f27820c.onEvent(context, str, map);
    }

    public void onEvent2(Context context, String str, String str2) {
        f27820c.onEvent2(context, str, str2);
    }

    public void onNewEvent(Context context, String str, Map map) {
        f27820c.onNewEvent(context, str, map);
    }

    public void onEvent(Context context, String str, String str2) {
        if (context != null) {
            onEvent2(context, str, a(context, str2));
        }
    }

    public boolean hasError(Context context) {
        return f27820c.hasError(context);
    }

    public Map<String, String> getMapFromRequestHeader(RequestHeader requestHeader) {
        HashMap hashMap = new HashMap();
        if (requestHeader == null) {
            return hashMap;
        }
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, requestHeader.getTransactionId());
        hashMap.put("appid", requestHeader.getActualAppID());
        hashMap.put("service", requestHeader.getSrvName());
        String apiName = requestHeader.getApiName();
        if (!TextUtils.isEmpty(apiName)) {
            String[] split = apiName.split("\\.");
            if (split.length >= 2) {
                hashMap.put("apiName", split[1]);
            }
        }
        hashMap.put("package", requestHeader.getPkgName());
        hashMap.put("callTime", String.valueOf(System.currentTimeMillis()));
        hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "6.5.0.300");
        return hashMap;
    }
}
