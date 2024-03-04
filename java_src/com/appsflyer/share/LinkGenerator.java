package com.appsflyer.share;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.internal.AFa1aSDK;
import com.appsflyer.internal.AFb1sSDK;
import com.appsflyer.internal.AFc1gSDK;
import com.appsflyer.internal.AFc1mSDK;
import com.appsflyer.internal.AFc1ySDK;
import com.appsflyer.internal.AFe1gSDK;
import com.huawei.hms.opendevice.c;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import kotlin.text.Typography;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class LinkGenerator {
    String AFInAppEventParameterName;
    private final String AFInAppEventType;
    private String AFKeystoreWrapper;
    private String AFLogger;
    private String AFLogger$LogLevel;
    private String afDebugLog;
    private String afErrorLog;
    private String afInfoLog;
    private String afRDLog;
    private String afWarnLog;
    private final Map<String, String> getLevel = new HashMap();
    String valueOf;
    private String values;

    /* loaded from: classes.dex */
    public interface AFa1xSDK {
        @WorkerThread
        void onResponse(String str);

        @WorkerThread
        void onResponseError(String str);
    }

    public LinkGenerator(String str) {
        this.AFInAppEventType = str;
    }

    private Map<String, String> AFKeystoreWrapper() {
        HashMap hashMap = new HashMap();
        hashMap.put("pid", this.AFInAppEventType);
        String str = this.afErrorLog;
        if (str != null) {
            hashMap.put("af_referrer_uid", str);
        }
        String str2 = this.AFKeystoreWrapper;
        if (str2 != null) {
            hashMap.put(AFInAppEventParameterName.AF_CHANNEL, str2);
        }
        String str3 = this.AFLogger;
        if (str3 != null) {
            hashMap.put("af_referrer_customer_id", str3);
        }
        String str4 = this.values;
        if (str4 != null) {
            hashMap.put(c.f27627a, str4);
        }
        String str5 = this.afInfoLog;
        if (str5 != null) {
            hashMap.put("af_referrer_name", str5);
        }
        String str6 = this.afRDLog;
        if (str6 != null) {
            hashMap.put("af_referrer_image_url", str6);
        }
        if (this.afWarnLog != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.afWarnLog);
            String str7 = this.afDebugLog;
            if (str7 != null) {
                this.afDebugLog = str7.replaceFirst("^[/]", "");
                sb2.append(this.afWarnLog.endsWith(FileUtils.RES_PREFIX_STORAGE) ? "" : FileUtils.RES_PREFIX_STORAGE);
                sb2.append(this.afDebugLog);
            }
            hashMap.put("af_dp", sb2.toString());
        }
        for (Map.Entry<String, String> entry : this.getLevel.entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue());
        }
        return AFb1sSDK.AFInAppEventType(hashMap);
    }

    private static String valueOf(Map<String, String> map) {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb2.length() == 0) {
                sb2.append('?');
            } else {
                sb2.append(Typography.amp);
            }
            sb2.append(entry.getKey());
            sb2.append('=');
            sb2.append(entry.getValue());
        }
        return sb2.toString();
    }

    public LinkGenerator addParameter(String str, String str2) {
        this.getLevel.put(str, str2);
        return this;
    }

    public LinkGenerator addParameters(Map<String, String> map) {
        if (map != null) {
            this.getLevel.putAll(map);
        }
        return this;
    }

    public String generateLink() {
        StringBuilder sb2 = new StringBuilder();
        String str = this.AFInAppEventParameterName;
        if (str != null && str.startsWith("http")) {
            sb2.append(this.AFInAppEventParameterName);
        } else {
            sb2.append(String.format(AFe1gSDK.values, AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
        }
        if (this.valueOf != null) {
            sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb2.append(this.valueOf);
        }
        sb2.append(valueOf(AFKeystoreWrapper()));
        return sb2.toString();
    }

    public String getBrandDomain() {
        return this.AFLogger$LogLevel;
    }

    public String getCampaign() {
        return this.values;
    }

    public String getChannel() {
        return this.AFKeystoreWrapper;
    }

    public String getMediaSource() {
        return this.AFInAppEventType;
    }

    public Map<String, String> getUserParams() {
        return new HashMap(this.getLevel);
    }

    public LinkGenerator setBaseDeeplink(String str) {
        this.afWarnLog = str;
        return this;
    }

    public LinkGenerator setBaseURL(String str, String str2, String str3) {
        if (str != null && str.length() > 0) {
            this.AFInAppEventParameterName = String.format("https://%s/%s", (str2 == null || str2.length() < 5) ? "go.onelink.me" : "go.onelink.me", str);
        } else {
            this.AFInAppEventParameterName = String.format("https://%s/%s", String.format("%sapp.%s", AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()), str3);
        }
        return this;
    }

    public LinkGenerator setBrandDomain(String str) {
        this.AFLogger$LogLevel = str;
        return this;
    }

    public LinkGenerator setCampaign(String str) {
        this.values = str;
        return this;
    }

    public LinkGenerator setChannel(String str) {
        this.AFKeystoreWrapper = str;
        return this;
    }

    public LinkGenerator setDeeplinkPath(String str) {
        this.afDebugLog = str;
        return this;
    }

    public LinkGenerator setReferrerCustomerId(String str) {
        this.AFLogger = str;
        return this;
    }

    public LinkGenerator setReferrerImageURL(String str) {
        this.afRDLog = str;
        return this;
    }

    public LinkGenerator setReferrerName(String str) {
        this.afInfoLog = str;
        return this;
    }

    public LinkGenerator setReferrerUID(String str) {
        this.afErrorLog = str;
        return this;
    }

    public void generateLink(Context context, AFa1xSDK aFa1xSDK) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID);
        String str = this.AFLogger$LogLevel;
        Map<String, String> AFKeystoreWrapper = AFKeystoreWrapper();
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, generate User Invite Link is disabled", true);
            return;
        }
        AFa1aSDK.values().AFInAppEventParameterName(context);
        AFc1ySDK AFInAppEventType = AFa1aSDK.values().AFInAppEventType();
        AFc1gSDK aFc1gSDK = new AFc1gSDK(AFInAppEventType, UUID.randomUUID(), string, AFKeystoreWrapper, str, aFa1xSDK);
        AFc1mSDK afErrorLog = AFInAppEventType.afErrorLog();
        afErrorLog.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFc1gSDK));
    }

    @Deprecated
    public void generateLink(Context context, final CreateOneLinkHttpTask.ResponseListener responseListener) {
        generateLink(context, new AFa1xSDK() { // from class: com.appsflyer.share.LinkGenerator.4
            @Override // com.appsflyer.share.LinkGenerator.AFa1xSDK
            public final void onResponse(String str) {
                CreateOneLinkHttpTask.ResponseListener.this.onResponse(str);
            }

            @Override // com.appsflyer.share.LinkGenerator.AFa1xSDK
            public final void onResponseError(String str) {
                CreateOneLinkHttpTask.ResponseListener.this.onResponseError(str);
            }
        });
    }
}
