package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5655a;

    /* renamed from: b  reason: collision with root package name */
    private final a f5656b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5657c;

    /* loaded from: classes.dex */
    private final class a extends BroadcastReceiver implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0078b f5658a;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f5659b;

        public a(Handler handler, InterfaceC0078b interfaceC0078b) {
            this.f5659b = handler;
            this.f5658a = interfaceC0078b;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f5659b.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f5657c) {
                this.f5658a.r();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0078b {
        void r();
    }

    public b(Context context, Handler handler, InterfaceC0078b interfaceC0078b) {
        this.f5655a = context.getApplicationContext();
        this.f5656b = new a(handler, interfaceC0078b);
    }

    public void b(boolean z10) {
        if (z10 && !this.f5657c) {
            this.f5655a.registerReceiver(this.f5656b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f5657c = true;
        } else if (z10 || !this.f5657c) {
        } else {
            this.f5655a.unregisterReceiver(this.f5656b);
            this.f5657c = false;
        }
    }
}
