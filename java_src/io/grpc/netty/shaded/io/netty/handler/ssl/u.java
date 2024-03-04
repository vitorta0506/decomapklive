package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLEngine;
@Deprecated
/* loaded from: classes5.dex */
public interface u extends io.grpc.netty.shaded.io.netty.handler.ssl.b {

    /* loaded from: classes5.dex */
    public static abstract class a implements f {
        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.f
        public final SSLEngine a(SSLEngine sSLEngine, u uVar, boolean z10) {
            return b(sSLEngine, kg.k.f53822a, uVar, z10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract SSLEngine b(SSLEngine sSLEngine, kg.k kVar, u uVar, boolean z10);
    }

    /* loaded from: classes5.dex */
    public interface b {
        void a();

        void b(String str) throws Exception;
    }

    /* loaded from: classes5.dex */
    public interface c {
        b a(SSLEngine sSLEngine, List<String> list);
    }

    /* loaded from: classes5.dex */
    public interface d {
        void a();

        String b(List<String> list) throws Exception;
    }

    /* loaded from: classes5.dex */
    public interface e {
        d a(SSLEngine sSLEngine, Set<String> set);
    }

    /* loaded from: classes5.dex */
    public interface f {
        SSLEngine a(SSLEngine sSLEngine, u uVar, boolean z10);
    }

    c c();

    e e();

    f f();
}
