package com.appsflyer.internal;

import androidx.annotation.NonNull;
import com.appsflyer.deeplink.DeepLinkResult;
/* loaded from: classes.dex */
public final class AFc1cSDK extends AFc1nSDK<DeepLinkResult> {
    private final AFb1oSDK afDebugLog;
    private DeepLinkResult afInfoLog;

    /* renamed from: com.appsflyer.internal.AFc1cSDK$5  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] AFInAppEventParameterName;

        static {
            int[] iArr = new int[DeepLinkResult.Status.values().length];
            AFInAppEventParameterName = iArr;
            try {
                iArr[DeepLinkResult.Status.FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                AFInAppEventParameterName[DeepLinkResult.Status.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                AFInAppEventParameterName[DeepLinkResult.Status.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public AFc1cSDK(@NonNull AFb1oSDK aFb1oSDK) {
        super(AFc1lSDK.DLSDK, new AFc1lSDK[]{AFc1lSDK.RC_CDN}, "DdlSdk");
        this.afDebugLog = aFb1oSDK;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final boolean AFInAppEventType() {
        return false;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    @NonNull
    public final AFc1qSDK AFKeystoreWrapper() throws Exception {
        DeepLinkResult afRDLog = this.afDebugLog.afRDLog();
        this.afInfoLog = afRDLog;
        if (AnonymousClass5.AFInAppEventParameterName[afRDLog.getStatus().ordinal()] != 1) {
            if (this.afInfoLog.getError() == DeepLinkResult.Error.TIMEOUT) {
                return AFc1qSDK.TIMEOUT;
            }
            return AFc1qSDK.FAILURE;
        }
        return AFc1qSDK.SUCCESS;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final long values() {
        return 90000L;
    }
}
