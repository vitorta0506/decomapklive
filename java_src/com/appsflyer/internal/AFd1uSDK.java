package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.internal.components.network.http.exceptions.HttpException;
import java.io.InterruptedIOException;
/* loaded from: classes.dex */
public final class AFd1uSDK extends AFc1nSDK<AFd1pSDK> {
    private final AFd1rSDK AFLogger;
    private final AFc1xSDK AFLogger$LogLevel;
    private final AFd1qSDK AFVersionDeclaration;
    @Nullable
    public final AFd1oSDK afDebugLog;
    public AFb1qSDK afErrorLog;
    @Nullable
    public AFd1pSDK afInfoLog;
    private final AFb1cSDK afRDLog;
    private final AFd1mSDK afWarnLog;
    private final AFd1lSDK getLevel;
    private final String init;

    public AFd1uSDK(@NonNull AFd1rSDK aFd1rSDK, @NonNull AFb1cSDK aFb1cSDK, @NonNull AFd1lSDK aFd1lSDK, @NonNull AFd1qSDK aFd1qSDK, @NonNull AFc1xSDK aFc1xSDK, @NonNull AFd1mSDK aFd1mSDK, @NonNull String str, @Nullable AFd1oSDK aFd1oSDK) {
        super(AFc1lSDK.RC_CDN, new AFc1lSDK[0], "UpdateRemoteConfiguration");
        this.afInfoLog = null;
        this.AFLogger = aFd1rSDK;
        this.afRDLog = aFb1cSDK;
        this.getLevel = aFd1lSDK;
        this.AFVersionDeclaration = aFd1qSDK;
        this.AFLogger$LogLevel = aFc1xSDK;
        this.afWarnLog = aFd1mSDK;
        this.init = str;
        this.afDebugLog = aFd1oSDK;
    }

    private void AFInAppEventParameterName(String str, long j10, AFe1rSDK aFe1rSDK, @Nullable String str2, @Nullable AFc1pSDK<AFb1sSDK> aFc1pSDK) {
        values(str, j10, aFc1pSDK, aFc1pSDK != null ? aFc1pSDK.getBody() : null, aFe1rSDK, str2 != null ? str2 : null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.appsflyer.internal.AFd1pSDK afErrorLog() throws java.lang.InterruptedException, java.io.InterruptedIOException {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1uSDK.afErrorLog():com.appsflyer.internal.AFd1pSDK");
    }

    private void values(String str, long j10, @Nullable AFc1pSDK<?> aFc1pSDK, AFb1sSDK aFb1sSDK, AFe1rSDK aFe1rSDK, @Nullable String str2, @Nullable Throwable th2) {
        long j11;
        int i9;
        Throwable th3;
        long j12;
        if (aFc1pSDK != null) {
            j11 = aFc1pSDK.values.AFInAppEventParameterName;
            i9 = aFc1pSDK.getStatusCode();
        } else {
            j11 = 0;
            i9 = 0;
        }
        if (th2 instanceof HttpException) {
            th3 = th2.getCause();
            j12 = ((HttpException) th2).getMetrics().AFInAppEventParameterName;
        } else {
            th3 = th2;
            j12 = j11;
        }
        this.afErrorLog = new AFb1qSDK(aFb1sSDK != null ? aFb1sSDK.AFInAppEventParameterName : null, str, j12, System.currentTimeMillis() - j10, i9, aFe1rSDK, str2, th3);
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final boolean AFInAppEventType() {
        return false;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    @NonNull
    public final AFc1qSDK AFKeystoreWrapper() throws Exception {
        try {
            AFd1pSDK afErrorLog = afErrorLog();
            this.afInfoLog = afErrorLog;
            if (afErrorLog == AFd1pSDK.FAILURE) {
                return AFc1qSDK.FAILURE;
            }
            return AFc1qSDK.SUCCESS;
        } catch (InterruptedIOException | InterruptedException unused) {
            this.afInfoLog = AFd1pSDK.FAILURE;
            return AFc1qSDK.TIMEOUT;
        }
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final long values() {
        return 1500L;
    }
}
