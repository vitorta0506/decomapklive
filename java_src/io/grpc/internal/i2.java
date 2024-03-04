package io.grpc.internal;

import io.grpc.Status;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class i2 {

    /* renamed from: c  reason: collision with root package name */
    public static final i2 f42796c = new i2(new io.grpc.c1[0]);

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.c1[] f42797a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f42798b = new AtomicBoolean(false);

    i2(io.grpc.c1[] c1VarArr) {
        this.f42797a = c1VarArr;
    }

    public static i2 h(io.grpc.k[] kVarArr, io.grpc.a aVar, io.grpc.s0 s0Var) {
        i2 i2Var = new i2(kVarArr);
        for (io.grpc.k kVar : kVarArr) {
            kVar.m(aVar, s0Var);
        }
        return i2Var;
    }

    public void a() {
        for (io.grpc.c1 c1Var : this.f42797a) {
            ((io.grpc.k) c1Var).j();
        }
    }

    public void b(io.grpc.s0 s0Var) {
        for (io.grpc.c1 c1Var : this.f42797a) {
            ((io.grpc.k) c1Var).k(s0Var);
        }
    }

    public void c() {
        for (io.grpc.c1 c1Var : this.f42797a) {
            ((io.grpc.k) c1Var).l();
        }
    }

    public void d(int i9) {
        for (io.grpc.c1 c1Var : this.f42797a) {
            c1Var.a(i9);
        }
    }

    public void e(int i9, long j10, long j11) {
        for (io.grpc.c1 c1Var : this.f42797a) {
            c1Var.b(i9, j10, j11);
        }
    }

    public void f(long j10) {
        for (io.grpc.c1 c1Var : this.f42797a) {
            c1Var.c(j10);
        }
    }

    public void g(long j10) {
        for (io.grpc.c1 c1Var : this.f42797a) {
            c1Var.d(j10);
        }
    }

    public void i(int i9) {
        for (io.grpc.c1 c1Var : this.f42797a) {
            c1Var.e(i9);
        }
    }

    public void j(int i9, long j10, long j11) {
        for (io.grpc.c1 c1Var : this.f42797a) {
            c1Var.f(i9, j10, j11);
        }
    }

    public void k(long j10) {
        for (io.grpc.c1 c1Var : this.f42797a) {
            c1Var.g(j10);
        }
    }

    public void l(long j10) {
        for (io.grpc.c1 c1Var : this.f42797a) {
            c1Var.h(j10);
        }
    }

    public void m(Status status) {
        if (this.f42798b.compareAndSet(false, true)) {
            for (io.grpc.c1 c1Var : this.f42797a) {
                c1Var.i(status);
            }
        }
    }
}
