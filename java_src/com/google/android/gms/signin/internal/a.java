package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.zat;
import com.huawei.hms.api.HuaweiApiClientImpl;
/* loaded from: classes2.dex */
public class a extends f<c> implements q4.f {
    public static final /* synthetic */ int M = 0;
    private final boolean I;
    private final com.google.android.gms.common.internal.e J;
    private final Bundle K;
    @Nullable
    private final Integer L;

    public a(@NonNull Context context, @NonNull Looper looper, boolean z10, @NonNull com.google.android.gms.common.internal.e eVar, @NonNull Bundle bundle, @NonNull d.a aVar, @NonNull d.b bVar) {
        super(context, looper, 44, eVar, aVar, bVar);
        this.I = true;
        this.J = eVar;
        this.K = bundle;
        this.L = eVar.i();
    }

    @NonNull
    public static Bundle j0(@NonNull com.google.android.gms.common.internal.e eVar) {
        eVar.h();
        Integer i9 = eVar.i();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", eVar.a());
        if (i9 != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", i9.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    @NonNull
    public final String B() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.d
    @NonNull
    protected final String C() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // q4.f
    public final void a(r4.c cVar) {
        p.k(cVar, "Expecting a valid ISignInCallbacks");
        try {
            Account c10 = this.J.c();
            ((c) A()).G0(new zai(1, new zat(c10, ((Integer) p.j(this.L)).intValue(), HuaweiApiClientImpl.DEFAULT_ACCOUNT.equals(c10.name) ? t3.b.b(v()).c() : null)), cVar);
        } catch (RemoteException e10) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                cVar.q(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e10);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final boolean f() {
        return this.I;
    }

    @Override // q4.f
    public final void g() {
        d(new d.C0087d());
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int k() {
        return com.google.android.gms.common.d.f7626a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    @NonNull
    public final /* synthetic */ IInterface p(@NonNull IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof c ? (c) queryLocalInterface : new c(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    @NonNull
    protected final Bundle x() {
        if (!v().getPackageName().equals(this.J.f())) {
            this.K.putString("com.google.android.gms.signin.internal.realClientPackageName", this.J.f());
        }
        return this.K;
    }
}
