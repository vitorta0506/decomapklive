package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class aj {

    /* renamed from: a  reason: collision with root package name */
    private static final xi f8512a;

    static {
        if (vi.C() && vi.D()) {
            int i9 = ke.f8820a;
        }
        f8512a = new yi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int a(byte[] bArr, int i9, int i10) {
        byte b10 = bArr[i9 - 1];
        int i11 = i10 - i9;
        if (i11 != 0) {
            if (i11 == 1) {
                byte b11 = bArr[i9];
                if (b10 <= -12 && b11 <= -65) {
                    return b10 ^ (b11 << 8);
                }
            } else if (i11 == 2) {
                byte b12 = bArr[i9];
                byte b13 = bArr[i9 + 1];
                if (b10 <= -12 && b12 <= -65 && b13 <= -65) {
                    return ((b12 << 8) ^ b10) ^ (b13 << 16);
                }
            } else {
                throw new AssertionError();
            }
        } else if (b10 <= -12) {
            return b10;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0100, code lost:
        return r9 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int b(java.lang.CharSequence r7, byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.aj.b(java.lang.CharSequence, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(CharSequence charSequence) {
        int length = charSequence.length();
        int i9 = 0;
        int i10 = 0;
        while (i10 < length && charSequence.charAt(i10) < 128) {
            i10++;
        }
        int i11 = length;
        while (true) {
            if (i10 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i10);
            if (charAt < 2048) {
                i11 += (127 - charAt) >>> 31;
                i10++;
            } else {
                int length2 = charSequence.length();
                while (i10 < length2) {
                    char charAt2 = charSequence.charAt(i10);
                    if (charAt2 < 2048) {
                        i9 += (127 - charAt2) >>> 31;
                    } else {
                        i9 += 2;
                        if (charAt2 >= 55296 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i10) < 65536) {
                                throw new zi(i10, length2);
                            }
                            i10++;
                        }
                    }
                    i10++;
                }
                i11 += i9;
            }
        }
        if (i11 >= length) {
            return i11;
        }
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(i11 + 4294967296L);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(byte[] bArr, int i9, int i10) throws zzrr {
        int length = bArr.length;
        if ((i9 | i10 | ((length - i9) - i10)) >= 0) {
            int i11 = i9 + i10;
            char[] cArr = new char[i10];
            int i12 = 0;
            while (i9 < i11) {
                byte b10 = bArr[i9];
                if (!wi.d(b10)) {
                    break;
                }
                i9++;
                cArr[i12] = (char) b10;
                i12++;
            }
            while (i9 < i11) {
                int i13 = i9 + 1;
                byte b11 = bArr[i9];
                if (wi.d(b11)) {
                    int i14 = i12 + 1;
                    cArr[i12] = (char) b11;
                    i9 = i13;
                    while (true) {
                        i12 = i14;
                        if (i9 < i11) {
                            byte b12 = bArr[i9];
                            if (!wi.d(b12)) {
                                break;
                            }
                            i9++;
                            i14 = i12 + 1;
                            cArr[i12] = (char) b12;
                        }
                    }
                } else if (b11 < -32) {
                    if (i13 < i11) {
                        wi.b(b11, bArr[i13], cArr, i12);
                        i9 = i13 + 1;
                        i12++;
                    } else {
                        throw zzrr.zzd();
                    }
                } else if (b11 < -16) {
                    if (i13 < i11 - 1) {
                        int i15 = i13 + 1;
                        wi.c(b11, bArr[i13], bArr[i15], cArr, i12);
                        i9 = i15 + 1;
                        i12++;
                    } else {
                        throw zzrr.zzd();
                    }
                } else if (i13 < i11 - 2) {
                    int i16 = i13 + 1;
                    int i17 = i16 + 1;
                    wi.a(b11, bArr[i13], bArr[i16], bArr[i17], cArr, i12);
                    i12 += 2;
                    i9 = i17 + 1;
                } else {
                    throw zzrr.zzd();
                }
            }
            return new String(cArr, 0, i12);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i9), Integer.valueOf(i10)));
    }

    public static boolean e(byte[] bArr) {
        return f8512a.b(bArr, 0, bArr.length);
    }

    public static boolean f(byte[] bArr, int i9, int i10) {
        return f8512a.b(bArr, 0, i10);
    }
}
