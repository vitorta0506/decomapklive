package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.s;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import javax.net.ssl.SSLEngine;
/* loaded from: classes5.dex */
final class f extends s {

    /* loaded from: classes5.dex */
    class a implements BiConsumer<SSLEngine, s.c> {
        a() {
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a */
        public void accept(SSLEngine sSLEngine, s.c cVar) {
            g.f(sSLEngine, cVar);
        }
    }

    /* loaded from: classes5.dex */
    class b implements BiConsumer<SSLEngine, List<String>> {
        b() {
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a */
        public void accept(SSLEngine sSLEngine, List<String> list) {
            g.e(sSLEngine, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(SSLEngine sSLEngine, u uVar, boolean z10) {
        super(sSLEngine, uVar, z10, new a(), new b());
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s, javax.net.ssl.SSLEngine
    public String getApplicationProtocol() {
        return g.b(b());
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s, javax.net.ssl.SSLEngine
    public String getHandshakeApplicationProtocol() {
        return g.c(b());
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s, javax.net.ssl.SSLEngine
    public BiFunction<SSLEngine, List<String>, String> getHandshakeApplicationProtocolSelector() {
        return g.d(b());
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s, javax.net.ssl.SSLEngine
    public void setHandshakeApplicationProtocolSelector(BiFunction<SSLEngine, List<String>, String> biFunction) {
        g.f(b(), biFunction);
    }
}
