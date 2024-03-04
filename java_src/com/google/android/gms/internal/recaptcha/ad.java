package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ad<V> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final Future<V> f8494a;

    /* renamed from: b  reason: collision with root package name */
    final yc<? super V> f8495b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(Future<V> future, yc<? super V> ycVar) {
        this.f8494a = future;
        this.f8495b = ycVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable a10;
        Future<V> future = this.f8494a;
        if ((future instanceof de) && (a10 = ee.a((de) future)) != null) {
            this.f8495b.a(a10);
            return;
        }
        try {
            this.f8495b.b(dd.l(this.f8494a));
        } catch (Error e10) {
            e = e10;
            this.f8495b.a(e);
        } catch (RuntimeException e11) {
            e = e11;
            this.f8495b.a(e);
        } catch (ExecutionException e12) {
            this.f8495b.a(e12.getCause());
        }
    }

    public final String toString() {
        t7 a10 = u7.a(this);
        a10.a(this.f8495b);
        return a10.toString();
    }
}
