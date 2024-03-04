package com.tencent.thumbplayer.utils;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private Object f34459a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f34460b = false;

    /* renamed from: c  reason: collision with root package name */
    private Throwable f34461c = null;

    private void b(long j10) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z10 = false;
        while (j10 > 0) {
            try {
                wait(j10);
                break;
            } catch (InterruptedException unused) {
                z10 = true;
                j10 -= System.currentTimeMillis() - currentTimeMillis;
                TPLogUtil.i("TPFutureResult", "getResult wait has InterruptedException, remainTime:".concat(String.valueOf(j10)));
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized Object a(long j10) {
        if (!this.f34460b) {
            b(j10);
        }
        Throwable th2 = this.f34461c;
        if (th2 != null) {
            throw th2;
        }
        return this.f34459a;
    }

    public synchronized void a(Object obj) {
        if (this.f34460b) {
            return;
        }
        this.f34459a = obj;
        this.f34460b = true;
        notifyAll();
    }

    public synchronized void a(Throwable th2) {
        if (th2 != null) {
            this.f34461c = th2;
            this.f34460b = true;
            notifyAll();
        }
    }
}
