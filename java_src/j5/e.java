package j5;
/* loaded from: classes2.dex */
public abstract class e extends b {
    protected static int b(CharSequence charSequence, int i9, int i10) {
        if (i9 < i10) {
            int i11 = i9 + 1;
            char charAt = charSequence.charAt(i9);
            if (charAt < 55296 || charAt > 57343) {
                return charAt;
            }
            if (charAt > 56319) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unexpected low surrogate character '");
                sb2.append(charAt);
                sb2.append("' with value ");
                sb2.append((int) charAt);
                sb2.append(" at index ");
                sb2.append(i11 - 1);
                throw new IllegalArgumentException(sb2.toString());
            } else if (i11 == i10) {
                return -charAt;
            } else {
                char charAt2 = charSequence.charAt(i11);
                if (Character.isLowSurrogate(charAt2)) {
                    return Character.toCodePoint(charAt, charAt2);
                }
                throw new IllegalArgumentException("Expected low surrogate but got char '" + charAt2 + "' with value " + ((int) charAt2) + " at index " + i11);
            }
        }
        throw new IndexOutOfBoundsException("Index exceeds specified range");
    }

    private static char[] e(char[] cArr, int i9, int i10) {
        char[] cArr2 = new char[i10];
        if (i9 > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i9);
        }
        return cArr2;
    }

    protected abstract char[] c(int i9);

    /* JADX INFO: Access modifiers changed from: protected */
    public final String d(String str, int i9) {
        int length = str.length();
        char[] a10 = d.a();
        int i10 = 0;
        int i11 = 0;
        while (i9 < length) {
            int b10 = b(str, i9, length);
            if (b10 >= 0) {
                char[] c10 = c(b10);
                int i12 = (Character.isSupplementaryCodePoint(b10) ? 2 : 1) + i9;
                if (c10 != null) {
                    int i13 = i9 - i10;
                    int i14 = i11 + i13;
                    int length2 = c10.length + i14;
                    if (a10.length < length2) {
                        a10 = e(a10, i11, ((length2 + length) - i9) + 32);
                    }
                    if (i13 > 0) {
                        str.getChars(i10, i9, a10, i11);
                        i11 = i14;
                    }
                    if (c10.length > 0) {
                        System.arraycopy(c10, 0, a10, i11, c10.length);
                        i11 += c10.length;
                    }
                    i10 = i12;
                }
                i9 = f(str, i12, length);
            } else {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
        }
        int i15 = length - i10;
        if (i15 > 0) {
            int i16 = i15 + i11;
            if (a10.length < i16) {
                a10 = e(a10, i11, i16);
            }
            str.getChars(i10, length, a10, i11);
            i11 = i16;
        }
        return new String(a10, 0, i11);
    }

    protected abstract int f(CharSequence charSequence, int i9, int i10);
}
