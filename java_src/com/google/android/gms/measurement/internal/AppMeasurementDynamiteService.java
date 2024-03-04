package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.measurement.zzcl;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Map;
@DynamiteApi
/* loaded from: classes2.dex */
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.d1 {

    /* renamed from: a  reason: collision with root package name */
    n4 f9254a = null;
    @GuardedBy("listenerMap")

    /* renamed from: b  reason: collision with root package name */
    private final Map f9255b = new ArrayMap();

    private final void D0(com.google.android.gms.internal.measurement.h1 h1Var, String str) {
        f();
        this.f9254a.N().J(h1Var, str);
    }

    private final void f() {
        if (this.f9254a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void beginAdUnitExposure(@NonNull String str, long j10) throws RemoteException {
        f();
        this.f9254a.y().l(str, j10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void clearConditionalUserProperty(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) throws RemoteException {
        f();
        this.f9254a.I().o(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void clearMeasurementEnabled(long j10) throws RemoteException {
        f();
        this.f9254a.I().I(null);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void endAdUnitExposure(@NonNull String str, long j10) throws RemoteException {
        f();
        this.f9254a.y().m(str, j10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void generateEventId(com.google.android.gms.internal.measurement.h1 h1Var) throws RemoteException {
        f();
        long r02 = this.f9254a.N().r0();
        f();
        this.f9254a.N().I(h1Var, r02);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void getAppInstanceId(com.google.android.gms.internal.measurement.h1 h1Var) throws RemoteException {
        f();
        this.f9254a.a().z(new j6(this, h1Var));
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.h1 h1Var) throws RemoteException {
        f();
        D0(h1Var, this.f9254a.I().V());
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.h1 h1Var) throws RemoteException {
        f();
        this.f9254a.a().z(new l9(this, h1Var, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.h1 h1Var) throws RemoteException {
        f();
        D0(h1Var, this.f9254a.I().W());
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.h1 h1Var) throws RemoteException {
        f();
        D0(h1Var, this.f9254a.I().X());
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void getGmpAppId(com.google.android.gms.internal.measurement.h1 h1Var) throws RemoteException {
        String str;
        f();
        m6 I = this.f9254a.I();
        if (I.f9432a.O() != null) {
            str = I.f9432a.O();
        } else {
            try {
                str = p4.w.b(I.f9432a.f(), "google_app_id", I.f9432a.R());
            } catch (IllegalStateException e10) {
                I.f9432a.b().r().b("getGoogleAppId failed with exception", e10);
                str = null;
            }
        }
        D0(h1Var, str);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.h1 h1Var) throws RemoteException {
        f();
        this.f9254a.I().Q(str);
        f();
        this.f9254a.N().H(h1Var, 25);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void getTestFlag(com.google.android.gms.internal.measurement.h1 h1Var, int i9) throws RemoteException {
        f();
        if (i9 == 0) {
            this.f9254a.N().J(h1Var, this.f9254a.I().Y());
        } else if (i9 == 1) {
            this.f9254a.N().I(h1Var, this.f9254a.I().U().longValue());
        } else if (i9 != 2) {
            if (i9 == 3) {
                this.f9254a.N().H(h1Var, this.f9254a.I().T().intValue());
            } else if (i9 != 4) {
            } else {
                this.f9254a.N().D(h1Var, this.f9254a.I().R().booleanValue());
            }
        } else {
            k9 N = this.f9254a.N();
            double doubleValue = this.f9254a.I().S().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                h1Var.a(bundle);
            } catch (RemoteException e10) {
                N.f9432a.b().w().b("Error returning double value to wrapper", e10);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void getUserProperties(String str, String str2, boolean z10, com.google.android.gms.internal.measurement.h1 h1Var) throws RemoteException {
        f();
        this.f9254a.a().z(new f8(this, h1Var, str, str2, z10));
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void initForTests(@NonNull Map map) throws RemoteException {
        f();
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void initialize(h4.a aVar, zzcl zzclVar, long j10) throws RemoteException {
        n4 n4Var = this.f9254a;
        if (n4Var == null) {
            this.f9254a = n4.H((Context) com.google.android.gms.common.internal.p.j((Context) h4.b.D0(aVar)), zzclVar, Long.valueOf(j10));
        } else {
            n4Var.b().w().a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.h1 h1Var) throws RemoteException {
        f();
        this.f9254a.a().z(new m9(this, h1Var));
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void logEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException {
        f();
        this.f9254a.I().s(str, str2, bundle, z10, z11, j10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.h1 h1Var, long j10) throws RemoteException {
        Bundle bundle2;
        f();
        com.google.android.gms.common.internal.p.f(str2);
        if (bundle != null) {
            bundle2 = new Bundle(bundle);
        } else {
            bundle2 = new Bundle();
        }
        bundle2.putString("_o", PushConstants.EXTRA_APPLICATION_PENDING_INTENT);
        this.f9254a.a().z(new f7(this, h1Var, new zzaw(str2, new zzau(bundle), PushConstants.EXTRA_APPLICATION_PENDING_INTENT, j10), str));
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void logHealthData(int i9, @NonNull String str, @NonNull h4.a aVar, @NonNull h4.a aVar2, @NonNull h4.a aVar3) throws RemoteException {
        f();
        this.f9254a.b().F(i9, true, false, str, aVar == null ? null : h4.b.D0(aVar), aVar2 == null ? null : h4.b.D0(aVar2), aVar3 != null ? h4.b.D0(aVar3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void onActivityCreated(@NonNull h4.a aVar, @NonNull Bundle bundle, long j10) throws RemoteException {
        f();
        l6 l6Var = this.f9254a.I().f9635c;
        if (l6Var != null) {
            this.f9254a.I().p();
            l6Var.onActivityCreated((Activity) h4.b.D0(aVar), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void onActivityDestroyed(@NonNull h4.a aVar, long j10) throws RemoteException {
        f();
        l6 l6Var = this.f9254a.I().f9635c;
        if (l6Var != null) {
            this.f9254a.I().p();
            l6Var.onActivityDestroyed((Activity) h4.b.D0(aVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void onActivityPaused(@NonNull h4.a aVar, long j10) throws RemoteException {
        f();
        l6 l6Var = this.f9254a.I().f9635c;
        if (l6Var != null) {
            this.f9254a.I().p();
            l6Var.onActivityPaused((Activity) h4.b.D0(aVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void onActivityResumed(@NonNull h4.a aVar, long j10) throws RemoteException {
        f();
        l6 l6Var = this.f9254a.I().f9635c;
        if (l6Var != null) {
            this.f9254a.I().p();
            l6Var.onActivityResumed((Activity) h4.b.D0(aVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void onActivitySaveInstanceState(h4.a aVar, com.google.android.gms.internal.measurement.h1 h1Var, long j10) throws RemoteException {
        f();
        l6 l6Var = this.f9254a.I().f9635c;
        Bundle bundle = new Bundle();
        if (l6Var != null) {
            this.f9254a.I().p();
            l6Var.onActivitySaveInstanceState((Activity) h4.b.D0(aVar), bundle);
        }
        try {
            h1Var.a(bundle);
        } catch (RemoteException e10) {
            this.f9254a.b().w().b("Error returning bundle value to wrapper", e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void onActivityStarted(@NonNull h4.a aVar, long j10) throws RemoteException {
        f();
        if (this.f9254a.I().f9635c != null) {
            this.f9254a.I().p();
            Activity activity = (Activity) h4.b.D0(aVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void onActivityStopped(@NonNull h4.a aVar, long j10) throws RemoteException {
        f();
        if (this.f9254a.I().f9635c != null) {
            this.f9254a.I().p();
            Activity activity = (Activity) h4.b.D0(aVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.h1 h1Var, long j10) throws RemoteException {
        f();
        h1Var.a(null);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.k1 k1Var) throws RemoteException {
        p4.t tVar;
        f();
        synchronized (this.f9255b) {
            tVar = (p4.t) this.f9255b.get(Integer.valueOf(k1Var.c()));
            if (tVar == null) {
                tVar = new o9(this, k1Var);
                this.f9255b.put(Integer.valueOf(k1Var.c()), tVar);
            }
        }
        this.f9254a.I().x(tVar);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void resetAnalyticsData(long j10) throws RemoteException {
        f();
        this.f9254a.I().y(j10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setConditionalUserProperty(@NonNull Bundle bundle, long j10) throws RemoteException {
        f();
        if (bundle == null) {
            this.f9254a.b().r().a("Conditional user property must not be null");
        } else {
            this.f9254a.I().E(bundle, j10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setConsent(@NonNull final Bundle bundle, final long j10) throws RemoteException {
        f();
        final m6 I = this.f9254a.I();
        I.f9432a.a().A(new Runnable() { // from class: com.google.android.gms.measurement.internal.m5
            @Override // java.lang.Runnable
            public final void run() {
                m6 m6Var = m6.this;
                Bundle bundle2 = bundle;
                long j11 = j10;
                if (TextUtils.isEmpty(m6Var.f9432a.B().t())) {
                    m6Var.F(bundle2, 0, j11);
                } else {
                    m6Var.f9432a.b().x().a("Using developer consent only; google app id found");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setConsentThirdParty(@NonNull Bundle bundle, long j10) throws RemoteException {
        f();
        this.f9254a.I().F(bundle, -20, j10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setCurrentScreen(@NonNull h4.a aVar, @NonNull String str, @NonNull String str2, long j10) throws RemoteException {
        f();
        this.f9254a.K().D((Activity) h4.b.D0(aVar), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setDataCollectionEnabled(boolean z10) throws RemoteException {
        f();
        m6 I = this.f9254a.I();
        I.i();
        I.f9432a.a().z(new i6(I, z10));
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setDefaultEventParameters(@NonNull Bundle bundle) {
        f();
        final m6 I = this.f9254a.I();
        final Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        I.f9432a.a().z(new Runnable() { // from class: com.google.android.gms.measurement.internal.n5
            @Override // java.lang.Runnable
            public final void run() {
                m6.this.q(bundle2);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setEventInterceptor(com.google.android.gms.internal.measurement.k1 k1Var) throws RemoteException {
        f();
        n9 n9Var = new n9(this, k1Var);
        if (this.f9254a.a().C()) {
            this.f9254a.I().H(n9Var);
        } else {
            this.f9254a.a().z(new e9(this, n9Var));
        }
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.m1 m1Var) throws RemoteException {
        f();
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setMeasurementEnabled(boolean z10, long j10) throws RemoteException {
        f();
        this.f9254a.I().I(Boolean.valueOf(z10));
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setMinimumSessionDuration(long j10) throws RemoteException {
        f();
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setSessionTimeoutDuration(long j10) throws RemoteException {
        f();
        m6 I = this.f9254a.I();
        I.f9432a.a().z(new r5(I, j10));
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setUserId(@NonNull final String str, long j10) throws RemoteException {
        f();
        final m6 I = this.f9254a.I();
        if (str != null && TextUtils.isEmpty(str)) {
            I.f9432a.b().w().a("User ID must be non-empty or null");
            return;
        }
        I.f9432a.a().z(new Runnable() { // from class: com.google.android.gms.measurement.internal.o5
            @Override // java.lang.Runnable
            public final void run() {
                m6 m6Var = m6.this;
                if (m6Var.f9432a.B().w(str)) {
                    m6Var.f9432a.B().v();
                }
            }
        });
        I.L(null, "_id", str, true, j10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull h4.a aVar, boolean z10, long j10) throws RemoteException {
        f();
        this.f9254a.I().L(str, str2, h4.b.D0(aVar), z10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.k1 k1Var) throws RemoteException {
        p4.t tVar;
        f();
        synchronized (this.f9255b) {
            tVar = (p4.t) this.f9255b.remove(Integer.valueOf(k1Var.c()));
        }
        if (tVar == null) {
            tVar = new o9(this, k1Var);
        }
        this.f9254a.I().N(tVar);
    }
}
