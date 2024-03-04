package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import com.facebook.internal.NativeProtocol;
/* loaded from: classes2.dex */
public final class e8 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9396a;

    public e8(Context context) {
        com.google.android.gms.common.internal.p.j(context);
        this.f9396a = context;
    }

    private final j3 k() {
        return n4.H(this.f9396a, null, null).b();
    }

    @MainThread
    public final int a(final Intent intent, int i9, final int i10) {
        n4 H = n4.H(this.f9396a, null, null);
        final j3 b10 = H.b();
        if (intent == null) {
            b10.w().a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        H.d();
        b10.v().c("Local AppMeasurementService called. startId, action", Integer.valueOf(i10), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            h(new Runnable() { // from class: com.google.android.gms.measurement.internal.c8
                @Override // java.lang.Runnable
                public final void run() {
                    e8.this.c(i10, b10, intent);
                }
            });
        }
        return 2;
    }

    @MainThread
    public final IBinder b(Intent intent) {
        if (intent == null) {
            k().r().a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new f5(d9.f0(this.f9396a), null);
        }
        k().w().b("onBind received unknown action", action);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void c(int i9, j3 j3Var, Intent intent) {
        if (((p4.y) this.f9396a).a(i9)) {
            j3Var.v().b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i9));
            k().v().a("Completed wakeful intent.");
            ((p4.y) this.f9396a).b(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void d(j3 j3Var, JobParameters jobParameters) {
        j3Var.v().a("AppMeasurementJobService processed last upload request.");
        ((p4.y) this.f9396a).c(jobParameters, false);
    }

    @MainThread
    public final void e() {
        n4 H = n4.H(this.f9396a, null, null);
        j3 b10 = H.b();
        H.d();
        b10.v().a("Local AppMeasurementService is starting up");
    }

    @MainThread
    public final void f() {
        n4 H = n4.H(this.f9396a, null, null);
        j3 b10 = H.b();
        H.d();
        b10.v().a("Local AppMeasurementService is shutting down");
    }

    @MainThread
    public final void g(Intent intent) {
        if (intent == null) {
            k().r().a("onRebind called with null intent");
            return;
        }
        k().v().b("onRebind called. action", intent.getAction());
    }

    public final void h(Runnable runnable) {
        d9 f02 = d9.f0(this.f9396a);
        f02.a().z(new d8(this, f02, runnable));
    }

    @MainThread
    public final boolean i(final JobParameters jobParameters) {
        n4 H = n4.H(this.f9396a, null, null);
        final j3 b10 = H.b();
        String string = jobParameters.getExtras().getString(NativeProtocol.WEB_DIALOG_ACTION);
        H.d();
        b10.v().b("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            h(new Runnable() { // from class: com.google.android.gms.measurement.internal.b8
                @Override // java.lang.Runnable
                public final void run() {
                    e8.this.d(b10, jobParameters);
                }
            });
            return true;
        }
        return true;
    }

    @MainThread
    public final boolean j(Intent intent) {
        if (intent == null) {
            k().r().a("onUnbind called with null intent");
            return true;
        }
        k().v().b("onUnbind called for intent. action", intent.getAction());
        return true;
    }
}
