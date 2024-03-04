package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d3 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5698a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f5699b;

    /* renamed from: c  reason: collision with root package name */
    private final b f5700c;

    /* renamed from: d  reason: collision with root package name */
    private final AudioManager f5701d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private c f5702e;

    /* renamed from: f  reason: collision with root package name */
    private int f5703f;

    /* renamed from: g  reason: collision with root package name */
    private int f5704g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5705h;

    /* loaded from: classes.dex */
    public interface b {
        void B(int i9, boolean z10);

        void q(int i9);
    }

    /* loaded from: classes.dex */
    private final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Handler handler = d3.this.f5699b;
            final d3 d3Var = d3.this;
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.e3
                @Override // java.lang.Runnable
                public final void run() {
                    d3.b(d3.this);
                }
            });
        }
    }

    public d3(Context context, Handler handler, b bVar) {
        Context applicationContext = context.getApplicationContext();
        this.f5698a = applicationContext;
        this.f5699b = handler;
        this.f5700c = bVar;
        AudioManager audioManager = (AudioManager) com.google.android.exoplayer2.util.a.h((AudioManager) applicationContext.getSystemService("audio"));
        this.f5701d = audioManager;
        this.f5703f = 3;
        this.f5704g = f(audioManager, 3);
        this.f5705h = e(audioManager, this.f5703f);
        c cVar = new c();
        try {
            applicationContext.registerReceiver(cVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f5702e = cVar;
        } catch (RuntimeException e10) {
            com.google.android.exoplayer2.util.r.j("StreamVolumeManager", "Error registering stream volume receiver", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(d3 d3Var) {
        d3Var.i();
    }

    private static boolean e(AudioManager audioManager, int i9) {
        if (com.google.android.exoplayer2.util.l0.f6985a >= 23) {
            return audioManager.isStreamMute(i9);
        }
        return f(audioManager, i9) == 0;
    }

    private static int f(AudioManager audioManager, int i9) {
        try {
            return audioManager.getStreamVolume(i9);
        } catch (RuntimeException e10) {
            com.google.android.exoplayer2.util.r.j("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i9, e10);
            return audioManager.getStreamMaxVolume(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        int f10 = f(this.f5701d, this.f5703f);
        boolean e10 = e(this.f5701d, this.f5703f);
        if (this.f5704g == f10 && this.f5705h == e10) {
            return;
        }
        this.f5704g = f10;
        this.f5705h = e10;
        this.f5700c.B(f10, e10);
    }

    public int c() {
        return this.f5701d.getStreamMaxVolume(this.f5703f);
    }

    public int d() {
        if (com.google.android.exoplayer2.util.l0.f6985a >= 28) {
            return this.f5701d.getStreamMinVolume(this.f5703f);
        }
        return 0;
    }

    public void g() {
        c cVar = this.f5702e;
        if (cVar != null) {
            try {
                this.f5698a.unregisterReceiver(cVar);
            } catch (RuntimeException e10) {
                com.google.android.exoplayer2.util.r.j("StreamVolumeManager", "Error unregistering stream volume receiver", e10);
            }
            this.f5702e = null;
        }
    }

    public void h(int i9) {
        if (this.f5703f == i9) {
            return;
        }
        this.f5703f = i9;
        i();
        this.f5700c.q(i9);
    }
}
