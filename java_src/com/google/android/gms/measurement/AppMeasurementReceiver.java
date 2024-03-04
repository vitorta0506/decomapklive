package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import p4.i;
import p4.j;
/* loaded from: classes2.dex */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements i {

    /* renamed from: a  reason: collision with root package name */
    private j f9249a;

    @Override // p4.i
    @MainThread
    public void a(@NonNull Context context, @NonNull Intent intent) {
        WakefulBroadcastReceiver.startWakefulService(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public void onReceive(@NonNull Context context, @NonNull Intent intent) {
        if (this.f9249a == null) {
            this.f9249a = new j(this);
        }
        this.f9249a.a(context, intent);
    }
}
