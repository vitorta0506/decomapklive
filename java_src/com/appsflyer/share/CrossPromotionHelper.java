package com.appsflyer.share;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.AFa1aSDK;
import com.appsflyer.internal.AFb1nSDK;
import com.appsflyer.internal.AFc1fSDK;
import com.appsflyer.internal.AFc1mSDK;
import com.appsflyer.internal.AFc1ySDK;
import com.appsflyer.internal.AFe1gSDK;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class CrossPromotionHelper {
    private static String AFInAppEventType = "https://%simpression.%s";

    @NonNull
    private static LinkGenerator AFInAppEventParameterName(@NonNull Context context, String str, String str2, Map<String, String> map, String str3) {
        LinkGenerator linkGenerator = new LinkGenerator("af_cross_promotion");
        linkGenerator.AFInAppEventParameterName = str3;
        linkGenerator.valueOf = str;
        linkGenerator.addParameter("af_siteid", context.getPackageName());
        if (str2 != null) {
            linkGenerator.setCampaign(str2);
        }
        if (map != null) {
            linkGenerator.addParameters(map);
        }
        String string = AppsFlyerProperties.getInstance().getString("advertiserId");
        if (string != null) {
            linkGenerator.addParameter("advertising_id", string);
        }
        return linkGenerator;
    }

    public static void logAndOpenStore(@NonNull Context context, String str, String str2) {
        logAndOpenStore(context, str, str2, null);
    }

    public static void logCrossPromoteImpression(@NonNull Context context, String str, String str2) {
        logCrossPromoteImpression(context, str, str2, null);
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            char c10 = 65535;
            int hashCode = key.hashCode();
            if (hashCode != 96801) {
                if (hashCode == 120623625 && key.equals("impression")) {
                    c10 = 1;
                }
            } else if (key.equals(PushConstants.EXTRA_APPLICATION_PENDING_INTENT)) {
                c10 = 0;
            }
            if (c10 == 0) {
                AFe1gSDK.values = value;
            } else if (c10 == 1) {
                AFInAppEventType = value;
            }
        }
    }

    private static void valueOf(@NonNull String str, @NonNull Context context, @Nullable AFb1nSDK aFb1nSDK) {
        AFa1aSDK values = AFa1aSDK.values();
        values.AFInAppEventParameterName(context);
        AFc1ySDK AFInAppEventType2 = values.AFInAppEventType();
        AFc1fSDK aFc1fSDK = new AFc1fSDK(AFInAppEventType2, str, aFb1nSDK);
        AFc1mSDK afErrorLog = AFInAppEventType2.afErrorLog();
        afErrorLog.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFc1fSDK));
    }

    public static void logAndOpenStore(@NonNull Context context, String str, String str2, Map<String, String> map) {
        LinkGenerator AFInAppEventParameterName = AFInAppEventParameterName(context, str, str2, map, String.format(AFe1gSDK.values, AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, track And Open Store is disabled", true);
        } else if (AppsFlyerLib.getInstance().isStopped()) {
            AFLogger.afInfoLog("SDK is stopped, track And Open Store is disabled", true);
        } else {
            if (map == null) {
                map = new HashMap<>();
            }
            map.put("af_campaign", str2);
            AppsFlyerLib.getInstance().logEvent(context, "af_cross_promotion", map);
            valueOf(AFInAppEventParameterName.generateLink(), context, new AFb1nSDK(context));
        }
    }

    public static void logCrossPromoteImpression(@NonNull Context context, String str, String str2, Map<String, String> map) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, Promote Impression is disabled", true);
        } else if (AppsFlyerLib.getInstance().isStopped()) {
            AFLogger.afInfoLog("SDK is stopped, Promote Impression is disabled", true);
        } else {
            valueOf(AFInAppEventParameterName(context, str, str2, map, String.format(AFInAppEventType, AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName())).generateLink(), context, null);
        }
    }
}
