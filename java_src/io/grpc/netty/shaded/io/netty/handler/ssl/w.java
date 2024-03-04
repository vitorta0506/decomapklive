package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.u;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLEngine;
/* loaded from: classes5.dex */
final class w implements u {

    /* renamed from: a  reason: collision with root package name */
    public static final w f44844a = new w();

    /* renamed from: b  reason: collision with root package name */
    private static final u.f f44845b = new a();

    /* loaded from: classes5.dex */
    static class a implements u.f {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.f
        public SSLEngine a(SSLEngine sSLEngine, u uVar, boolean z10) {
            return sSLEngine;
        }
    }

    private w() {
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.b
    public List<String> b() {
        return Collections.emptyList();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u
    public u.c c() {
        throw new UnsupportedOperationException("Application protocol negotiation unsupported");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u
    public u.e e() {
        throw new UnsupportedOperationException("Application protocol negotiation unsupported");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u
    public u.f f() {
        return f44845b;
    }
}
