package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.LambdaObserver;
/* loaded from: classes7.dex */
public final class k {
    public static <T> void a(io.reactivex.p<? extends T> pVar) {
        io.reactivex.internal.util.d dVar = new io.reactivex.internal.util.d();
        LambdaObserver lambdaObserver = new LambdaObserver(xh.a.g(), dVar, dVar, xh.a.g());
        pVar.subscribe(lambdaObserver);
        io.reactivex.internal.util.c.a(dVar, lambdaObserver);
        Throwable th2 = dVar.f52756a;
        if (th2 != null) {
            throw io.reactivex.internal.util.f.d(th2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> void b(io.reactivex.p<? extends T> r3, io.reactivex.r<? super T> r4) {
        /*
            java.util.concurrent.LinkedBlockingQueue r0 = new java.util.concurrent.LinkedBlockingQueue
            r0.<init>()
            io.reactivex.internal.observers.BlockingObserver r1 = new io.reactivex.internal.observers.BlockingObserver
            r1.<init>(r0)
            r4.onSubscribe(r1)
            r3.subscribe(r1)
        L10:
            boolean r3 = r1.isDisposed()
            if (r3 == 0) goto L17
            goto L3a
        L17:
            java.lang.Object r3 = r0.poll()
            if (r3 != 0) goto L2a
            java.lang.Object r3 = r0.take()     // Catch: java.lang.InterruptedException -> L22
            goto L2a
        L22:
            r3 = move-exception
            r1.dispose()
            r4.onError(r3)
            return
        L2a:
            boolean r2 = r1.isDisposed()
            if (r2 != 0) goto L3a
            java.lang.Object r2 = io.reactivex.internal.observers.BlockingObserver.TERMINATED
            if (r3 == r2) goto L3a
            boolean r3 = io.reactivex.internal.util.NotificationLite.acceptFull(r3, r4)
            if (r3 == 0) goto L10
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.k.b(io.reactivex.p, io.reactivex.r):void");
    }

    public static <T> void c(io.reactivex.p<? extends T> pVar, vh.g<? super T> gVar, vh.g<? super Throwable> gVar2, vh.a aVar) {
        xh.b.e(gVar, "onNext is null");
        xh.b.e(gVar2, "onError is null");
        xh.b.e(aVar, "onComplete is null");
        b(pVar, new LambdaObserver(gVar, gVar2, aVar, xh.a.g()));
    }
}
