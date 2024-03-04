package com.xiaomi.push;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class i3 {

    /* renamed from: a  reason: collision with root package name */
    private a f36920a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f36921b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f36922c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f36923d;

    /* renamed from: e  reason: collision with root package name */
    private int f36924e;

    /* renamed from: f  reason: collision with root package name */
    private volatile b f36925f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private final LinkedBlockingQueue<b> f36926a;

        public a() {
            super("PackageProcessor");
            this.f36926a = new LinkedBlockingQueue<>();
        }

        private void b(int i9, b bVar) {
            try {
                i3.this.f36921b.sendMessage(i3.this.f36921b.obtainMessage(i9, bVar));
            } catch (Exception e10) {
                tf.c.o(e10);
            }
        }

        public void c(b bVar) {
            try {
                this.f36926a.add(bVar);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            long j10 = i3.this.f36924e > 0 ? i3.this.f36924e : Long.MAX_VALUE;
            while (!i3.this.f36922c) {
                try {
                    b poll = this.f36926a.poll(j10, TimeUnit.SECONDS);
                    i3.this.f36925f = poll;
                    if (poll != null) {
                        b(0, poll);
                        poll.b();
                        b(1, poll);
                    } else if (i3.this.f36924e > 0) {
                        i3.this.d();
                    }
                } catch (InterruptedException e10) {
                    tf.c.o(e10);
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class b {
        public void a() {
        }

        public abstract void b();

        public void c() {
        }
    }

    public i3(boolean z10) {
        this(z10, 0);
    }

    public i3(boolean z10, int i9) {
        this.f36921b = null;
        this.f36922c = false;
        this.f36924e = 0;
        this.f36921b = new j3(this, Looper.getMainLooper());
        this.f36923d = z10;
        this.f36924e = i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        this.f36920a = null;
        this.f36922c = true;
    }

    public synchronized void e(b bVar) {
        if (this.f36920a == null) {
            a aVar = new a();
            this.f36920a = aVar;
            aVar.setDaemon(this.f36923d);
            this.f36922c = false;
            this.f36920a.start();
        }
        this.f36920a.c(bVar);
    }

    public void f(b bVar, long j10) {
        this.f36921b.postDelayed(new k3(this, bVar), j10);
    }
}
