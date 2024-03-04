package rk;
/* loaded from: classes7.dex */
class o {
    public static int a(byte[] bArr, int i9, e eVar) {
        int h10 = (1 << eVar.h()) - 1;
        int i10 = 0;
        for (int i11 = 0; i11 < (i9 * 8) / eVar.h(); i11++) {
            i10 = (i10 + h10) - b(bArr, i11, eVar.h());
        }
        return i10 << eVar.c();
    }

    public static int b(byte[] bArr, int i9, int i10) {
        return (bArr[(i9 * i10) / 8] >>> (((~i9) & ((8 / i10) - 1)) * i10)) & ((1 << i10) - 1);
    }

    public static g c(f fVar, byte[] bArr, byte[] bArr2) {
        e c10 = fVar.c();
        int d10 = c10.d();
        int e10 = c10.e();
        int h10 = c10.h();
        byte[] bArr3 = new byte[e10 * d10];
        org.bouncycastle.crypto.e a10 = b.a(c10.b());
        q a11 = fVar.a();
        int a12 = a(bArr, d10, c10);
        bArr[d10] = (byte) ((a12 >>> 8) & 255);
        bArr[d10 + 1] = (byte) a12;
        int i9 = d10 + 23;
        byte[] b10 = a.f().d(fVar.b()).i(fVar.d()).g(0, i9).b();
        a11.d(0);
        int i10 = 0;
        while (i10 < e10) {
            org.bouncycastle.util.g.n((short) i10, b10, 20);
            int i11 = 23;
            a11.b(b10, i10 < e10 + (-1), 23);
            int b11 = b(bArr, i10, h10);
            for (int i12 = 0; i12 < b11; i12++) {
                b10[22] = (byte) i12;
                a10.c(b10, 0, i9);
                i11 = 23;
                a10.a(b10, 23);
            }
            System.arraycopy(b10, i11, bArr3, d10 * i10, d10);
            i10++;
        }
        return new g(c10, bArr2, bArr3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] d(e eVar, byte[] bArr, int i9, byte[] bArr2) {
        org.bouncycastle.crypto.e a10 = b.a(eVar.b());
        byte[] b10 = a.f().d(bArr).i(i9).h(-32640).g(0, 22).b();
        a10.c(b10, 0, b10.length);
        org.bouncycastle.crypto.e a11 = b.a(eVar.b());
        byte[] b11 = a.f().d(bArr).i(i9).g(0, a11.d() + 23).b();
        q qVar = new q(bArr, bArr2, b.a(eVar.b()));
        qVar.e(i9);
        qVar.d(0);
        int e10 = eVar.e();
        int d10 = eVar.d();
        int h10 = (1 << eVar.h()) - 1;
        int i10 = 0;
        while (i10 < e10) {
            qVar.b(b11, i10 < e10 + (-1), 23);
            org.bouncycastle.util.g.n((short) i10, b11, 20);
            for (int i11 = 0; i11 < h10; i11++) {
                b11[22] = (byte) i11;
                a11.c(b11, 0, b11.length);
                a11.a(b11, 23);
            }
            a10.c(b11, 23, d10);
            i10++;
        }
        byte[] bArr3 = new byte[a10.d()];
        a10.a(bArr3, 0);
        return bArr3;
    }
}
