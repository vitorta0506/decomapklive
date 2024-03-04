package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.r0;
/* loaded from: classes5.dex */
public final class h0 implements r0 {

    /* renamed from: b  reason: collision with root package name */
    public static final r0 f43703b = new h0(8);

    /* renamed from: a  reason: collision with root package name */
    private final r0.a f43704a;

    /* loaded from: classes5.dex */
    private static final class b implements r0.a {

        /* renamed from: a  reason: collision with root package name */
        private final int f43705a;

        @Override // io.grpc.netty.shaded.io.netty.channel.r0.a
        public int size(Object obj) {
            if (obj instanceof kg.j) {
                return ((kg.j) obj).P1();
            }
            if (obj instanceof kg.l) {
                return ((kg.l) obj).content().P1();
            }
            if (obj instanceof p0) {
                return 0;
            }
            return this.f43705a;
        }

        private b(int i9) {
            this.f43705a = i9;
        }
    }

    public h0(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "unknownSize");
        this.f43704a = new b(i9);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.r0
    public r0.a a() {
        return this.f43704a;
    }
}
