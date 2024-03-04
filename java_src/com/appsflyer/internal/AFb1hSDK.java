package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public abstract class AFb1hSDK<T> {
    private final String[] AFInAppEventParameterName;
    public final Context AFInAppEventType;
    public final FutureTask<T> AFKeystoreWrapper = new FutureTask<>(new Callable<T>() { // from class: com.appsflyer.internal.AFb1hSDK.5
        @Override // java.util.concurrent.Callable
        public final T call() {
            if (AFb1hSDK.this.AFInAppEventParameterName()) {
                return (T) AFb1hSDK.this.values();
            }
            return null;
        }
    });
    public final String valueOf;
    public final AFc1ySDK values;

    public AFb1hSDK(Context context, AFc1ySDK aFc1ySDK, String str, String... strArr) {
        this.AFInAppEventType = context;
        this.valueOf = str;
        this.AFInAppEventParameterName = strArr;
        this.values = aFc1ySDK;
    }

    public final boolean AFInAppEventParameterName() {
        try {
            ProviderInfo resolveContentProvider = this.AFInAppEventType.getPackageManager().resolveContentProvider(this.valueOf, 128);
            if (resolveContentProvider != null) {
                return Arrays.asList(this.AFInAppEventParameterName).contains(AFb1wSDK.valueOf(this.AFInAppEventType.getPackageManager(), ((PackageItemInfo) resolveContentProvider).packageName));
            }
            return false;
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException | CertificateException e10) {
            AFLogger.afErrorLog(e10.getMessage(), e10);
            return false;
        }
    }

    @Nullable
    public T AFKeystoreWrapper() {
        try {
            return this.AFKeystoreWrapper.get(500L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            AFLogger.afErrorLog(e10.getMessage(), e10);
            return null;
        }
    }

    protected abstract T values();
}
