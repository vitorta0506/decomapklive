package n3;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
final class c extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<a> f55347a;

    /* renamed from: b  reason: collision with root package name */
    private final long f55348b;

    /* renamed from: c  reason: collision with root package name */
    final CountDownLatch f55349c = new CountDownLatch(1);

    /* renamed from: d  reason: collision with root package name */
    boolean f55350d = false;

    public c(a aVar, long j10) {
        this.f55347a = new WeakReference<>(aVar);
        this.f55348b = j10;
        start();
    }

    private final void b() {
        a aVar = this.f55347a.get();
        if (aVar != null) {
            aVar.c();
            this.f55350d = true;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            if (this.f55349c.await(this.f55348b, TimeUnit.MILLISECONDS)) {
                return;
            }
            b();
        } catch (InterruptedException unused) {
            b();
        }
    }
}
