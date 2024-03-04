package com.google.android.exoplayer2;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
final class o3 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final PowerManager f6373a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private PowerManager.WakeLock f6374b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6375c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6376d;

    public o3(Context context) {
        this.f6373a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    private void c() {
        PowerManager.WakeLock wakeLock = this.f6374b;
        if (wakeLock == null) {
            return;
        }
        if (this.f6375c && this.f6376d) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }

    public void a(boolean z10) {
        if (z10 && this.f6374b == null) {
            PowerManager powerManager = this.f6373a;
            if (powerManager == null) {
                com.google.android.exoplayer2.util.r.i("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                return;
            }
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
            this.f6374b = newWakeLock;
            newWakeLock.setReferenceCounted(false);
        }
        this.f6375c = z10;
        c();
    }

    public void b(boolean z10) {
        this.f6376d = z10;
        c();
    }
}
