package com.squareup.okhttp.internal.framed;

import java.util.concurrent.CountDownLatch;
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final CountDownLatch f29811a = new CountDownLatch(1);

    /* renamed from: b  reason: collision with root package name */
    private long f29812b = -1;

    /* renamed from: c  reason: collision with root package name */
    private long f29813c = -1;

    h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f29813c == -1) {
            long j10 = this.f29812b;
            if (j10 != -1) {
                this.f29813c = j10 - 1;
                this.f29811a.countDown();
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f29813c == -1 && this.f29812b != -1) {
            this.f29813c = System.nanoTime();
            this.f29811a.countDown();
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (this.f29812b == -1) {
            this.f29812b = System.nanoTime();
            return;
        }
        throw new IllegalStateException();
    }
}
