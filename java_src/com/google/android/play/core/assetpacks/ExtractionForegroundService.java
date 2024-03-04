package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class ExtractionForegroundService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f10137a = new c1(this);

    public final synchronized void a() {
        stopForeground(true);
        stopSelf();
    }

    @Override // android.app.Service
    @Nullable
    public final IBinder onBind(Intent intent) {
        return this.f10137a;
    }
}
