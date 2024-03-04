package io.grpc.netty.shaded.io.netty.handler.codec.http;

import kg.s0;
/* loaded from: classes5.dex */
public interface k0 extends p {

    /* renamed from: k3  reason: collision with root package name */
    public static final k0 f43971k3 = new a();

    /* loaded from: classes5.dex */
    static class a implements k0 {
        a() {
        }

        @Override // pg.f
        public pg.e a() {
            return pg.e.f56848e;
        }

        @Override // kg.l
        public kg.j content() {
            return s0.f53902d;
        }

        @Override // pg.f
        public void e(pg.e eVar) {
            throw new UnsupportedOperationException("read only");
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        /* renamed from: j */
        public k0 retain() {
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        /* renamed from: k */
        public k0 touch(Object obj) {
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        public int refCnt() {
            return 1;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        public boolean release() {
            return false;
        }

        public String toString() {
            return "EmptyLastHttpContent";
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.k0
        public t x() {
            return k.f43969c;
        }
    }

    t x();
}
