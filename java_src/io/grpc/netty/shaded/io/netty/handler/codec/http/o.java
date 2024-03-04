package io.grpc.netty.shaded.io.netty.handler.codec.http;

import io.grpc.netty.shaded.io.netty.handler.codec.PrematureChannelClosureException;
import io.grpc.netty.shaded.io.netty.handler.codec.http.HttpClientUpgradeHandler;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class o extends io.grpc.netty.shaded.io.netty.channel.a0<g0, e0> implements HttpClientUpgradeHandler.a {

    /* renamed from: h  reason: collision with root package name */
    private final Queue<y> f43972h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f43973i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f43974j;

    /* renamed from: k  reason: collision with root package name */
    private final AtomicLong f43975k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f43976l;

    /* loaded from: classes5.dex */
    private final class b extends g0 {
        b(int i9, int i10, int i11, boolean z10) {
            super(i9, i10, i11, z10);
        }

        private void o0(Object obj) {
            if (obj != null && (obj instanceof k0)) {
                o.this.f43975k.decrementAndGet();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.b0
        public boolean d0(v vVar) {
            y yVar = (y) o.this.f43972h.poll();
            int a10 = ((f0) vVar).t().a();
            if (a10 >= 100 && a10 < 200) {
                return super.d0(vVar);
            }
            if (yVar != null) {
                char charAt = yVar.c().charAt(0);
                if (charAt != 'C') {
                    if (charAt == 'H' && y.f44083d.equals(yVar)) {
                        return true;
                    }
                } else if (a10 == 200 && y.f44089j.equals(yVar)) {
                    if (!o.this.f43973i) {
                        o.this.f43974j = true;
                        o.this.f43972h.clear();
                    }
                    return true;
                }
            }
            return super.d0(vVar);
        }

        @Override // pg.a, io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
        public void t(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            super.t(mVar);
            if (o.this.f43976l) {
                long j10 = o.this.f43975k.get();
                if (j10 > 0) {
                    mVar.v(new PrematureChannelClosureException("channel gone inactive with " + j10 + " missing response(s)"));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.b0, pg.a
        public void x(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception {
            if (o.this.f43974j) {
                int s10 = s();
                if (s10 == 0) {
                    return;
                }
                list.add(jVar.z1(s10));
                return;
            }
            super.x(mVar, jVar, list);
            if (o.this.f43976l) {
                int size = list.size();
                for (int size2 = list.size(); size2 < size; size2++) {
                    o0(list.get(size2));
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    private final class c extends e0 {

        /* renamed from: i  reason: collision with root package name */
        boolean f43977i;

        private c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.c0, pg.m
        public void u(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj, List<Object> list) throws Exception {
            if (this.f43977i) {
                list.add(io.grpc.netty.shaded.io.netty.util.r.b(obj));
                return;
            }
            if (obj instanceof d0) {
                o.this.f43972h.offer(((d0) obj).method());
            }
            super.u(mVar, obj, list);
            if (o.this.f43976l && !o.this.f43974j && (obj instanceof k0)) {
                o.this.f43975k.incrementAndGet();
            }
        }
    }

    public o() {
        this(4096, 8192, 8192, false);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.HttpClientUpgradeHandler.a
    public void f(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        mVar.J().O0(this);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.HttpClientUpgradeHandler.a
    public void i(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        ((c) y()).f43977i = true;
    }

    public o(int i9, int i10, int i11, boolean z10) {
        this(i9, i10, i11, z10, true);
    }

    public o(int i9, int i10, int i11, boolean z10, boolean z11) {
        this(i9, i10, i11, z10, z11, false);
    }

    public o(int i9, int i10, int i11, boolean z10, boolean z11, boolean z12) {
        this.f43972h = new ArrayDeque();
        this.f43975k = new AtomicLong();
        x(new b(i9, i10, i11, z11), new c());
        this.f43976l = z10;
        this.f43973i = z12;
    }
}
