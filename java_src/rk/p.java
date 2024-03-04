package rk;
/* loaded from: classes7.dex */
class p {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte[] bArr, org.bouncycastle.crypto.e eVar) {
        eVar.c(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(short s10, org.bouncycastle.crypto.e eVar) {
        eVar.b((byte) (s10 >>> 8));
        eVar.b((byte) s10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(int i9, org.bouncycastle.crypto.e eVar) {
        eVar.b((byte) (i9 >>> 24));
        eVar.b((byte) (i9 >>> 16));
        eVar.b((byte) (i9 >>> 8));
        eVar.b((byte) i9);
    }
}
