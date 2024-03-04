package com.appsflyer.internal;

import android.net.TrafficStats;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public abstract class AFc1nSDK<Result> implements Comparable<AFc1nSDK<?>>, Callable<AFc1qSDK> {
    private static final AtomicInteger afDebugLog = new AtomicInteger();
    @NonNull
    public final AFc1lSDK AFInAppEventParameterName;
    public volatile int AFInAppEventType;
    @NonNull
    public final Set<AFc1lSDK> AFKeystoreWrapper;
    @Nullable
    private Throwable AFLogger;
    private final String afErrorLog;
    private final int afInfoLog;
    private boolean afRDLog;
    @NonNull
    public final Set<AFc1lSDK> valueOf;
    @Nullable
    public AFc1qSDK values;

    public AFc1nSDK(@NonNull AFc1lSDK aFc1lSDK, @NonNull AFc1lSDK[] aFc1lSDKArr, @Nullable String str) {
        HashSet hashSet = new HashSet();
        this.AFKeystoreWrapper = hashSet;
        this.valueOf = new HashSet();
        int incrementAndGet = afDebugLog.incrementAndGet();
        this.afInfoLog = incrementAndGet;
        this.afRDLog = false;
        this.AFInAppEventType = 0;
        this.AFInAppEventParameterName = aFc1lSDK;
        Collections.addAll(hashSet, aFc1lSDKArr);
        if (str != null) {
            this.afErrorLog = str;
        } else {
            this.afErrorLog = String.valueOf(incrementAndGet);
        }
    }

    @WorkerThread
    protected void AFInAppEventParameterName() {
    }

    @Override // java.lang.Comparable
    /* renamed from: AFInAppEventType */
    public final int compareTo(AFc1nSDK<?> aFc1nSDK) {
        int i9 = this.AFInAppEventParameterName.AppsFlyer2dXConversionCallback - aFc1nSDK.AFInAppEventParameterName.AppsFlyer2dXConversionCallback;
        if (i9 == 0) {
            if (this.afErrorLog.equals(aFc1nSDK.afErrorLog)) {
                return 0;
            }
            return this.afInfoLog - aFc1nSDK.afInfoLog;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public abstract boolean AFInAppEventType();

    @NonNull
    @WorkerThread
    protected abstract AFc1qSDK AFKeystoreWrapper() throws Exception;

    @Override // java.util.concurrent.Callable
    /* renamed from: AFLogger */
    public final AFc1qSDK call() throws Exception {
        TrafficStats.setThreadStatsTag("AppsFlyer".hashCode());
        this.values = null;
        this.AFLogger = null;
        this.AFInAppEventType++;
        try {
            AFc1qSDK AFKeystoreWrapper = AFKeystoreWrapper();
            this.values = AFKeystoreWrapper;
            return AFKeystoreWrapper;
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean afDebugLog() {
        return this.afRDLog;
    }

    @Nullable
    public final Throwable afInfoLog() {
        return this.AFLogger;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AFc1nSDK aFc1nSDK = (AFc1nSDK) obj;
        if (this.AFInAppEventParameterName != aFc1nSDK.AFInAppEventParameterName) {
            return false;
        }
        return this.afErrorLog.equals(aFc1nSDK.afErrorLog);
    }

    public final int hashCode() {
        return (this.AFInAppEventParameterName.hashCode() * 31) + this.afErrorLog.hashCode();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.AFInAppEventParameterName);
        sb2.append("-");
        sb2.append(this.afErrorLog);
        String obj = sb2.toString();
        if (String.valueOf(this.afInfoLog).equals(this.afErrorLog)) {
            return obj;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(obj);
        sb3.append("-");
        sb3.append(this.afInfoLog);
        return sb3.toString();
    }

    @CallSuper
    @WorkerThread
    public void valueOf() {
        this.afRDLog = true;
    }

    @WorkerThread
    protected void valueOf(Throwable th2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract long values();
}
