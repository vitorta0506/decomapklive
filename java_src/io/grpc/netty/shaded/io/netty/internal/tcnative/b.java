package io.grpc.netty.shaded.io.netty.internal.tcnative;

import io.grpc.netty.shaded.io.netty.internal.tcnative.f;
/* loaded from: classes5.dex */
final class b extends f {

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f44961f;

    /* renamed from: g  reason: collision with root package name */
    private final byte[][] f44962g;

    /* renamed from: h  reason: collision with root package name */
    private final CertificateCallback f44963h;

    @Override // io.grpc.netty.shaded.io.netty.internal.tcnative.f
    protected void d(long j10, f.c cVar) {
        try {
            this.f44963h.a(j10, this.f44961f, this.f44962g);
            cVar.a(j10, 1);
        } catch (Exception unused) {
            cVar.a(j10, 0);
        }
    }
}
