package v3;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.internal.zak;
import java.util.Set;
/* loaded from: classes2.dex */
public final class a0 extends r4.a implements d.a, d.b {

    /* renamed from: h  reason: collision with root package name */
    private static final a.AbstractC0083a f58952h = q4.e.f57118c;

    /* renamed from: a  reason: collision with root package name */
    private final Context f58953a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f58954b;

    /* renamed from: c  reason: collision with root package name */
    private final a.AbstractC0083a f58955c;

    /* renamed from: d  reason: collision with root package name */
    private final Set f58956d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.gms.common.internal.e f58957e;

    /* renamed from: f  reason: collision with root package name */
    private q4.f f58958f;

    /* renamed from: g  reason: collision with root package name */
    private z f58959g;

    @WorkerThread
    public a0(Context context, Handler handler, @NonNull com.google.android.gms.common.internal.e eVar) {
        a.AbstractC0083a abstractC0083a = f58952h;
        this.f58953a = context;
        this.f58954b = handler;
        this.f58957e = (com.google.android.gms.common.internal.e) com.google.android.gms.common.internal.p.k(eVar, "ClientSettings must not be null");
        this.f58956d = eVar.g();
        this.f58955c = abstractC0083a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void F0(a0 a0Var, zak zakVar) {
        ConnectionResult I = zakVar.I();
        if (I.P()) {
            zav zavVar = (zav) com.google.android.gms.common.internal.p.j(zakVar.K());
            ConnectionResult I2 = zavVar.I();
            if (!I2.P()) {
                String valueOf = String.valueOf(I2);
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(valueOf), new Exception());
                a0Var.f58959g.c(I2);
                a0Var.f58958f.disconnect();
                return;
            }
            a0Var.f58959g.b(zavVar.K(), a0Var.f58956d);
        } else {
            a0Var.f58959g.c(I);
        }
        a0Var.f58958f.disconnect();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.common.api.a$f, q4.f] */
    @WorkerThread
    public final void G0(z zVar) {
        q4.f fVar = this.f58958f;
        if (fVar != null) {
            fVar.disconnect();
        }
        this.f58957e.k(Integer.valueOf(System.identityHashCode(this)));
        a.AbstractC0083a abstractC0083a = this.f58955c;
        Context context = this.f58953a;
        Looper looper = this.f58954b.getLooper();
        com.google.android.gms.common.internal.e eVar = this.f58957e;
        this.f58958f = abstractC0083a.a(context, looper, eVar, eVar.h(), this, this);
        this.f58959g = zVar;
        Set set = this.f58956d;
        if (set != null && !set.isEmpty()) {
            this.f58958f.g();
        } else {
            this.f58954b.post(new x(this));
        }
    }

    public final void H0() {
        q4.f fVar = this.f58958f;
        if (fVar != null) {
            fVar.disconnect();
        }
    }

    @Override // v3.c
    @WorkerThread
    public final void b(@Nullable Bundle bundle) {
        this.f58958f.a(this);
    }

    @Override // v3.h
    @WorkerThread
    public final void f(@NonNull ConnectionResult connectionResult) {
        this.f58959g.c(connectionResult);
    }

    @Override // v3.c
    @WorkerThread
    public final void onConnectionSuspended(int i9) {
        this.f58958f.disconnect();
    }

    @Override // r4.c
    @BinderThread
    public final void q(zak zakVar) {
        this.f58954b.post(new y(this, zakVar));
    }
}
