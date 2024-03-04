package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes3.dex */
public class ChannelHelper {
    private static final Map<String, String> MARKET_NAME;
    private static final String MARKET_PACKAGE_HUAWEI = "com.huawei.appmarket";
    private static final String MARKET_PACKAGE_OPPO = "com.oppo.market";
    private static final String MARKET_PACKAGE_VIVO = "com.bbk.appstore";
    private static final String MARKET_PACKAGE_XIAOMI = "com.xiaomi.market";
    private static final String MARKET_PACKAGE_YINGYONGBAO = "com.tencent.android.qqdownloader";
    private static final String TAG = "ChannelHelper";
    private static String sChannel;

    static {
        HashMap hashMap = new HashMap();
        MARKET_NAME = hashMap;
        hashMap.put("huawei", MARKET_PACKAGE_HUAWEI);
        hashMap.put("xiaomi", MARKET_PACKAGE_XIAOMI);
        hashMap.put("oppo", MARKET_PACKAGE_OPPO);
        hashMap.put("vivo", MARKET_PACKAGE_VIVO);
    }

    public static String getApkChannel() {
        BaseApplication baseApplication = BaseApplication.getInstance();
        try {
            Bundle bundle = baseApplication.getPackageManager().getApplicationInfo(baseApplication.getPackageName(), 128).metaData;
            if (bundle != null) {
                String string = bundle.getString("UMENG_CHANNEL");
                return !TextUtils.isEmpty(string) ? string : "";
            }
            return "";
        } catch (PackageManager.NameNotFoundException e10) {
            LogUtils.e(TAG, "getCurrentChannel: ", e10);
            return "";
        }
    }

    public static String getCurrentChannel() {
        String channel = b8.e.g().c().getChannel();
        if (TextUtils.isEmpty(channel)) {
            if (!TextUtils.isEmpty(sChannel)) {
                return sChannel;
            }
            String apkChannel = getApkChannel();
            sChannel = apkChannel;
            return apkChannel;
        }
        return channel;
    }

    public static boolean goMarket(Context context) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context.getPackageName()));
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 131072);
        String currentChannel = getCurrentChannel();
        boolean isEmpty = TextUtils.isEmpty(currentChannel);
        String str = MARKET_PACKAGE_YINGYONGBAO;
        String str2 = isEmpty ? MARKET_PACKAGE_YINGYONGBAO : MARKET_NAME.get(currentChannel);
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (queryIntentActivities != null) {
            for (int i9 = 0; i9 < queryIntentActivities.size(); i9++) {
                ResolveInfo resolveInfo = queryIntentActivities.get(i9);
                if (Objects.equals(resolveInfo.activityInfo.packageName, str)) {
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    intent.setClassName(activityInfo.packageName, activityInfo.name);
                    return realGoActivity(context, intent);
                }
            }
        }
        return realGoActivity(context, intent);
    }

    private static boolean realGoActivity(Context context, Intent intent) {
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e10) {
            LogUtils.e(TAG, "realGoActivity: ", e10);
            return false;
        }
    }

    public static boolean shouldShowDeleteAccount() {
        return "oppo".equalsIgnoreCase(getApkChannel()) || "tencent".equalsIgnoreCase(getApkChannel());
    }

    public static boolean shouldShowLoginLicence() {
        return true;
    }
}
