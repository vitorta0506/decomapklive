package bc;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1241a = "BaseKeyUtil";

    private static int a(int i9, int i10, int i11) {
        if (i10 < i9) {
            i9 = i10;
        }
        return i11 < i9 ? i11 : i9;
    }

    private static boolean b(int i9) {
        return i9 >= 16;
    }

    private static boolean c(int i9, byte[] bArr) {
        return b(i9) & d(bArr);
    }

    private static boolean d(byte[] bArr) {
        return bArr.length >= 16;
    }

    public static byte[] e(String str, String str2, String str3, String str4, int i9, boolean z10) {
        return g(str, str2, str3, c.b(str4), i9, z10);
    }

    public static byte[] f(String str, String str2, String str3, byte[] bArr, int i9, int i10, boolean z10) {
        byte[] b10 = c.b(str);
        byte[] b11 = c.b(str2);
        byte[] b12 = c.b(str3);
        int a10 = a(b10.length, b11.length, b12.length);
        if (c(a10, bArr)) {
            char[] cArr = new char[a10];
            for (int i11 = 0; i11 < a10; i11++) {
                cArr[i11] = (char) ((b10[i11] ^ b11[i11]) ^ b12[i11]);
            }
            if (!z10) {
                f.d(f1241a, "exportRootKey: sha1");
                return zb.a.b(cArr, bArr, i9, i10 * 8);
            }
            f.d(f1241a, "exportRootKey: sha256");
            return zb.a.c(cArr, bArr, i9, i10 * 8);
        }
        throw new IllegalArgumentException("key length must be more than 128bit.");
    }

    public static byte[] g(String str, String str2, String str3, byte[] bArr, int i9, boolean z10) {
        return f(str, str2, str3, bArr, 10000, i9, z10);
    }

    public static byte[] h(String str, String str2, String str3, byte[] bArr, boolean z10) {
        return g(str, str2, str3, bArr, 16, z10);
    }
}
