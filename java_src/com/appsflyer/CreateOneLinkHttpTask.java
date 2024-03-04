package com.appsflyer;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.appsflyer.internal.AFb1cSDK;
import com.appsflyer.internal.AFb1qSDK;
import com.appsflyer.internal.AFc1mSDK;
import com.appsflyer.internal.AFc1nSDK;
import com.appsflyer.internal.AFc1oSDK;
import com.appsflyer.internal.AFc1qSDK;
import com.appsflyer.internal.AFc1xSDK;
import com.appsflyer.internal.AFd1lSDK;
import com.appsflyer.internal.AFd1mSDK;
import com.appsflyer.internal.AFd1oSDK;
import com.appsflyer.internal.AFd1pSDK;
import com.appsflyer.internal.AFd1qSDK;
import com.appsflyer.internal.AFd1rSDK;
import com.appsflyer.internal.AFd1uSDK;
@Deprecated
/* loaded from: classes.dex */
public final class CreateOneLinkHttpTask implements AFc1oSDK {
    private final AFd1rSDK AFInAppEventParameterName;
    private final AFb1cSDK AFInAppEventType;
    private final Object AFKeystoreWrapper;
    private final AFd1mSDK AFLogger;
    private final AFc1mSDK afErrorLog;
    @Nullable
    private AFb1qSDK afInfoLog;
    private final AFc1xSDK afRDLog;
    private final AFd1lSDK valueOf;
    private final AFd1qSDK values;

    @Deprecated
    /* loaded from: classes.dex */
    public interface ResponseListener {
        @WorkerThread
        void onResponse(String str);

        @WorkerThread
        void onResponseError(String str);
    }

    public CreateOneLinkHttpTask() {
    }

    public CreateOneLinkHttpTask(AFd1rSDK aFd1rSDK, AFb1cSDK aFb1cSDK, AFd1lSDK aFd1lSDK, AFd1qSDK aFd1qSDK, AFc1xSDK aFc1xSDK, AFd1mSDK aFd1mSDK, AFc1mSDK aFc1mSDK) {
        this.AFKeystoreWrapper = new Object();
        this.AFInAppEventParameterName = aFd1rSDK;
        this.AFInAppEventType = aFb1cSDK;
        this.valueOf = aFd1lSDK;
        this.values = aFd1qSDK;
        this.afRDLog = aFc1xSDK;
        this.AFLogger = aFd1mSDK;
        this.afErrorLog = aFc1mSDK;
        aFc1mSDK.AFInAppEventParameterName.add(this);
    }

    @Override // com.appsflyer.internal.AFc1oSDK
    public final void AFInAppEventParameterName(AFc1nSDK<?> aFc1nSDK) {
    }

    @Override // com.appsflyer.internal.AFc1oSDK
    public final void AFKeystoreWrapper(AFc1nSDK<?> aFc1nSDK) {
        if (aFc1nSDK instanceof AFd1uSDK) {
            synchronized (this.AFKeystoreWrapper) {
                this.afInfoLog = null;
            }
            AFd1pSDK aFd1pSDK = AFd1pSDK.FAILURE;
            synchronized (this.AFKeystoreWrapper) {
            }
        }
    }

    @Override // com.appsflyer.internal.AFc1oSDK
    public final void valueOf(AFc1nSDK<?> aFc1nSDK, AFc1qSDK aFc1qSDK) {
        if (aFc1nSDK instanceof AFd1uSDK) {
            AFd1uSDK aFd1uSDK = (AFd1uSDK) aFc1nSDK;
            AFd1pSDK aFd1pSDK = aFd1uSDK.afInfoLog;
            if (aFd1pSDK == null) {
                AFLogger.afWarnLog("CFG: update RC returned null result, something went wrong!");
                aFd1pSDK = AFd1pSDK.FAILURE;
            }
            if (aFd1pSDK != AFd1pSDK.USE_CACHED) {
                AFb1qSDK aFb1qSDK = aFd1uSDK.afErrorLog;
                synchronized (this.AFKeystoreWrapper) {
                    this.afInfoLog = aFb1qSDK;
                }
            }
            synchronized (this.AFKeystoreWrapper) {
            }
        }
    }

    public final void values(AFd1oSDK aFd1oSDK) {
        AFd1uSDK aFd1uSDK = new AFd1uSDK(this.AFInAppEventParameterName, this.AFInAppEventType, this.valueOf, this.values, this.afRDLog, this.AFLogger, "v1", aFd1oSDK);
        AFc1mSDK aFc1mSDK = this.afErrorLog;
        aFc1mSDK.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFd1uSDK));
    }

    @Nullable
    public final AFb1qSDK values() {
        AFb1qSDK aFb1qSDK;
        synchronized (this.AFKeystoreWrapper) {
            aFb1qSDK = this.afInfoLog;
            this.afInfoLog = null;
        }
        return aFb1qSDK;
    }
}
