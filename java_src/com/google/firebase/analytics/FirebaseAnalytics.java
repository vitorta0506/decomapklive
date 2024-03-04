package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.internal.measurement.w2;
import com.google.firebase.installations.c;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p4.v;
import t4.j;
/* loaded from: classes2.dex */
public final class FirebaseAnalytics {

    /* renamed from: b  reason: collision with root package name */
    private static volatile FirebaseAnalytics f13808b;

    /* renamed from: a  reason: collision with root package name */
    private final w2 f13809a;

    /* loaded from: classes2.dex */
    public enum ConsentStatus {
        GRANTED,
        DENIED
    }

    /* loaded from: classes2.dex */
    public enum ConsentType {
        AD_STORAGE,
        ANALYTICS_STORAGE
    }

    public FirebaseAnalytics(w2 w2Var) {
        p.j(w2Var);
        this.f13809a = w2Var;
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @Keep
    public static FirebaseAnalytics getInstance(@NonNull Context context) {
        if (f13808b == null) {
            synchronized (FirebaseAnalytics.class) {
                if (f13808b == null) {
                    f13808b = new FirebaseAnalytics(w2.v(context, null, null, null, null));
                }
            }
        }
        return f13808b;
    }

    @Nullable
    @Keep
    public static v getScionFrontendApiImplementation(Context context, @Nullable Bundle bundle) {
        w2 v10 = w2.v(context, null, null, null, bundle);
        if (v10 == null) {
            return null;
        }
        return new a(v10);
    }

    public void a(@NonNull @Size(max = 40, min = 1) String str, @Nullable Bundle bundle) {
        this.f13809a.J(str, bundle);
    }

    public void b(@NonNull Map<ConsentType, ConsentStatus> map) {
        Bundle bundle = new Bundle();
        ConsentStatus consentStatus = map.get(ConsentType.AD_STORAGE);
        if (consentStatus != null) {
            int ordinal = consentStatus.ordinal();
            if (ordinal == 0) {
                bundle.putString("ad_storage", "granted");
            } else if (ordinal == 1) {
                bundle.putString("ad_storage", "denied");
            }
        }
        ConsentStatus consentStatus2 = map.get(ConsentType.ANALYTICS_STORAGE);
        if (consentStatus2 != null) {
            int ordinal2 = consentStatus2.ordinal();
            if (ordinal2 == 0) {
                bundle.putString("analytics_storage", "granted");
            } else if (ordinal2 == 1) {
                bundle.putString("analytics_storage", "denied");
            }
        }
        this.f13809a.d(bundle);
    }

    public void c(@Nullable String str) {
        this.f13809a.g(str);
    }

    @NonNull
    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) j.b(c.n().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw new IllegalStateException(e10);
        } catch (ExecutionException e11) {
            throw new IllegalStateException(e11.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @MainThread
    @Deprecated
    public void setCurrentScreen(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        this.f13809a.e(activity, str, str2);
    }
}
