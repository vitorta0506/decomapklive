package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
/* loaded from: classes.dex */
public final class AFc1fSDK extends AFc1hSDK<String> {
    @Nullable
    private final AFb1nSDK AFVersionDeclaration;
    @NonNull
    private final String afRDLog;

    public AFc1fSDK(@NonNull AFc1ySDK aFc1ySDK, @NonNull String str, @Nullable AFb1nSDK aFb1nSDK) {
        super(AFc1lSDK.IMPRESSIONS, new AFc1lSDK[]{AFc1lSDK.RC_CDN}, aFc1ySDK, str);
        this.afRDLog = str;
        this.AFVersionDeclaration = aFb1nSDK;
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final void AFInAppEventParameterName() {
        super.AFInAppEventParameterName();
        AFc1pSDK<Result> aFc1pSDK = this.afDebugLog;
        if (aFc1pSDK != 0) {
            int statusCode = aFc1pSDK.getStatusCode();
            if (statusCode == 200) {
                StringBuilder sb2 = new StringBuilder("Cross promotion impressions success: ");
                sb2.append(this.afRDLog);
                AFLogger.afInfoLog(sb2.toString(), false);
            } else if (statusCode != 301 && statusCode != 302) {
                StringBuilder sb3 = new StringBuilder("call to ");
                sb3.append(this.afRDLog);
                sb3.append(" failed: ");
                sb3.append(statusCode);
                AFLogger.afInfoLog(sb3.toString());
            } else {
                StringBuilder sb4 = new StringBuilder("Cross promotion redirection success: ");
                sb4.append(this.afRDLog);
                AFLogger.afInfoLog(sb4.toString(), false);
                String valueOf = aFc1pSDK.valueOf("Location");
                AFb1nSDK aFb1nSDK = this.AFVersionDeclaration;
                if (aFb1nSDK == null || valueOf == null) {
                    return;
                }
                aFb1nSDK.AFInAppEventType = valueOf;
                Context context = aFb1nSDK.values.get();
                if (context != null) {
                    try {
                        if (aFb1nSDK.AFInAppEventType != null) {
                            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(aFb1nSDK.AFInAppEventType)).setFlags(268435456));
                        }
                    } catch (Exception e10) {
                        AFLogger.afErrorLog("Failed to open cross promotion url, does OS have browser installed?".concat(String.valueOf(e10)), e10);
                    }
                }
            }
        }
    }

    @Override // com.appsflyer.internal.AFc1hSDK
    protected final AFb1aSDK<String> AFKeystoreWrapper(@NonNull String str) {
        return ((AFc1hSDK) this).AFLogger.valueOf(this.afRDLog);
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
}
