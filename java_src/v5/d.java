package v5;

import com.google.common.base.o;
/* loaded from: classes2.dex */
public abstract class d extends b {
    protected static int b(CharSequence charSequence, int i9, int i10) {
        o.s(charSequence);
        if (i9 < i10) {
            int i11 = i9 + 1;
            char charAt = charSequence.charAt(i9);
            if (charAt < 55296 || charAt > 57343) {
                return charAt;
            }
            if (charAt > 56319) {
                String valueOf = String.valueOf(charSequence);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 88);
                sb2.append("Unexpected low surrogate character '");
                sb2.append(charAt);
                sb2.append("' with value ");
                sb2.append((int) charAt);
                sb2.append(" at index ");
                sb2.append(i11 - 1);
                sb2.append(" in '");
                sb2.append(valueOf);
                sb2.append("'");
                throw new IllegalArgumentException(sb2.toString());
            } else if (i11 == i10) {
                return -charAt;
            } else {
                char charAt2 = charSequence.charAt(i11);
                if (Character.isLowSurrogate(charAt2)) {
                    return Character.toCodePoint(charAt, charAt2);
                }
                String valueOf2 = String.valueOf(charSequence);
                StringBuilder sb3 = new StringBuilder(valueOf2.length() + 89);
                sb3.append("Expected low surrogate but got char '");
                sb3.append(charAt2);
                sb3.append("' with value ");
                sb3.append((int) charAt2);
                sb3.append(" at index ");
                sb3.append(i11);
                sb3.append(" in '");
                sb3.append(valueOf2);
                sb3.append("'");
                throw new IllegalArgumentException(sb3.toString());
            }
        }
        throw new IndexOutOfBoundsException("Index exceeds specified range");
    }

    private static char[] e(char[] cArr, int i9, int i10) {
        if (i10 >= 0) {
            char[] cArr2 = new char[i10];
            if (i9 > 0) {
                System.arraycopy(cArr, 0, cArr2, 0, i9);
            }
            return cArr2;
        }
        throw new AssertionError("Cannot increase internal buffer any further");
    }

    protected abstract char[] c(int i9);

    /* JADX INFO: Access modifiers changed from: protected */
    public final String d(String str, int i9) {
        int length = str.length();
        char[] a10 = c.a();
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
                        a10 = e(a10, i11, length2 + (length - i9) + 32);
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
