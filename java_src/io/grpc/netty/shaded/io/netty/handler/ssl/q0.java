package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.cert.X509Certificate;
/* loaded from: classes5.dex */
interface q0 extends io.grpc.netty.shaded.io.netty.util.s {
    long c();

    X509Certificate[] f();

    long m();

    @Override // io.grpc.netty.shaded.io.netty.util.s
    boolean release();

    @Override // io.grpc.netty.shaded.io.netty.util.s
    q0 retain();
}
