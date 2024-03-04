package x5;

import com.google.common.base.o;
import v5.d;
/* loaded from: classes2.dex */
public final class a extends d {

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f59618d = {'+'};

    /* renamed from: e  reason: collision with root package name */
    private static final char[] f59619e = "0123456789ABCDEF".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    private final boolean f59620b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean[] f59621c;

    public a(String str, boolean z10) {
        o.s(str);
        if (!str.matches(".*[0-9A-Za-z].*")) {
            String concat = str.concat("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
            if (z10 && concat.contains(" ")) {
                throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
            }
            this.f59620b = z10;
            this.f59621c = g(concat);
            return;
        }
        throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
    }

    private static boolean[] g(String str) {
        char[] charArray = str.toCharArray();
        int i9 = -1;
        for (char c10 : charArray) {
            i9 = Math.max((int) c10, i9);
        }
        boolean[] zArr = new boolean[i9 + 1];
        for (char c11 : charArray) {
            zArr[c11] = true;
        }
        return zArr;
    }

    @Override // v5.b
    public String a(String str) {
        o.s(str);
        int length = str.length();
        for (int i9 = 0; i9 < length; i9++) {
            char charAt = str.charAt(i9);
            boolean[] zArr = this.f59621c;
            if (charAt >= zArr.length || !zArr[charAt]) {
                return d(str, i9);
            }
        }
        return str;
    }

    @Override // v5.d
    protected char[] c(int i9) {
        boolean[] zArr = this.f59621c;
        if (i9 >= zArr.length || !zArr[i9]) {
            if (i9 == 32 && this.f59620b) {
                return f59618d;
            }
            if (i9 <= 127) {
                char[] cArr = f59619e;
                return new char[]{'%', cArr[i9 >>> 4], cArr[i9 & 15]};
            } else if (i9 <= 2047) {
                char[] cArr2 = f59619e;
                char[] cArr3 = {'%', cArr2[(r14 >>> 4) | 12], cArr2[r14 & 15], '%', cArr2[(r14 & 3) | 8], cArr2[i9 & 15]};
                int i10 = i9 >>> 4;
                int i11 = i10 >>> 2;
                return cArr3;
            } else if (i9 <= 65535) {
                char[] cArr4 = f59619e;
                char[] cArr5 = {'%', 'E', cArr4[r14 >>> 2], '%', cArr4[(r14 & 3) | 8], cArr4[r14 & 15], '%', cArr4[(r14 & 3) | 8], cArr4[i9 & 15]};
                int i12 = i9 >>> 4;
                int i13 = i12 >>> 2;
                int i14 = i13 >>> 4;
                return cArr5;
            } else if (i9 <= 1114111) {
                char[] cArr6 = f59619e;
                char[] cArr7 = {'%', 'F', cArr6[(r14 >>> 2) & 7], '%', cArr6[(r14 & 3) | 8], cArr6[r14 & 15], '%', cArr6[(r14 & 3) | 8], cArr6[r14 & 15], '%', cArr6[(r14 & 3) | 8], cArr6[i9 & 15]};
                int i15 = i9 >>> 4;
                int i16 = i15 >>> 2;
                int i17 = i16 >>> 4;
                int i18 = i17 >>> 2;
                int i19 = i18 >>> 4;
                return cArr7;
            } else {
                StringBuilder sb2 = new StringBuilder(43);
                sb2.append("Invalid unicode character value ");
                sb2.append(i9);
                throw new IllegalArgumentException(sb2.toString());
            }
        }
        return null;
    }

    @Override // v5.d
    protected int f(CharSequence charSequence, int i9, int i10) {
        o.s(charSequence);
        while (i9 < i10) {
            char charAt = charSequence.charAt(i9);
            boolean[] zArr = this.f59621c;
            if (charAt >= zArr.length || !zArr[charAt]) {
                break;
            }
            i9++;
        }
        return i9;
    }
}
