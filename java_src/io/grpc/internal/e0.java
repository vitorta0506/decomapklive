package io.grpc.internal;

import io.grpc.internal.k;
import java.util.Random;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class e0 implements k {

    /* renamed from: a  reason: collision with root package name */
    private Random f42561a = new Random();

    /* renamed from: b  reason: collision with root package name */
    private long f42562b = TimeUnit.SECONDS.toNanos(1);

    /* renamed from: c  reason: collision with root package name */
    private long f42563c = TimeUnit.MINUTES.toNanos(2);

    /* renamed from: d  reason: collision with root package name */
    private double f42564d = 1.6d;

    /* renamed from: e  reason: collision with root package name */
    private double f42565e = 0.2d;

    /* renamed from: f  reason: collision with root package name */
    private long f42566f = this.f42562b;

    /* loaded from: classes5.dex */
    public static final class a implements k.a {
        @Override // io.grpc.internal.k.a
        public k get() {
            return new e0();
        }
    }

    private long b(double d10, double d11) {
        com.google.common.base.o.d(d11 >= d10);
        return (long) ((this.f42561a.nextDouble() * (d11 - d10)) + d10);
    }

    @Override // io.grpc.internal.k
    public long a() {
        long j10 = this.f42566f;
        double d10 = j10;
        this.f42566f = Math.min((long) (this.f42564d * d10), this.f42563c);
        double d11 = this.f42565e;
        return j10 + b((-d11) * d10, d11 * d10);
    }
}
