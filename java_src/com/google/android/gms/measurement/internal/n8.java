package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.ic;
import com.google.android.gms.internal.measurement.nd;
import kotlinx.coroutines.DebugKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class n8 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ o8 f9708a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n8(o8 o8Var) {
        this.f9708a = o8Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a() {
        this.f9708a.h();
        if (this.f9708a.f9432a.F().v(this.f9708a.f9432a.c().a())) {
            this.f9708a.f9432a.F().f9962l.a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.f9708a.f9432a.b().v().a("Detected application was in foreground");
                c(this.f9708a.f9432a.c().a(), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void b(long j10, boolean z10) {
        this.f9708a.h();
        this.f9708a.s();
        if (this.f9708a.f9432a.F().v(j10)) {
            this.f9708a.f9432a.F().f9962l.a(true);
            nd.b();
            if (this.f9708a.f9432a.z().B(null, z2.f10067u0)) {
                this.f9708a.f9432a.B().v();
            }
        }
        this.f9708a.f9432a.F().f9965o.b(j10);
        if (this.f9708a.f9432a.F().f9962l.b()) {
            c(j10, z10);
        }
    }

    @WorkerThread
    final void c(long j10, boolean z10) {
        this.f9708a.h();
        if (this.f9708a.f9432a.o()) {
            this.f9708a.f9432a.F().f9965o.b(j10);
            this.f9708a.f9432a.b().v().b("Session started, time", Long.valueOf(this.f9708a.f9432a.c().b()));
            Long valueOf = Long.valueOf(j10 / 1000);
            this.f9708a.f9432a.I().M(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_sid", valueOf, j10);
            this.f9708a.f9432a.F().f9962l.a(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", valueOf.longValue());
            if (this.f9708a.f9432a.z().B(null, z2.f10029b0) && z10) {
                bundle.putLong("_aib", 1L);
            }
            this.f9708a.f9432a.I().v(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_s", j10, bundle);
            ic.b();
            if (this.f9708a.f9432a.z().B(null, z2.f10035e0)) {
                String a10 = this.f9708a.f9432a.F().f9970t.a();
                if (TextUtils.isEmpty(a10)) {
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", a10);
                this.f9708a.f9432a.I().v(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_ssr", j10, bundle2);
            }
        }
    }
}
