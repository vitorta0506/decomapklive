package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.g0;
import io.grpc.netty.shaded.io.netty.channel.v0;
/* loaded from: classes5.dex */
public final class a1 extends g0 {

    /* loaded from: classes5.dex */
    class a extends g0.a {
        a() {
            super();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public int i() {
            return 128;
        }
    }

    public a1() {
        super(1, true);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v0
    public v0.c a() {
        return new a();
    }
}
