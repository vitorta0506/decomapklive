package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.appsflyer.internal.components.network.http.exceptions.ParsingException;
import com.appsflyer.share.LinkGenerator;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public final class AFc1gSDK extends AFc1hSDK<String> {
    private final String AFLogger$LogLevel;
    @Nullable
    private final LinkGenerator.AFa1xSDK AFVersionDeclaration;
    private final AFb1cSDK afRDLog;
    @Nullable
    private final String afWarnLog;
    private final UUID getLevel;
    private final Map<String, String> init;

    public AFc1gSDK(@NonNull AFc1ySDK aFc1ySDK, @NonNull UUID uuid, @NonNull String str, @NonNull Map<String, String> map, @Nullable String str2, @Nullable LinkGenerator.AFa1xSDK aFa1xSDK) {
        super(AFc1lSDK.ONELINK, new AFc1lSDK[]{AFc1lSDK.RC_CDN}, aFc1ySDK, uuid.toString());
        this.afRDLog = aFc1ySDK.valueOf();
        this.getLevel = uuid;
        this.AFLogger$LogLevel = str;
        this.init = new HashMap(map);
        this.AFVersionDeclaration = aFa1xSDK;
        this.afWarnLog = str2;
    }

    private String init() {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_DOMAIN);
        String packageName = this.afRDLog.AFKeystoreWrapper.values.getPackageName();
        LinkGenerator addParameters = new LinkGenerator("af_app_invites").setBaseURL(this.AFLogger$LogLevel, string, packageName).addParameter("af_siteid", packageName).addParameters(this.init);
        AFa1aSDK.values();
        String AFInAppEventParameterName = AFa1aSDK.AFInAppEventParameterName();
        if (AFInAppEventParameterName != null) {
            addParameters.setReferrerCustomerId(AFInAppEventParameterName);
        }
        return addParameters.generateLink();
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final void AFInAppEventParameterName() {
        ResponseNetwork responseNetwork;
        super.AFInAppEventParameterName();
        LinkGenerator.AFa1xSDK aFa1xSDK = this.AFVersionDeclaration;
        if (aFa1xSDK != null) {
            if (this.values == AFc1qSDK.SUCCESS && (responseNetwork = this.afDebugLog) != null) {
                aFa1xSDK.onResponse((String) responseNetwork.getBody());
                return;
            }
            Throwable afInfoLog = afInfoLog();
            if (afInfoLog instanceof ParsingException) {
                if (((ParsingException) afInfoLog).getRawResponse().isSuccessful()) {
                    aFa1xSDK.onResponseError("Can't parse one link data");
                    return;
                } else {
                    aFa1xSDK.onResponse(init());
                    return;
                }
            }
            aFa1xSDK.onResponse(init());
        }
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final AFb1aSDK<String> AFKeystoreWrapper(@NonNull String str) {
        return ((AFc1hSDK) this).AFLogger.AFKeystoreWrapper(this.AFLogger$LogLevel, this.init, this.afWarnLog, this.getLevel, str);
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    @Nullable
    protected final AppsFlyerRequestListener afErrorLog() {
        return null;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final boolean afRDLog() {
        return false;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final boolean getLevel() {
        return false;
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final long values() {
        return 3000L;
    }
}
