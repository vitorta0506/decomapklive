package io.grpc.netty.shaded.io.netty.channel.unix;

import io.grpc.netty.shaded.io.netty.channel.s;
import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kg.j;
import kg.s0;
/* loaded from: classes5.dex */
public final class a implements s.e {

    /* renamed from: f  reason: collision with root package name */
    private static final int f43821f;

    /* renamed from: g  reason: collision with root package name */
    public static final int f43822g;

    /* renamed from: h  reason: collision with root package name */
    private static final int f43823h;

    /* renamed from: a  reason: collision with root package name */
    private final long f43824a;

    /* renamed from: b  reason: collision with root package name */
    private final j f43825b;

    /* renamed from: c  reason: collision with root package name */
    private int f43826c;

    /* renamed from: d  reason: collision with root package name */
    private long f43827d;

    /* renamed from: e  reason: collision with root package name */
    private long f43828e;

    static {
        int a10 = Buffer.a();
        f43821f = a10;
        int i9 = a10 * 2;
        f43822g = i9;
        f43823h = b.f43829a * i9;
    }

    public a() {
        this(s0.j(Buffer.b(f43823h)).d2(0, 0));
    }

    private boolean b(long j10, long j11, int i9) {
        long j12 = i9;
        if (this.f43828e - j12 >= this.f43827d || this.f43826c <= 0) {
            int F = this.f43825b.F();
            int i10 = this.f43826c;
            if (F < (i10 + 1) * f43822g) {
                return false;
            }
            int f10 = f(i10);
            int i11 = f43821f;
            int i12 = f10 + i11;
            this.f43827d += j12;
            this.f43826c++;
            if (i11 == 8) {
                if (t.T()) {
                    t.I0(f10 + j10, j11);
                    t.I0(i12 + j10, j12);
                } else {
                    this.f43825b.g2(f10, j11);
                    this.f43825b.g2(i12, j12);
                }
            } else if (t.T()) {
                t.G0(f10 + j10, (int) j11);
                t.G0(i12 + j10, i9);
            } else {
                this.f43825b.e2(f10, (int) j11);
                this.f43825b.e2(i12, i9);
            }
            return true;
        }
        return false;
    }

    private static int f(int i9) {
        return f43822g * i9;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.s.e
    public boolean a(Object obj) throws Exception {
        if (obj instanceof j) {
            j jVar = (j) obj;
            return c(jVar, jVar.Q1(), jVar.P1());
        }
        return false;
    }

    public boolean c(j jVar, int i9, int i10) {
        ByteBuffer e12;
        if (this.f43826c == b.f43829a) {
            return false;
        }
        if (jVar.s1() == 1) {
            if (i10 == 0) {
                return true;
            }
            if (jVar.b1()) {
                return b(this.f43824a, jVar.p1() + i9, i10);
            }
            return b(this.f43824a, Buffer.d(jVar.e1(i9, i10)) + e12.position(), i10);
        }
        ByteBuffer[] u12 = jVar.u1(i9, i10);
        for (ByteBuffer byteBuffer : u12) {
            int remaining = byteBuffer.remaining();
            if (remaining != 0 && (!b(this.f43824a, Buffer.d(byteBuffer) + byteBuffer.position(), remaining) || this.f43826c == b.f43829a)) {
                return false;
            }
        }
        return true;
    }

    public void d() {
        this.f43826c = 0;
        this.f43827d = 0L;
    }

    public int e() {
        return this.f43826c;
    }

    public long g() {
        return this.f43828e;
    }

    public void h(long j10) {
        this.f43828e = Math.min(b.f43831c, io.grpc.netty.shaded.io.netty.util.internal.s.m(j10, "maxBytes"));
    }

    public long i(int i9) {
        return this.f43824a + f(i9);
    }

    public void j() {
        this.f43825b.release();
    }

    public long k() {
        return this.f43827d;
    }

    public a(j jVar) {
        j w12;
        this.f43828e = b.f43831c;
        if (t.T()) {
            w12 = jVar;
        } else {
            w12 = jVar.w1(t.A ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        }
        this.f43825b = w12;
        if (jVar.b1()) {
            this.f43824a = jVar.p1();
        } else {
            this.f43824a = Buffer.d(jVar.e1(0, jVar.F()));
        }
    }
}
