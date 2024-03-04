package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.e8;
import p4.y;
/* loaded from: classes2.dex */
public final class AppMeasurementService extends Service implements y {

    /* renamed from: a  reason: collision with root package name */
    private e8 f9250a;

    private final e8 d() {
        if (this.f9250a == null) {
            this.f9250a = new e8(this);
        }
        return this.f9250a;
    }

    @Override // p4.y
    public final boolean a(int i9) {
        return stopSelfResult(i9);
    }

    @Override // p4.y
    public final void b(@NonNull Intent intent) {
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }

    @Override // p4.y
    public final void c(@NonNull JobParameters jobParameters, boolean z10) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    @Nullable
    @MainThread
    public IBinder onBind(@NonNull Intent intent) {
        return d().b(intent);
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

    @Override // android.app.Service
    @MainThread
    public int onStartCommand(@NonNull Intent intent, int i9, int i10) {
        d().a(intent, i9, i10);
        return 2;
    }

    @Override // android.app.Service
    @MainThread
    public boolean onUnbind(@NonNull Intent intent) {
        d().j(intent);
        return true;
    }
}
