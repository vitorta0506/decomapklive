package com.appsflyer.internal;

import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.attribution.RequestError;
import com.appsflyer.internal.components.network.http.exceptions.ParsingException;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class AFc1hSDK<Result> extends AFc1nSDK<AFc1pSDK<Result>> {
    protected final AFc1xSDK AFLogger;
    @Nullable
    public AFc1pSDK<Result> afDebugLog;
    public final AFd1lSDK afErrorLog;
    protected final AFb1pSDK afInfoLog;
    private AFa1lSDK afRDLog;
    @Nullable
    private String init;

    private AFc1hSDK(@NonNull AFc1lSDK aFc1lSDK, @NonNull AFc1lSDK[] aFc1lSDKArr, @NonNull AFc1xSDK aFc1xSDK, @NonNull AFd1lSDK aFd1lSDK, @NonNull AFb1pSDK aFb1pSDK, @NonNull AFa1lSDK aFa1lSDK, @Nullable String str) {
        super(aFc1lSDK, aFc1lSDKArr, str);
        this.AFLogger = aFc1xSDK;
        this.afErrorLog = aFd1lSDK;
        this.afInfoLog = aFb1pSDK;
        this.afRDLog = aFa1lSDK;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    @CallSuper
    public void AFInAppEventParameterName() {
        String str;
        if (this.values == AFc1qSDK.SUCCESS) {
            String str2 = this.init;
            if (str2 != null) {
                this.afRDLog.valueOf(str2);
            }
        } else if (AFInAppEventType() || (str = this.init) == null) {
        } else {
            this.afRDLog.valueOf(str);
        }
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public boolean AFInAppEventType() {
        if (afInfoLog() instanceof AFc1jSDK) {
            return false;
        }
        if (this.values == AFc1qSDK.TIMEOUT) {
            return true;
        }
        Throwable afInfoLog = afInfoLog();
        return (afInfoLog instanceof IOException) && !(afInfoLog instanceof ParsingException);
    }

    @WorkerThread
    protected abstract AFb1aSDK<Result> AFKeystoreWrapper(@NonNull String str);

    @Override // com.appsflyer.internal.AFc1nSDK
    @NonNull
    @CallSuper
    public AFc1qSDK AFKeystoreWrapper() throws Exception {
        if (getLevel() && this.afErrorLog.values()) {
            AppsFlyerRequestListener afErrorLog = afErrorLog();
            if (afErrorLog != null) {
                afErrorLog.onError(RequestError.STOP_TRACKING, AFb1fSDK.valueOf);
            }
            throw new AFc1jSDK();
        }
        String str = this.afErrorLog.AFInAppEventType;
        if (str != null && !str.trim().isEmpty()) {
            AFb1aSDK<Result> AFKeystoreWrapper = AFKeystoreWrapper(str);
            if (afRDLog()) {
                AFKeystoreWrapper(AFKeystoreWrapper.AFKeystoreWrapper);
            }
            AFc1pSDK<Result> AFKeystoreWrapper2 = AFKeystoreWrapper.AFKeystoreWrapper();
            this.afDebugLog = AFKeystoreWrapper2;
            this.afInfoLog.values(AFKeystoreWrapper.AFKeystoreWrapper.AFInAppEventType, AFKeystoreWrapper2.getStatusCode(), AFKeystoreWrapper2.getBody().toString());
            AppsFlyerRequestListener afErrorLog2 = afErrorLog();
            if (afErrorLog2 != null) {
                if (AFKeystoreWrapper2.isSuccessful()) {
                    afErrorLog2.onSuccess();
                } else {
                    int i9 = RequestError.RESPONSE_CODE_FAILURE;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(AFb1fSDK.values);
                    sb2.append(" ");
                    sb2.append(AFKeystoreWrapper2.getStatusCode());
                    afErrorLog2.onError(i9, sb2.toString());
                }
            }
            if (AFKeystoreWrapper2.isSuccessful()) {
                return AFc1qSDK.SUCCESS;
            }
            return AFc1qSDK.FAILURE;
        }
        AppsFlyerRequestListener afErrorLog3 = afErrorLog();
        if (afErrorLog3 != null) {
            afErrorLog3.onError(RequestError.NO_DEV_KEY, AFb1fSDK.AFInAppEventType);
        }
        throw new AFc1kSDK();
    }

    @Nullable
    protected abstract AppsFlyerRequestListener afErrorLog();

    protected abstract boolean afRDLog();

    protected boolean getLevel() {
        return true;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final void valueOf() {
        String str;
        super.valueOf();
        if (!afRDLog() || (str = this.afErrorLog.AFInAppEventType) == null || str.trim().isEmpty()) {
            return;
        }
        AFKeystoreWrapper(AFKeystoreWrapper(str).AFKeystoreWrapper);
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public long values() {
        return 60000L;
    }

    public AFc1hSDK(@NonNull AFc1lSDK aFc1lSDK, @NonNull AFc1lSDK[] aFc1lSDKArr, @NonNull AFc1ySDK aFc1ySDK, @Nullable String str) {
        this(aFc1lSDK, aFc1lSDKArr, aFc1ySDK.AFKeystoreWrapper(), aFc1ySDK.AFLogger$LogLevel(), aFc1ySDK.afWarnLog(), aFc1ySDK.init(), str);
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    @CallSuper
    public final void valueOf(Throwable th2) {
        AFLogger.afErrorLog("Error while sending request to server: ".concat(String.valueOf(th2)), th2, true);
        AppsFlyerRequestListener afErrorLog = afErrorLog();
        if (afErrorLog != null) {
            String message = th2.getMessage();
            int i9 = RequestError.NETWORK_FAILURE;
            if (message == null) {
                message = "";
            }
            afErrorLog.onError(i9, message);
        }
    }

    public AFc1hSDK(@NonNull AFc1lSDK aFc1lSDK, @NonNull AFc1lSDK[] aFc1lSDKArr, @NonNull AFc1ySDK aFc1ySDK, @Nullable String str, @Nullable String str2) {
        this(aFc1lSDK, aFc1lSDKArr, aFc1ySDK.AFKeystoreWrapper(), aFc1ySDK.AFLogger$LogLevel(), aFc1ySDK.afWarnLog(), aFc1ySDK.init(), str);
        this.init = str2;
    }

    @WorkerThread
    private void AFKeystoreWrapper(AFb1wSDK aFb1wSDK) {
        String str = this.init;
        this.init = this.afRDLog.AFInAppEventParameterName(new AFa1fSDK(aFb1wSDK.AFInAppEventType, aFb1wSDK.AFInAppEventType(), "6.9.0", this.AFInAppEventParameterName));
        if (str != null) {
            this.afRDLog.valueOf(str);
        }
    }
}
