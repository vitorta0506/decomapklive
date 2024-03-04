package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.u;
import java.nio.ByteBuffer;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class s extends a0 {

    /* renamed from: c  reason: collision with root package name */
    private final u.b f44745c;

    /* renamed from: d  reason: collision with root package name */
    private final c f44746d;

    /* loaded from: classes5.dex */
    class a implements BiConsumer<SSLEngine, c> {
        a() {
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a */
        public void accept(SSLEngine sSLEngine, c cVar) {
            t.e(sSLEngine, cVar);
        }
    }

    /* loaded from: classes5.dex */
    class b implements BiConsumer<SSLEngine, List<String>> {
        b() {
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a */
        public void accept(SSLEngine sSLEngine, List<String> list) {
            t.d(sSLEngine, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class c implements BiFunction<SSLEngine, List<String>, String> {

        /* renamed from: a  reason: collision with root package name */
        private final u.d f44747a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f44748b;

        c(u.d dVar) {
            this.f44747a = dVar;
        }

        @Override // java.util.function.BiFunction
        /* renamed from: a */
        public String apply(SSLEngine sSLEngine, List<String> list) {
            this.f44748b = true;
            try {
                String b10 = this.f44747a.b(list);
                return b10 == null ? "" : b10;
            } catch (Exception unused) {
                return null;
            }
        }

        void b() {
            if (!this.f44748b && s.this.getApplicationProtocol().isEmpty()) {
                this.f44747a.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(SSLEngine sSLEngine, u uVar, boolean z10, BiConsumer<SSLEngine, c> biConsumer, BiConsumer<SSLEngine, List<String>> biConsumer2) {
        super(sSLEngine);
        if (z10) {
            this.f44745c = null;
            c cVar = new c(uVar.e().a(this, new LinkedHashSet(uVar.b())));
            this.f44746d = cVar;
            biConsumer.accept(sSLEngine, cVar);
            return;
        }
        this.f44745c = uVar.c().a(this, uVar.b());
        this.f44746d = null;
        biConsumer2.accept(sSLEngine, uVar.b());
    }

    private SSLEngineResult d(SSLEngineResult sSLEngineResult) throws SSLException {
        if (sSLEngineResult.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
            c cVar = this.f44746d;
            if (cVar == null) {
                try {
                    String applicationProtocol = getApplicationProtocol();
                    if (applicationProtocol.isEmpty()) {
                        this.f44745c.a();
                    } else {
                        this.f44745c.b(applicationProtocol);
                    }
                } catch (Throwable th2) {
                    throw v1.s(th2);
                }
            } else {
                cVar.b();
            }
        }
        return sSLEngineResult;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, io.grpc.netty.shaded.io.netty.handler.ssl.a
    public String a() {
        String applicationProtocol = getApplicationProtocol();
        if (applicationProtocol == null || applicationProtocol.isEmpty()) {
            return null;
        }
        return applicationProtocol;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0
    public void c(String str) {
    }

    @Override // javax.net.ssl.SSLEngine
    public String getApplicationProtocol() {
        return t.a(b());
    }

    @Override // javax.net.ssl.SSLEngine
    public String getHandshakeApplicationProtocol() {
        return t.b(b());
    }

    @Override // javax.net.ssl.SSLEngine
    public BiFunction<SSLEngine, List<String>, String> getHandshakeApplicationProtocolSelector() {
        return t.c(b());
    }

    @Override // javax.net.ssl.SSLEngine
    public void setHandshakeApplicationProtocolSelector(BiFunction<SSLEngine, List<String>, String> biFunction) {
        t.e(b(), biFunction);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        return d(super.unwrap(byteBuffer, byteBuffer2));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        return d(super.wrap(byteBuffer, byteBuffer2));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr) throws SSLException {
        return d(super.unwrap(byteBuffer, byteBufferArr));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer[] byteBufferArr, ByteBuffer byteBuffer) throws SSLException {
        return d(super.wrap(byteBufferArr, byteBuffer));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr, int i9, int i10) throws SSLException {
        return d(super.unwrap(byteBuffer, byteBufferArr, i9, i10));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer[] byteBufferArr, int i9, int i10, ByteBuffer byteBuffer) throws SSLException {
        return d(super.wrap(byteBufferArr, i9, i10, byteBuffer));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(SSLEngine sSLEngine, u uVar, boolean z10) {
        this(sSLEngine, uVar, z10, new a(), new b());
    }
}
