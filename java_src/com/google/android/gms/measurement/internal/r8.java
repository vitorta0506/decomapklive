package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.core.app.NotificationCompat;
import com.facebook.internal.NativeProtocol;
/* loaded from: classes2.dex */
public final class r8 extends t8 {

    /* renamed from: d  reason: collision with root package name */
    private final AlarmManager f9817d;

    /* renamed from: e  reason: collision with root package name */
    private n f9818e;

    /* renamed from: f  reason: collision with root package name */
    private Integer f9819f;

    /* JADX INFO: Access modifiers changed from: protected */
    public r8(d9 d9Var) {
        super(d9Var);
        this.f9817d = (AlarmManager) this.f9432a.f().getSystemService(NotificationCompat.CATEGORY_ALARM);
    }

    private final int o() {
        if (this.f9819f == null) {
            this.f9819f = Integer.valueOf("measurement".concat(String.valueOf(this.f9432a.f().getPackageName())).hashCode());
        }
        return this.f9819f.intValue();
    }

    private final PendingIntent p() {
        Context f10 = this.f9432a.f();
        return PendingIntent.getBroadcast(f10, 0, new Intent().setClassName(f10, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.t0.f8328a);
    }

    private final n q() {
        if (this.f9818e == null) {
            this.f9818e = new q8(this, this.f9855b.c0());
        }
        return this.f9818e;
    }

    private final void r() {
        JobScheduler jobScheduler = (JobScheduler) this.f9432a.f().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(o());
        }
    }

    @Override // com.google.android.gms.measurement.internal.t8
    protected final boolean l() {
        AlarmManager alarmManager = this.f9817d;
        if (alarmManager != null) {
            alarmManager.cancel(p());
        }
        if (Build.VERSION.SDK_INT >= 24) {
            r();
            return false;
        }
        return false;
    }

    public final void m() {
        i();
        this.f9432a.b().v().a("Unscheduling upload");
        AlarmManager alarmManager = this.f9817d;
        if (alarmManager != null) {
            alarmManager.cancel(p());
        }
        q().b();
        if (Build.VERSION.SDK_INT >= 24) {
            r();
        }
    }

    public final void n(long j10) {
        i();
        this.f9432a.d();
        Context f10 = this.f9432a.f();
        if (!k9.Y(f10)) {
            this.f9432a.b().q().a("Receiver not registered/enabled");
        }
        if (!k9.Z(f10, false)) {
            this.f9432a.b().q().a("Service not registered/enabled");
        }
        m();
        this.f9432a.b().v().b("Scheduling upload, millis", Long.valueOf(j10));
        long b10 = this.f9432a.c().b() + j10;
        this.f9432a.z();
        if (j10 < Math.max(0L, ((Long) z2.f10074y.a(null)).longValue()) && !q().e()) {
            q().d(j10);
        }
        this.f9432a.d();
        if (Build.VERSION.SDK_INT < 24) {
            AlarmManager alarmManager = this.f9817d;
            if (alarmManager != null) {
                this.f9432a.z();
                alarmManager.setInexactRepeating(2, b10, Math.max(((Long) z2.f10064t.a(null)).longValue(), j10), p());
                return;
            }
            return;
        }
        Context f11 = this.f9432a.f();
        ComponentName componentName = new ComponentName(f11, "com.google.android.gms.measurement.AppMeasurementJobService");
        int o10 = o();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString(NativeProtocol.WEB_DIALOG_ACTION, "com.google.android.gms.measurement.UPLOAD");
        com.google.android.gms.internal.measurement.u0.a(f11, new JobInfo.Builder(o10, componentName).setMinimumLatency(j10).setOverrideDeadline(j10 + j10).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }
}
