package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.u;
import java.util.LinkedHashSet;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLException;
import org.eclipse.jetty.npn.NextProtoNego;
/* loaded from: classes5.dex */
final class d0 extends a0 {

    /* renamed from: c  reason: collision with root package name */
    private static boolean f44506c;

    /* loaded from: classes5.dex */
    class a implements NextProtoNego.ServerProvider {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u.b f44507a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ u f44508b;

        a(u.b bVar, u uVar) {
            this.f44507a = bVar;
            this.f44508b = uVar;
        }
    }

    /* loaded from: classes5.dex */
    class b implements NextProtoNego.ClientProvider {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u.d f44510a;

        b(u.d dVar) {
            this.f44510a = dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(SSLEngine sSLEngine, u uVar, boolean z10) {
        super(sSLEngine);
        io.grpc.netty.shaded.io.netty.util.internal.s.h(uVar, "applicationNegotiator");
        if (z10) {
            NextProtoNego.put(sSLEngine, new a((u.b) io.grpc.netty.shaded.io.netty.util.internal.s.h(uVar.c().a(this, uVar.b()), "protocolListener"), uVar));
        } else {
            NextProtoNego.put(sSLEngine, new b((u.d) io.grpc.netty.shaded.io.netty.util.internal.s.h(uVar.e().a(this, new LinkedHashSet(uVar.b())), "protocolSelector")));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d() {
        e();
        return f44506c;
    }

    private static void e() {
        if (f44506c) {
            return;
        }
        try {
            Class.forName("sun.security.ssl.NextProtoNegoExtension", true, null);
            f44506c = true;
        } catch (Exception unused) {
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
    public void closeInbound() throws SSLException {
        NextProtoNego.remove(b());
        super.closeInbound();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a0, javax.net.ssl.SSLEngine
    public void closeOutbound() {
        NextProtoNego.remove(b());
        super.closeOutbound();
    }
}
