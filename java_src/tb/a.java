package tb;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f58090a = "0123456789ABCDEF".toCharArray();

    private static byte[] a(char[] cArr) {
        if ((cArr.length & 1) == 0) {
            byte[] bArr = new byte[cArr.length >> 1];
            int i9 = 0;
            int i10 = 0;
            while (i9 < cArr.length) {
                int digit = Character.digit(cArr[i9], 16);
                if (digit == -1) {
                    throw new IllegalArgumentException("Illegal hexadecimal character at index " + i9);
                }
                int i11 = i9 + 1;
                int digit2 = Character.digit(cArr[i11], 16);
                if (digit2 == -1) {
                    throw new IllegalArgumentException("Illegal hexadecimal character at index " + i11);
                }
                i9 = i11 + 1;
                bArr[i10] = (byte) (((digit << 4) | digit2) & 255);
                i10++;
            }
            return bArr;
        }
        throw new IllegalArgumentException("Odd number of characters.");
    }

    public static byte[] b(String str) {
        return a(str.toCharArray());
    }

    public static String c(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            char[] cArr = f58090a;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }
}
