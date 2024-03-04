package io.grpc.netty.shaded.io.netty.internal.tcnative;

import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Objects;
/* loaded from: classes5.dex */
final class a implements AsyncSSLPrivateKeyMethod {

    /* renamed from: a  reason: collision with root package name */
    private final rg.c f44960a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(rg.c cVar) {
        Objects.requireNonNull(cVar, PushConstants.MZ_PUSH_MESSAGE_METHOD);
        this.f44960a = cVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.internal.tcnative.AsyncSSLPrivateKeyMethod
    public void a(long j10, int i9, byte[] bArr, rg.b<byte[]> bVar) {
        try {
            bVar.b(j10, this.f44960a.b(j10, i9, bArr));
        } catch (Throwable th2) {
            bVar.a(j10, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.internal.tcnative.AsyncSSLPrivateKeyMethod
    public void b(long j10, byte[] bArr, rg.b<byte[]> bVar) {
        try {
            bVar.b(j10, this.f44960a.a(j10, bArr));
        } catch (Throwable th2) {
            bVar.a(j10, th2);
        }
    }
}
