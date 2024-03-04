package com.squareup.picasso;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    final HandlerThread f30045a;

    /* renamed from: b  reason: collision with root package name */
    final d f30046b;

    /* renamed from: c  reason: collision with root package name */
    final Handler f30047c;

    /* renamed from: d  reason: collision with root package name */
    long f30048d;

    /* renamed from: e  reason: collision with root package name */
    long f30049e;

    /* renamed from: f  reason: collision with root package name */
    long f30050f;

    /* renamed from: g  reason: collision with root package name */
    long f30051g;

    /* renamed from: h  reason: collision with root package name */
    long f30052h;

    /* renamed from: i  reason: collision with root package name */
    long f30053i;

    /* renamed from: j  reason: collision with root package name */
    long f30054j;

    /* renamed from: k  reason: collision with root package name */
    long f30055k;

    /* renamed from: l  reason: collision with root package name */
    int f30056l;

    /* renamed from: m  reason: collision with root package name */
    int f30057m;

    /* renamed from: n  reason: collision with root package name */
    int f30058n;

    /* loaded from: classes4.dex */
    private static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final w f30059a;

        /* renamed from: com.squareup.picasso.w$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0300a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Message f30060a;

            RunnableC0300a(Message message) {
                this.f30060a = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unhandled stats message." + this.f30060a.what);
            }
        }

        public a(Looper looper, w wVar) {
            super(looper);
            this.f30059a = wVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i9 = message.what;
            if (i9 == 0) {
                this.f30059a.j();
            } else if (i9 == 1) {
                this.f30059a.k();
            } else if (i9 == 2) {
                this.f30059a.h(message.arg1);
            } else if (i9 == 3) {
                this.f30059a.i(message.arg1);
            } else if (i9 != 4) {
                Picasso.f29854p.post(new RunnableC0300a(message));
            } else {
                this.f30059a.l((Long) message.obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(d dVar) {
        this.f30046b = dVar;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        this.f30045a = handlerThread;
        handlerThread.start();
        c0.j(handlerThread.getLooper());
        this.f30047c = new a(handlerThread.getLooper(), this);
    }

    private static long g(int i9, long j10) {
        return j10 / i9;
    }

    private void m(Bitmap bitmap, int i9) {
        int k10 = c0.k(bitmap);
        Handler handler = this.f30047c;
        handler.sendMessage(handler.obtainMessage(i9, k10, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x a() {
        return new x(this.f30046b.a(), this.f30046b.size(), this.f30048d, this.f30049e, this.f30050f, this.f30051g, this.f30052h, this.f30053i, this.f30054j, this.f30055k, this.f30056l, this.f30057m, this.f30058n, System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Bitmap bitmap) {
        m(bitmap, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(Bitmap bitmap) {
        m(bitmap, 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.f30047c.sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f30047c.sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(long j10) {
        Handler handler = this.f30047c;
        handler.sendMessage(handler.obtainMessage(4, Long.valueOf(j10)));
    }

    void h(long j10) {
        int i9 = this.f30057m + 1;
        this.f30057m = i9;
        long j11 = this.f30051g + j10;
        this.f30051g = j11;
        this.f30054j = g(i9, j11);
    }

    void i(long j10) {
        this.f30058n++;
        long j11 = this.f30052h + j10;
        this.f30052h = j11;
        this.f30055k = g(this.f30057m, j11);
    }

    void j() {
        this.f30048d++;
    }

    void k() {
        this.f30049e++;
    }

    void l(Long l10) {
        this.f30056l++;
        long longValue = this.f30050f + l10.longValue();
        this.f30050f = longValue;
        this.f30053i = g(this.f30056l, longValue);
    }
}
