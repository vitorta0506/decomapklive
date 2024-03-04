package io.reactivex.internal.util;

import java.util.concurrent.CountDownLatch;
/* loaded from: classes7.dex */
public final class d extends CountDownLatch implements vh.g<Throwable>, vh.a {

    /* renamed from: a  reason: collision with root package name */
    public Throwable f52756a;

    public d() {
        super(1);
    }

    @Override // vh.g
    /* renamed from: a */
    public void accept(Throwable th2) {
        this.f52756a = th2;
        countDown();
    }

    @Override // vh.a
    public void run() {
        countDown();
    }
}
