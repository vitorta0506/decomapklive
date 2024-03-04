package com.google.android.gms.internal.recaptcha;

import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2.dex */
final class ma {

    /* renamed from: a  reason: collision with root package name */
    private final String f8867a;

    /* renamed from: b  reason: collision with root package name */
    private final char[] f8868b;

    /* renamed from: c  reason: collision with root package name */
    final int f8869c;

    /* renamed from: d  reason: collision with root package name */
    final int f8870d;

    /* renamed from: e  reason: collision with root package name */
    final int f8871e;

    /* renamed from: f  reason: collision with root package name */
    final int f8872f;

    /* renamed from: g  reason: collision with root package name */
    private final byte[] f8873g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ma(String str, char[] cArr) {
        Objects.requireNonNull(str);
        this.f8867a = str;
        Objects.requireNonNull(cArr);
        this.f8868b = cArr;
        try {
            int length = cArr.length;
            int b10 = ua.b(length, RoundingMode.UNNECESSARY);
            this.f8870d = b10;
            int min = Math.min(8, Integer.lowestOneBit(b10));
            try {
                this.f8871e = 8 / min;
                this.f8872f = b10 / min;
                this.f8869c = length - 1;
                byte[] bArr = new byte[128];
                Arrays.fill(bArr, (byte) -1);
                int i9 = 0;
                while (true) {
                    boolean z10 = true;
                    if (i9 >= cArr.length) {
                        break;
                    }
                    char c10 = cArr[i9];
                    z7.f(c10 < 128, "Non-ASCII character: %s", c10);
                    if (bArr[c10] != -1) {
                        z10 = false;
                    }
                    z7.f(z10, "Duplicate character: %s", c10);
                    bArr[c10] = (byte) i9;
                    i9++;
                }
                this.f8873g = bArr;
                boolean[] zArr = new boolean[this.f8871e];
                for (int i10 = 0; i10 < this.f8872f; i10++) {
                    zArr[ua.a(i10 * 8, this.f8870d, RoundingMode.CEILING)] = true;
                }
            } catch (ArithmeticException e10) {
                String str2 = new String(cArr);
                throw new IllegalArgumentException(str2.length() != 0 ? "Illegal alphabet ".concat(str2) : new String("Illegal alphabet "), e10);
            }
        } catch (ArithmeticException e11) {
            int length2 = cArr.length;
            StringBuilder sb2 = new StringBuilder(35);
            sb2.append("Illegal alphabet length ");
            sb2.append(length2);
            throw new IllegalArgumentException(sb2.toString(), e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final char a(int i9) {
        return this.f8868b[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v8 */
    public final ma b() {
        boolean z10;
        int i9 = 0;
        for (char c10 : this.f8868b) {
            if (h7.a(c10)) {
                char[] cArr = this.f8868b;
                int length = cArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        z10 = false;
                        break;
                    }
                    char c11 = cArr[i10];
                    if (c11 >= 'a' && c11 <= 'z') {
                        z10 = true;
                        break;
                    }
                    i10++;
                }
                z7.j(!z10, "Cannot call lowerCase() on a mixed-case alphabet");
                char[] cArr2 = new char[this.f8868b.length];
                while (true) {
                    char[] cArr3 = this.f8868b;
                    if (i9 < cArr3.length) {
                        char c12 = cArr3[i9];
                        if (h7.a(c12)) {
                            c12 ^= 32;
                        }
                        cArr2[i9] = (char) c12;
                        i9++;
                    } else {
                        return new ma(String.valueOf(this.f8867a).concat(".lowerCase()"), cArr2);
                    }
                }
            }
        }
        return this;
    }

    public final boolean c(char c10) {
        return c10 < 128 && this.f8873g[c10] != -1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ma) {
            return Arrays.equals(this.f8868b, ((ma) obj).f8868b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f8868b);
    }

    public final String toString() {
        return this.f8867a;
    }
}
