package com.google.android.exoplayer2;

import android.content.Context;
import android.net.wifi.WifiManager;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
final class p3 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final WifiManager f6405a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private WifiManager.WifiLock f6406b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6407c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6408d;

    public p3(Context context) {
        this.f6405a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    private void c() {
        WifiManager.WifiLock wifiLock = this.f6406b;
        if (wifiLock == null) {
            return;
        }
        if (this.f6407c && this.f6408d) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }

    public void a(boolean z10) {
        if (z10 && this.f6406b == null) {
            WifiManager wifiManager = this.f6405a;
            if (wifiManager == null) {
                com.google.android.exoplayer2.util.r.i("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                return;
            }
            WifiManager.WifiLock createWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
            this.f6406b = createWifiLock;
            createWifiLock.setReferenceCounted(false);
        }
        this.f6407c = z10;
        c();
    }

    public void b(boolean z10) {
        this.f6408d = z10;
        c();
    }
}
