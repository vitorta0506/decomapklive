package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.u;
import java.nio.ByteBuffer;
import java.util.LinkedHashSet;
import java.util.List;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
/* loaded from: classes5.dex */
abstract class k extends a0 {

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f44624c = io.grpc.netty.shaded.io.netty.util.internal.c0.d("io.grpc.netty.shaded.io.netty.handler.ssl.conscrypt.useBufferAllocator", true);

    /* loaded from: classes5.dex */
    private static final class b extends org.conscrypt.c {

        /* renamed from: b  reason: collision with root package name */
        private final kg.k f44625b;

        b(kg.k kVar) {
            this.f44625b = kVar;
        }
    }

    /* loaded from: classes5.dex */
    private static final class c extends k {

        /* renamed from: d  reason: collision with root package name */
        private final u.b f44626d;

        /* loaded from: classes5.dex */
        class a extends org.conscrypt.m {
            a() {
            }
        }

        c(SSLEngine sSLEngine, kg.k kVar, u uVar) {
            super(sSLEngine, kVar, uVar.b());
            org.conscrypt.i.m(sSLEngine, new a());
            this.f44626d = (u.b) io.grpc.netty.shaded.io.netty.util.internal.s.h(uVar.c().a(this, uVar.b()), "protocolListener");
        }
    }

    /* loaded from: classes5.dex */
    private static final class d extends k {

        /* renamed from: d  reason: collision with root package name */
        private final u.d f44628d;

        /* loaded from: classes5.dex */
        class a extends org.conscrypt.m {
            a() {
            }
        }

        d(SSLEngine sSLEngine, kg.k kVar, u uVar) {
            super(sSLEngine, kVar, uVar.b());
            org.conscrypt.i.m(sSLEngine, new a());
            this.f44628d = (u.d) io.grpc.netty.shaded.io.netty.util.internal.s.h(uVar.e().a(this, new LinkedHashSet(uVar.b())), "protocolSelector");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k e(SSLEngine sSLEngine, kg.k kVar, u uVar) {
        return new c(sSLEngine, kVar, uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k f(SSLEngine sSLEngine, kg.k kVar, u uVar) {
        return new d(sSLEngine, kVar, uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d(int i9, int i10) {
        return (int) Math.min(2147483647L, i9 + (org.conscrypt.i.h(b()) * i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SSLEngineResult g(ByteBuffer[] byteBufferArr, ByteBuffer[] byteBufferArr2) throws SSLException {
        return org.conscrypt.i.s(b(), byteBufferArr, byteBufferArr2);
    }

    private k(SSLEngine sSLEngine, kg.k kVar, List<String> list) {
        super(sSLEngine);
        if (f44624c) {
            org.conscrypt.i.l(sSLEngine, new b(kVar));
        }
        org.conscrypt.i.j(sSLEngine, (String[]) list.toArray(new String[0]));
    }
}
