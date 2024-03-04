package com.appsflyer.internal;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.appsflyer.internal.components.network.http.exceptions.ParsingException;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public final class AFd1ySDK extends AFc1hSDK<Map<String, String>> {
    private String AFLogger$LogLevel;
    private String AFVersionDeclaration;
    @Nullable
    public AFa1wSDK afRDLog;
    private final AFc1xSDK afWarnLog;
    private String getLevel;
    private final boolean init;
    private final UUID onInstallConversionFailureNative;

    /* loaded from: classes.dex */
    public interface AFa1wSDK {
        void AFInAppEventParameterName(String str);

        void AFInAppEventType(Map<String, String> map);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFd1ySDK(@NonNull AFc1ySDK aFc1ySDK, @NonNull UUID uuid, @NonNull Uri uri) {
        super(AFc1lSDK.ONELINK, new AFc1lSDK[]{AFc1lSDK.RC_CDN}, aFc1ySDK, uuid.toString());
        String[] strArr;
        boolean z10 = false;
        z10 = false;
        z10 = false;
        this.afWarnLog = aFc1ySDK.AFKeystoreWrapper();
        this.onInstallConversionFailureNative = uuid;
        if (!TextUtils.isEmpty(uri.getHost()) && !TextUtils.isEmpty(uri.getPath())) {
            String[] strArr2 = {"onelink.me", "onelnk.com", "app.aflink.com"};
            boolean z11 = false;
            for (int i9 = 0; i9 < 3; i9++) {
                if (uri.getHost().contains(strArr2[i9])) {
                    z11 = true;
                }
            }
            if (AFa1uSDK.values != null) {
                StringBuilder sb2 = new StringBuilder("Validate if link ");
                sb2.append(uri);
                sb2.append(" belongs to custom domains: ");
                sb2.append(Arrays.asList(AFa1uSDK.values));
                AFLogger.afRDLog(sb2.toString());
                boolean z12 = false;
                for (String str : AFa1uSDK.values) {
                    if (uri.getHost().contains(str) && !TextUtils.isEmpty(str)) {
                        AFLogger.afDebugLog("Link matches custom domain: ".concat(String.valueOf(str)));
                        z11 = true;
                        z12 = true;
                    }
                }
                z10 = z12;
            }
            String[] split = uri.getPath().split(FileUtils.RES_PREFIX_STORAGE);
            if (z11 && split.length == 3) {
                this.AFVersionDeclaration = split[1];
                this.getLevel = split[2];
                this.AFLogger$LogLevel = uri.toString();
            }
        }
        this.init = z10;
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final void AFInAppEventParameterName() {
        ResponseNetwork responseNetwork;
        super.AFInAppEventParameterName();
        AFa1wSDK aFa1wSDK = this.afRDLog;
        if (aFa1wSDK != null) {
            if (this.values == AFc1qSDK.SUCCESS && (responseNetwork = this.afDebugLog) != null) {
                aFa1wSDK.AFInAppEventType((Map) responseNetwork.getBody());
                return;
            }
            Throwable afInfoLog = afInfoLog();
            if (afInfoLog instanceof ParsingException) {
                if (((ParsingException) afInfoLog).getRawResponse().isSuccessful()) {
                    aFa1wSDK.AFInAppEventParameterName("Can't parse one link data");
                    return;
                }
                String str = this.AFLogger$LogLevel;
                aFa1wSDK.AFInAppEventParameterName(str != null ? str : "Can't get OneLink data");
                return;
            }
            String str2 = this.AFLogger$LogLevel;
            aFa1wSDK.AFInAppEventParameterName(str2 != null ? str2 : "Can't get OneLink data");
        }
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final AFb1aSDK<Map<String, String>> AFKeystoreWrapper(@NonNull String str) {
        return this.afWarnLog.AFKeystoreWrapper(this.AFVersionDeclaration, this.getLevel, this.onInstallConversionFailureNative, str);
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

    public final boolean afWarnLog() {
        return this.init;
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final boolean getLevel() {
        return false;
    }

    public final boolean init() {
        return (TextUtils.isEmpty(this.AFVersionDeclaration) || TextUtils.isEmpty(this.getLevel) || this.AFVersionDeclaration.equals(PushConstants.EXTRA_APPLICATION_PENDING_INTENT)) ? false : true;
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final long values() {
        return 3000L;
    }
}
