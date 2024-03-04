package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import com.google.android.gms.measurement.internal.e8;
import p4.y;
/* loaded from: classes2.dex */
public final class AppMeasurementJobService extends JobService implements y {

    /* renamed from: a  reason: collision with root package name */
    private e8 f9248a;

    private final e8 d() {
        if (this.f9248a == null) {
            this.f9248a = new e8(this);
        }
        return this.f9248a;
    }

    @Override // p4.y
    public final boolean a(int i9) {
        throw new UnsupportedOperationException();
    }

    @Override // p4.y
    public final void b(@NonNull Intent intent) {
    }

    @Override // p4.y
    public final void c(@NonNull JobParameters jobParameters, boolean z10) {
        jobFinished(jobParameters, false);
    }

    @Override // android.app.Service
    @MainThread
    public void onCreate() {
        super.onCreate();
        d().e();
    }

    @Override // android.app.Service
    @MainThread
    public void onDestroy() {
        d().f();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public void onRebind(@NonNull Intent intent) {
        d().g(intent);
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(@NonNull JobParameters jobParameters) {
        d().i(jobParameters);
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(@NonNull JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    @MainThread
    public boolean onUnbind(@NonNull Intent intent) {
        d().j(intent);
        return true;
    }
}
