package io.grpc.alts.internal;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public final class y extends io.grpc.netty.shaded.io.netty.channel.f0 {

    /* renamed from: o  reason: collision with root package name */
    private final List<io.grpc.netty.shaded.io.netty.channel.y> f41975o;

    /* renamed from: p  reason: collision with root package name */
    private int f41976p;

    /* renamed from: q  reason: collision with root package name */
    private int f41977q;

    /* renamed from: r  reason: collision with root package name */
    private int f41978r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f41979s;

    public y(io.grpc.netty.shaded.io.netty.channel.e eVar, ug.j jVar, int i9) {
        super(eVar, jVar);
        this.f41975o = new ArrayList(i9);
    }

    private boolean r0() {
        return this.f41977q + this.f41978r < this.f41976p;
    }

    private void v0(Throwable th2) {
        for (int i9 = 0; i9 < this.f41975o.size(); i9++) {
            this.f41975o.get(i9).z(th2);
        }
    }

    private void x0(Void r32) {
        for (int i9 = 0; i9 < this.f41975o.size(); i9++) {
            this.f41975o.get(i9).B(r32);
        }
    }

    public void n0(io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f41975o.add(yVar);
    }

    public io.grpc.netty.shaded.io.netty.channel.y t0() {
        if (!this.f41979s) {
            this.f41979s = true;
            if (this.f41977q == this.f41976p) {
                x0(null);
                return super.m0(null);
            }
        }
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f0, io.grpc.netty.shaded.io.netty.channel.y
    public io.grpc.netty.shaded.io.netty.channel.y u(Throwable th2) {
        z(th2);
        return this;
    }

    public io.grpc.netty.shaded.io.netty.channel.y u0() {
        com.google.common.base.o.A(!this.f41979s, "Done allocating. No more promises can be allocated.");
        this.f41976p++;
        return this;
    }

    @Override // ug.h, ug.x
    /* renamed from: w0 */
    public boolean B(Void r42) {
        if (r0()) {
            int i9 = this.f41977q + 1;
            this.f41977q = i9;
            if (i9 == this.f41976p && this.f41979s) {
                x0(r42);
                return super.B(r42);
            }
            return true;
        }
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f0, ug.h, ug.x
    /* renamed from: x */
    public io.grpc.netty.shaded.io.netty.channel.y m0(Void r12) {
        B(r12);
        return this;
    }

    @Override // ug.h, ug.x
    public boolean z(Throwable th2) {
        if (r0()) {
            int i9 = this.f41978r + 1;
            this.f41978r = i9;
            if (i9 == 1) {
                v0(th2);
                return super.z(th2);
            }
            return true;
        }
        return false;
    }
}
