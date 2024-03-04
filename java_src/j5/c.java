package j5;
/* loaded from: classes2.dex */
public class c extends e {

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f53158c = {'+'};

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f53159d = "0123456789ABCDEF".toCharArray();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f53160a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean[] f53161b;

    public c(String str) {
        this(str, false);
    }

    private static boolean[] g(String str) {
        char[] charArray = str.toCharArray();
        int i9 = 122;
        for (char c10 : charArray) {
            i9 = Math.max((int) c10, i9);
        }
        boolean[] zArr = new boolean[i9 + 1];
        for (int i10 = 48; i10 <= 57; i10++) {
            zArr[i10] = true;
        }
        for (int i11 = 65; i11 <= 90; i11++) {
            zArr[i11] = true;
        }
        for (int i12 = 97; i12 <= 122; i12++) {
            zArr[i12] = true;
        }
        for (char c11 : charArray) {
            zArr[c11] = true;
        }
        return zArr;
    }

    @Override // j5.b
    public String a(String str) {
        int length = str.length();
        for (int i9 = 0; i9 < length; i9++) {
            char charAt = str.charAt(i9);
            boolean[] zArr = this.f53161b;
            if (charAt >= zArr.length || !zArr[charAt]) {
                return d(str, i9);
            }
        }
        return str;
    }

    @Override // j5.e
    protected char[] c(int i9) {
        boolean[] zArr = this.f53161b;
        if (i9 >= zArr.length || !zArr[i9]) {
            if (i9 == 32 && this.f53160a) {
                return f53158c;
            }
            if (i9 <= 127) {
                char[] cArr = f53159d;
                return new char[]{'%', cArr[i9 >>> 4], cArr[i9 & 15]};
            } else if (i9 <= 2047) {
                char[] cArr2 = f53159d;
                char[] cArr3 = {'%', cArr2[(r14 >>> 4) | 12], cArr2[r14 & 15], '%', cArr2[(r14 & 3) | 8], cArr2[i9 & 15]};
                int i10 = i9 >>> 4;
                int i11 = i10 >>> 2;
                return cArr3;
            } else if (i9 <= 65535) {
                char[] cArr4 = f53159d;
                char[] cArr5 = {'%', 'E', cArr4[r14 >>> 2], '%', cArr4[(r14 & 3) | 8], cArr4[r14 & 15], '%', cArr4[(r14 & 3) | 8], cArr4[i9 & 15]};
                int i12 = i9 >>> 4;
                int i13 = i12 >>> 2;
                int i14 = i13 >>> 4;
                return cArr5;
            } else if (i9 <= 1114111) {
                char[] cArr6 = f53159d;
                char[] cArr7 = {'%', 'F', cArr6[(r14 >>> 2) & 7], '%', cArr6[(r14 & 3) | 8], cArr6[r14 & 15], '%', cArr6[(r14 & 3) | 8], cArr6[r14 & 15], '%', cArr6[(r14 & 3) | 8], cArr6[i9 & 15]};
                int i15 = i9 >>> 4;
                int i16 = i15 >>> 2;
                int i17 = i16 >>> 4;
                int i18 = i17 >>> 2;
                int i19 = i18 >>> 4;
                return cArr7;
            } else {
                throw new IllegalArgumentException("Invalid unicode character value " + i9);
            }
        }
        return null;
    }

    @Override // j5.e
    protected int f(CharSequence charSequence, int i9, int i10) {
        while (i9 < i10) {
            char charAt = charSequence.charAt(i9);
            boolean[] zArr = this.f53161b;
            if (charAt >= zArr.length || !zArr[charAt]) {
                break;
            }
            i9++;
        }
        return i9;
    }

    @Deprecated
    public c(String str, boolean z10) {
        if (!str.matches(".*[0-9A-Za-z].*")) {
            if (z10 && str.contains(" ")) {
                throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
            }
            if (!str.contains("%")) {
                this.f53160a = z10;
                this.f53161b = g(str);
                return;
            }
            throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
        }
        throw new IllegalArgumentException("Alphanumeric ASCII characters are always 'safe' and should not be escaped.");
    }
}
