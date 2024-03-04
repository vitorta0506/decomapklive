package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.BinderThread;
import com.google.android.gms.internal.measurement.zzd;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2.dex */
public final class f5 extends p4.d {

    /* renamed from: a  reason: collision with root package name */
    private final d9 f9403a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f9404b;

    /* renamed from: c  reason: collision with root package name */
    private String f9405c;

    public f5(d9 d9Var, String str) {
        com.google.android.gms.common.internal.p.j(d9Var);
        this.f9403a = d9Var;
        this.f9405c = null;
    }

    @BinderThread
    private final void I0(zzq zzqVar, boolean z10) {
        com.google.android.gms.common.internal.p.j(zzqVar);
        com.google.android.gms.common.internal.p.f(zzqVar.zza);
        J0(zzqVar.zza, false);
        this.f9403a.h0().L(zzqVar.zzb, zzqVar.zzq);
    }

    @BinderThread
    private final void J0(String str, boolean z10) {
        boolean z11;
        if (!TextUtils.isEmpty(str)) {
            if (z10) {
                try {
                    if (this.f9404b == null) {
                        if (!"com.google.android.gms".equals(this.f9405c) && !e4.p.a(this.f9403a.f(), Binder.getCallingUid()) && !com.google.android.gms.common.e.a(this.f9403a.f()).c(Binder.getCallingUid())) {
                            z11 = false;
                            this.f9404b = Boolean.valueOf(z11);
                        }
                        z11 = true;
                        this.f9404b = Boolean.valueOf(z11);
                    }
                    if (this.f9404b.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e10) {
                    this.f9403a.b().r().b("Measurement Service called with invalid calling package. appId", j3.z(str));
                    throw e10;
                }
            }
            if (this.f9405c == null && com.google.android.gms.common.d.j(this.f9403a.f(), Binder.getCallingUid(), str)) {
                this.f9405c = str;
            }
            if (str.equals(this.f9405c)) {
                return;
            }
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
        this.f9403a.b().r().a("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    private final void f(zzaw zzawVar, zzq zzqVar) {
        this.f9403a.e();
        this.f9403a.j(zzawVar, zzqVar);
    }

    @Override // p4.e
    @BinderThread
    public final void B(long j10, String str, String str2, String str3) {
        H0(new e5(this, str2, str3, str, j10));
    }

    @Override // p4.e
    @BinderThread
    public final void B0(zzac zzacVar, zzq zzqVar) {
        com.google.android.gms.common.internal.p.j(zzacVar);
        com.google.android.gms.common.internal.p.j(zzacVar.zzc);
        I0(zzqVar, false);
        zzac zzacVar2 = new zzac(zzacVar);
        zzacVar2.zza = zzqVar.zza;
        H0(new p4(this, zzacVar2, zzqVar));
    }

    @Override // p4.e
    @BinderThread
    public final void C(zzlc zzlcVar, zzq zzqVar) {
        com.google.android.gms.common.internal.p.j(zzlcVar);
        I0(zzqVar, false);
        H0(new b5(this, zzlcVar, zzqVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzaw D0(zzaw zzawVar, zzq zzqVar) {
        zzau zzauVar;
        if ("_cmp".equals(zzawVar.zza) && (zzauVar = zzawVar.zzb) != null && zzauVar.I() != 0) {
            String c02 = zzawVar.zzb.c0("_cis");
            if ("referrer broadcast".equals(c02) || "referrer API".equals(c02)) {
                this.f9403a.b().u().b("Event has been filtered ", zzawVar.toString());
                return new zzaw("_cmpx", zzawVar.zzb, zzawVar.zzc, zzawVar.zzd);
            }
        }
        return zzawVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void F0(zzaw zzawVar, zzq zzqVar) {
        if (!this.f9403a.a0().C(zzqVar.zza)) {
            f(zzawVar, zzqVar);
            return;
        }
        this.f9403a.b().v().b("EES config found for", zzqVar.zza);
        h4 a02 = this.f9403a.a0();
        String str = zzqVar.zza;
        com.google.android.gms.internal.measurement.b1 b1Var = TextUtils.isEmpty(str) ? null : (com.google.android.gms.internal.measurement.b1) a02.f9460j.get(str);
        if (b1Var != null) {
            try {
                Map I = this.f9403a.g0().I(zzawVar.zzb.L(), true);
                String a10 = p4.p.a(zzawVar.zza);
                if (a10 == null) {
                    a10 = zzawVar.zza;
                }
                if (b1Var.e(new com.google.android.gms.internal.measurement.b(a10, zzawVar.zzd, I))) {
                    if (b1Var.g()) {
                        this.f9403a.b().v().b("EES edited event", zzawVar.zza);
                        f(this.f9403a.g0().A(b1Var.a().b()), zzqVar);
                    } else {
                        f(zzawVar, zzqVar);
                    }
                    if (b1Var.f()) {
                        for (com.google.android.gms.internal.measurement.b bVar : b1Var.a().c()) {
                            this.f9403a.b().v().b("EES logging created event", bVar.d());
                            f(this.f9403a.g0().A(bVar), zzqVar);
                        }
                        return;
                    }
                    return;
                }
            } catch (zzd unused) {
                this.f9403a.b().r().c("EES error. appId, eventName", zzqVar.zzb, zzawVar.zza);
            }
            this.f9403a.b().v().b("EES was not applied to event", zzawVar.zza);
            f(zzawVar, zzqVar);
            return;
        }
        this.f9403a.b().v().b("EES not loaded for", zzqVar.zza);
        f(zzawVar, zzqVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void G0(String str, Bundle bundle) {
        k W = this.f9403a.W();
        W.h();
        W.i();
        byte[] j10 = W.f9855b.g0().B(new p(W.f9432a, "", str, "dep", 0L, 0L, bundle)).j();
        W.f9432a.b().v().c("Saving default event parameters, appId, data size", W.f9432a.D().d(str), Integer.valueOf(j10.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put(PushConstants.PARAMS, j10);
        try {
            if (W.P().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                W.f9432a.b().r().b("Failed to insert default event parameters (got -1). appId", j3.z(str));
            }
        } catch (SQLiteException e10) {
            W.f9432a.b().r().c("Error storing default event parameters. appId", j3.z(str), e10);
        }
    }

    final void H0(Runnable runnable) {
        com.google.android.gms.common.internal.p.j(runnable);
        if (this.f9403a.a().C()) {
            runnable.run();
        } else {
            this.f9403a.a().z(runnable);
        }
    }

    @Override // p4.e
    @BinderThread
    public final void K(zzq zzqVar) {
        com.google.android.gms.common.internal.p.f(zzqVar.zza);
        com.google.android.gms.common.internal.p.j(zzqVar.zzv);
        x4 x4Var = new x4(this, zzqVar);
        com.google.android.gms.common.internal.p.j(x4Var);
        if (this.f9403a.a().C()) {
            x4Var.run();
        } else {
            this.f9403a.a().A(x4Var);
        }
    }

    @Override // p4.e
    @BinderThread
    public final List L(String str, String str2, boolean z10, zzq zzqVar) {
        I0(zzqVar, false);
        String str3 = zzqVar.zza;
        com.google.android.gms.common.internal.p.j(str3);
        try {
            List<i9> list = (List) this.f9403a.a().s(new r4(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (i9 i9Var : list) {
                if (z10 || !k9.W(i9Var.f9494c)) {
                    arrayList.add(new zzlc(i9Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.f9403a.b().r().c("Failed to query user properties. appId", j3.z(zzqVar.zza), e10);
            return Collections.emptyList();
        }
    }

    @Override // p4.e
    @BinderThread
    public final void O(zzq zzqVar) {
        com.google.android.gms.common.internal.p.f(zzqVar.zza);
        J0(zzqVar.zza, false);
        H0(new v4(this, zzqVar));
    }

    @Override // p4.e
    @BinderThread
    public final void a0(zzq zzqVar) {
        I0(zzqVar, false);
        H0(new w4(this, zzqVar));
    }

    @Override // p4.e
    @BinderThread
    public final void c0(final Bundle bundle, zzq zzqVar) {
        I0(zzqVar, false);
        final String str = zzqVar.zza;
        com.google.android.gms.common.internal.p.j(str);
        H0(new Runnable() { // from class: com.google.android.gms.measurement.internal.o4
            @Override // java.lang.Runnable
            public final void run() {
                f5.this.G0(str, bundle);
            }
        });
    }

    @Override // p4.e
    @BinderThread
    public final List d0(String str, String str2, String str3, boolean z10) {
        J0(str, true);
        try {
            List<i9> list = (List) this.f9403a.a().s(new s4(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (i9 i9Var : list) {
                if (z10 || !k9.W(i9Var.f9494c)) {
                    arrayList.add(new zzlc(i9Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.f9403a.b().r().c("Failed to get user properties as. appId", j3.z(str), e10);
            return Collections.emptyList();
        }
    }

    @Override // p4.e
    @BinderThread
    public final byte[] g0(zzaw zzawVar, String str) {
        com.google.android.gms.common.internal.p.f(str);
        com.google.android.gms.common.internal.p.j(zzawVar);
        J0(str, true);
        this.f9403a.b().q().b("Log and bundle. event", this.f9403a.X().d(zzawVar.zza));
        long nanoTime = this.f9403a.c().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f9403a.a().t(new a5(this, zzawVar, str)).get();
            if (bArr == null) {
                this.f9403a.b().r().b("Log and bundle returned null. appId", j3.z(str));
                bArr = new byte[0];
            }
            this.f9403a.b().q().d("Log and bundle processed. event, size, time_ms", this.f9403a.X().d(zzawVar.zza), Integer.valueOf(bArr.length), Long.valueOf((this.f9403a.c().nanoTime() / 1000000) - nanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e10) {
            this.f9403a.b().r().d("Failed to log and bundle. appId, event, error", j3.z(str), this.f9403a.X().d(zzawVar.zza), e10);
            return null;
        }
    }

    @Override // p4.e
    @BinderThread
    public final String i0(zzq zzqVar) {
        I0(zzqVar, false);
        return this.f9403a.j0(zzqVar);
    }

    @Override // p4.e
    @BinderThread
    public final List l0(String str, String str2, String str3) {
        J0(str, true);
        try {
            return (List) this.f9403a.a().s(new u4(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e10) {
            this.f9403a.b().r().b("Failed to get conditional user properties as", e10);
            return Collections.emptyList();
        }
    }

    @Override // p4.e
    @BinderThread
    public final void m(zzac zzacVar) {
        com.google.android.gms.common.internal.p.j(zzacVar);
        com.google.android.gms.common.internal.p.j(zzacVar.zzc);
        com.google.android.gms.common.internal.p.f(zzacVar.zza);
        J0(zzacVar.zza, true);
        H0(new q4(this, new zzac(zzacVar)));
    }

    @Override // p4.e
    @BinderThread
    public final List n(zzq zzqVar, boolean z10) {
        I0(zzqVar, false);
        String str = zzqVar.zza;
        com.google.android.gms.common.internal.p.j(str);
        try {
            List<i9> list = (List) this.f9403a.a().s(new c5(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (i9 i9Var : list) {
                if (z10 || !k9.W(i9Var.f9494c)) {
                    arrayList.add(new zzlc(i9Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.f9403a.b().r().c("Failed to get user properties. appId", j3.z(zzqVar.zza), e10);
            return null;
        }
    }

    @Override // p4.e
    @BinderThread
    public final List s0(String str, String str2, zzq zzqVar) {
        I0(zzqVar, false);
        String str3 = zzqVar.zza;
        com.google.android.gms.common.internal.p.j(str3);
        try {
            return (List) this.f9403a.a().s(new t4(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e10) {
            this.f9403a.b().r().b("Failed to get conditional user properties", e10);
            return Collections.emptyList();
        }
    }

    @Override // p4.e
    @BinderThread
    public final void v(zzaw zzawVar, zzq zzqVar) {
        com.google.android.gms.common.internal.p.j(zzawVar);
        I0(zzqVar, false);
        H0(new y4(this, zzawVar, zzqVar));
    }

    @Override // p4.e
    @BinderThread
    public final void x0(zzaw zzawVar, String str, String str2) {
        com.google.android.gms.common.internal.p.j(zzawVar);
        com.google.android.gms.common.internal.p.f(str);
        J0(str, true);
        H0(new z4(this, zzawVar, str));
    }

    @Override // p4.e
    @BinderThread
    public final void y(zzq zzqVar) {
        I0(zzqVar, false);
        H0(new d5(this, zzqVar));
    }
}
