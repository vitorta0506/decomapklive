package io.grpc.alts.internal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes5.dex */
final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f41841a;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f41843c;

    /* renamed from: e  reason: collision with root package name */
    private a f41845e;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f41842b = new byte[6];

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f41844d = new byte[12];

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(byte[] bArr) {
        com.google.common.base.o.d(bArr.length == 44);
        this.f41841a = Arrays.copyOf(bArr, 32);
        this.f41843c = Arrays.copyOfRange(bArr, 32, 44);
    }

    private static boolean c(byte[] bArr, int i9, byte[] bArr2, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (bArr[i9 + i12] != bArr2[i10 + i12]) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d() {
        return 44;
    }

    private static byte[] e(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Mac mac = Mac.getInstance("HMACSHA256");
        mac.init(new SecretKeySpec(bArr, mac.getAlgorithm()));
        mac.update(bArr2);
        mac.update((byte) 1);
        return mac.doFinal();
    }

    private static void f(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        com.google.common.base.o.d(bArr3.length == 12);
        for (int i9 = 0; i9 < 12; i9++) {
            bArr[i9] = (byte) (bArr2[i9] ^ bArr3[i9]);
        }
    }

    private void g(byte[] bArr) throws GeneralSecurityException {
        if (this.f41845e == null || !c(bArr, 2, this.f41842b, 0, 6)) {
            System.arraycopy(bArr, 2, this.f41842b, 0, 6);
            this.f41845e = new b(Arrays.copyOf(e(this.f41841a, this.f41842b), b.f()));
        }
    }

    @Override // io.grpc.alts.internal.a
    public void a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, byte[] bArr) throws GeneralSecurityException {
        g(bArr);
        f(this.f41844d, this.f41843c, bArr);
        this.f41845e.a(byteBuffer, byteBuffer2, this.f41844d);
    }

    @Override // io.grpc.alts.internal.a
    public void b(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, byte[] bArr) throws GeneralSecurityException {
        g(bArr);
        f(this.f41844d, this.f41843c, bArr);
        this.f41845e.b(byteBuffer, byteBuffer2, this.f41844d);
    }
}
