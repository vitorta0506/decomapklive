package com.google.common.io;

import com.google.common.base.l;
import com.google.common.base.o;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import kotlin.UByte;
/* loaded from: classes2.dex */
public abstract class BaseEncoding {

    /* renamed from: a  reason: collision with root package name */
    private static final BaseEncoding f13553a = new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    /* renamed from: b  reason: collision with root package name */
    private static final BaseEncoding f13554b = new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');

    /* renamed from: c  reason: collision with root package name */
    private static final BaseEncoding f13555c = new d("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');

    /* renamed from: d  reason: collision with root package name */
    private static final BaseEncoding f13556d = new d("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');

    /* renamed from: e  reason: collision with root package name */
    private static final BaseEncoding f13557e = new b("base16()", "0123456789ABCDEF");

    /* loaded from: classes2.dex */
    public static final class DecodingException extends IOException {
        DecodingException(String str) {
            super(str);
        }

        DecodingException(Throwable th2) {
            super(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f13558a;

        /* renamed from: b  reason: collision with root package name */
        private final char[] f13559b;

        /* renamed from: c  reason: collision with root package name */
        final int f13560c;

        /* renamed from: d  reason: collision with root package name */
        final int f13561d;

        /* renamed from: e  reason: collision with root package name */
        final int f13562e;

        /* renamed from: f  reason: collision with root package name */
        final int f13563f;

        /* renamed from: g  reason: collision with root package name */
        private final byte[] f13564g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean[] f13565h;

        a(String str, char[] cArr) {
            this.f13558a = (String) o.s(str);
            this.f13559b = (char[]) o.s(cArr);
            try {
                int e10 = com.google.common.math.c.e(cArr.length, RoundingMode.UNNECESSARY);
                this.f13561d = e10;
                int min = Math.min(8, Integer.lowestOneBit(e10));
                try {
                    this.f13562e = 8 / min;
                    this.f13563f = e10 / min;
                    this.f13560c = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i9 = 0; i9 < cArr.length; i9++) {
                        char c10 = cArr[i9];
                        o.f(c10 < 128, "Non-ASCII character: %s", c10);
                        o.f(bArr[c10] == -1, "Duplicate character: %s", c10);
                        bArr[c10] = (byte) i9;
                    }
                    this.f13564g = bArr;
                    boolean[] zArr = new boolean[this.f13562e];
                    for (int i10 = 0; i10 < this.f13563f; i10++) {
                        zArr[com.google.common.math.c.b(i10 * 8, this.f13561d, RoundingMode.CEILING)] = true;
                    }
                    this.f13565h = zArr;
                } catch (ArithmeticException e11) {
                    String str2 = new String(cArr);
                    throw new IllegalArgumentException(str2.length() != 0 ? "Illegal alphabet ".concat(str2) : new String("Illegal alphabet "), e11);
                }
            } catch (ArithmeticException e12) {
                int length = cArr.length;
                StringBuilder sb2 = new StringBuilder(35);
                sb2.append("Illegal alphabet length ");
                sb2.append(length);
                throw new IllegalArgumentException(sb2.toString(), e12);
            }
        }

        private boolean d() {
            for (char c10 : this.f13559b) {
                if (com.google.common.base.c.c(c10)) {
                    return true;
                }
            }
            return false;
        }

        private boolean e() {
            for (char c10 : this.f13559b) {
                if (com.google.common.base.c.d(c10)) {
                    return true;
                }
            }
            return false;
        }

        int b(char c10) throws DecodingException {
            if (c10 > 127) {
                String valueOf = String.valueOf(Integer.toHexString(c10));
                throw new DecodingException(valueOf.length() != 0 ? "Unrecognized character: 0x".concat(valueOf) : new String("Unrecognized character: 0x"));
            }
            byte b10 = this.f13564g[c10];
            if (b10 == -1) {
                if (c10 > ' ' && c10 != 127) {
                    StringBuilder sb2 = new StringBuilder(25);
                    sb2.append("Unrecognized character: ");
                    sb2.append(c10);
                    throw new DecodingException(sb2.toString());
                }
                String valueOf2 = String.valueOf(Integer.toHexString(c10));
                throw new DecodingException(valueOf2.length() != 0 ? "Unrecognized character: 0x".concat(valueOf2) : new String("Unrecognized character: 0x"));
            }
            return b10;
        }

        char c(int i9) {
            return this.f13559b[i9];
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Arrays.equals(this.f13559b, ((a) obj).f13559b);
            }
            return false;
        }

        boolean f(int i9) {
            return this.f13565h[i9 % this.f13562e];
        }

        a g() {
            if (!e()) {
                return this;
            }
            o.A(!d(), "Cannot call lowerCase() on a mixed-case alphabet");
            char[] cArr = new char[this.f13559b.length];
            int i9 = 0;
            while (true) {
                char[] cArr2 = this.f13559b;
                if (i9 < cArr2.length) {
                    cArr[i9] = com.google.common.base.c.e(cArr2[i9]);
                    i9++;
                } else {
                    return new a(String.valueOf(this.f13558a).concat(".lowerCase()"), cArr);
                }
            }
        }

        public boolean h(char c10) {
            byte[] bArr = this.f13564g;
            return c10 < bArr.length && bArr[c10] != -1;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f13559b);
        }

        public String toString() {
            return this.f13558a;
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends d {

        /* renamed from: i  reason: collision with root package name */
        final char[] f13566i;

        b(String str, String str2) {
            this(new a(str, str2.toCharArray()));
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        int f(byte[] bArr, CharSequence charSequence) throws DecodingException {
            o.s(bArr);
            if (charSequence.length() % 2 != 1) {
                int i9 = 0;
                int i10 = 0;
                while (i9 < charSequence.length()) {
                    bArr[i10] = (byte) ((this.f13567f.b(charSequence.charAt(i9)) << 4) | this.f13567f.b(charSequence.charAt(i9 + 1)));
                    i9 += 2;
                    i10++;
                }
                return i10;
            }
            int length = charSequence.length();
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Invalid input length ");
            sb2.append(length);
            throw new DecodingException(sb2.toString());
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        void i(Appendable appendable, byte[] bArr, int i9, int i10) throws IOException {
            o.s(appendable);
            o.y(i9, i9 + i10, bArr.length);
            for (int i11 = 0; i11 < i10; i11++) {
                int i12 = bArr[i9 + i11] & UByte.MAX_VALUE;
                appendable.append(this.f13566i[i12]);
                appendable.append(this.f13566i[i12 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.d
        BaseEncoding q(a aVar, Character ch2) {
            return new b(aVar);
        }

        private b(a aVar) {
            super(aVar, null);
            this.f13566i = new char[512];
            o.d(aVar.f13559b.length == 16);
            for (int i9 = 0; i9 < 256; i9++) {
                this.f13566i[i9] = aVar.c(i9 >>> 4);
                this.f13566i[i9 | 256] = aVar.c(i9 & 15);
            }
        }
    }

    /* loaded from: classes2.dex */
    static final class c extends d {
        c(String str, String str2, Character ch2) {
            this(new a(str, str2.toCharArray()), ch2);
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        int f(byte[] bArr, CharSequence charSequence) throws DecodingException {
            o.s(bArr);
            CharSequence o10 = o(charSequence);
            if (this.f13567f.f(o10.length())) {
                int i9 = 0;
                int i10 = 0;
                while (i9 < o10.length()) {
                    int i11 = i9 + 1;
                    int i12 = i11 + 1;
                    int b10 = (this.f13567f.b(o10.charAt(i9)) << 18) | (this.f13567f.b(o10.charAt(i11)) << 12);
                    int i13 = i10 + 1;
                    bArr[i10] = (byte) (b10 >>> 16);
                    if (i12 < o10.length()) {
                        int i14 = i12 + 1;
                        int b11 = b10 | (this.f13567f.b(o10.charAt(i12)) << 6);
                        i10 = i13 + 1;
                        bArr[i13] = (byte) ((b11 >>> 8) & 255);
                        if (i14 < o10.length()) {
                            i12 = i14 + 1;
                            i13 = i10 + 1;
                            bArr[i10] = (byte) ((b11 | this.f13567f.b(o10.charAt(i14))) & 255);
                        } else {
                            i9 = i14;
                        }
                    }
                    i10 = i13;
                    i9 = i12;
                }
                return i10;
            }
            int length = o10.length();
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Invalid input length ");
            sb2.append(length);
            throw new DecodingException(sb2.toString());
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        void i(Appendable appendable, byte[] bArr, int i9, int i10) throws IOException {
            o.s(appendable);
            int i11 = i9 + i10;
            o.y(i9, i11, bArr.length);
            while (i10 >= 3) {
                int i12 = i9 + 1;
                int i13 = i12 + 1;
                int i14 = ((bArr[i9] & UByte.MAX_VALUE) << 16) | ((bArr[i12] & UByte.MAX_VALUE) << 8) | (bArr[i13] & UByte.MAX_VALUE);
                appendable.append(this.f13567f.c(i14 >>> 18));
                appendable.append(this.f13567f.c((i14 >>> 12) & 63));
                appendable.append(this.f13567f.c((i14 >>> 6) & 63));
                appendable.append(this.f13567f.c(i14 & 63));
                i10 -= 3;
                i9 = i13 + 1;
            }
            if (i9 < i11) {
                p(appendable, bArr, i9, i11 - i9);
            }
        }

        @Override // com.google.common.io.BaseEncoding.d
        BaseEncoding q(a aVar, Character ch2) {
            return new c(aVar, ch2);
        }

        private c(a aVar, Character ch2) {
            super(aVar, ch2);
            o.d(aVar.f13559b.length == 64);
        }
    }

    /* loaded from: classes2.dex */
    static class d extends BaseEncoding {

        /* renamed from: f  reason: collision with root package name */
        final a f13567f;

        /* renamed from: g  reason: collision with root package name */
        final Character f13568g;

        /* renamed from: h  reason: collision with root package name */
        private transient BaseEncoding f13569h;

        d(String str, String str2, Character ch2) {
            this(new a(str, str2.toCharArray()), ch2);
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                return this.f13567f.equals(dVar.f13567f) && l.a(this.f13568g, dVar.f13568g);
            }
            return false;
        }

        @Override // com.google.common.io.BaseEncoding
        int f(byte[] bArr, CharSequence charSequence) throws DecodingException {
            a aVar;
            o.s(bArr);
            CharSequence o10 = o(charSequence);
            if (this.f13567f.f(o10.length())) {
                int i9 = 0;
                int i10 = 0;
                while (i9 < o10.length()) {
                    long j10 = 0;
                    int i11 = 0;
                    int i12 = 0;
                    while (true) {
                        aVar = this.f13567f;
                        if (i11 >= aVar.f13562e) {
                            break;
                        }
                        j10 <<= aVar.f13561d;
                        if (i9 + i11 < o10.length()) {
                            j10 |= this.f13567f.b(o10.charAt(i12 + i9));
                            i12++;
                        }
                        i11++;
                    }
                    int i13 = aVar.f13563f;
                    int i14 = (i13 * 8) - (i12 * aVar.f13561d);
                    int i15 = (i13 - 1) * 8;
                    while (i15 >= i14) {
                        bArr[i10] = (byte) ((j10 >>> i15) & 255);
                        i15 -= 8;
                        i10++;
                    }
                    i9 += this.f13567f.f13562e;
                }
                return i10;
            }
            int length = o10.length();
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Invalid input length ");
            sb2.append(length);
            throw new DecodingException(sb2.toString());
        }

        public int hashCode() {
            return this.f13567f.hashCode() ^ l.b(this.f13568g);
        }

        @Override // com.google.common.io.BaseEncoding
        void i(Appendable appendable, byte[] bArr, int i9, int i10) throws IOException {
            o.s(appendable);
            o.y(i9, i9 + i10, bArr.length);
            int i11 = 0;
            while (i11 < i10) {
                p(appendable, bArr, i9 + i11, Math.min(this.f13567f.f13563f, i10 - i11));
                i11 += this.f13567f.f13563f;
            }
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding k() {
            BaseEncoding baseEncoding = this.f13569h;
            if (baseEncoding == null) {
                a g10 = this.f13567f.g();
                baseEncoding = g10 == this.f13567f ? this : q(g10, this.f13568g);
                this.f13569h = baseEncoding;
            }
            return baseEncoding;
        }

        @Override // com.google.common.io.BaseEncoding
        int l(int i9) {
            return (int) (((this.f13567f.f13561d * i9) + 7) / 8);
        }

        @Override // com.google.common.io.BaseEncoding
        int m(int i9) {
            a aVar = this.f13567f;
            return aVar.f13562e * com.google.common.math.c.b(i9, aVar.f13563f, RoundingMode.CEILING);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding n() {
            return this.f13568g == null ? this : q(this.f13567f, null);
        }

        @Override // com.google.common.io.BaseEncoding
        CharSequence o(CharSequence charSequence) {
            o.s(charSequence);
            Character ch2 = this.f13568g;
            if (ch2 == null) {
                return charSequence;
            }
            char charValue = ch2.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == charValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        void p(Appendable appendable, byte[] bArr, int i9, int i10) throws IOException {
            o.s(appendable);
            o.y(i9, i9 + i10, bArr.length);
            int i11 = 0;
            o.d(i10 <= this.f13567f.f13563f);
            long j10 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                j10 = (j10 | (bArr[i9 + i12] & UByte.MAX_VALUE)) << 8;
            }
            int i13 = ((i10 + 1) * 8) - this.f13567f.f13561d;
            while (i11 < i10 * 8) {
                a aVar = this.f13567f;
                appendable.append(aVar.c(((int) (j10 >>> (i13 - i11))) & aVar.f13560c));
                i11 += this.f13567f.f13561d;
            }
            if (this.f13568g != null) {
                while (i11 < this.f13567f.f13563f * 8) {
                    appendable.append(this.f13568g.charValue());
                    i11 += this.f13567f.f13561d;
                }
            }
        }

        BaseEncoding q(a aVar, Character ch2) {
            return new d(aVar, ch2);
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("BaseEncoding.");
            sb2.append(this.f13567f.toString());
            if (8 % this.f13567f.f13561d != 0) {
                if (this.f13568g == null) {
                    sb2.append(".omitPadding()");
                } else {
                    sb2.append(".withPadChar('");
                    sb2.append(this.f13568g);
                    sb2.append("')");
                }
            }
            return sb2.toString();
        }

        d(a aVar, Character ch2) {
            this.f13567f = (a) o.s(aVar);
            o.m(ch2 == null || !aVar.h(ch2.charValue()), "Padding character %s was already in alphabet", ch2);
            this.f13568g = ch2;
        }
    }

    BaseEncoding() {
    }

    public static BaseEncoding a() {
        return f13557e;
    }

    public static BaseEncoding b() {
        return f13553a;
    }

    public static BaseEncoding c() {
        return f13554b;
    }

    private static byte[] j(byte[] bArr, int i9) {
        if (i9 == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i9];
        System.arraycopy(bArr, 0, bArr2, 0, i9);
        return bArr2;
    }

    public final byte[] d(CharSequence charSequence) {
        try {
            return e(charSequence);
        } catch (DecodingException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    final byte[] e(CharSequence charSequence) throws DecodingException {
        CharSequence o10 = o(charSequence);
        byte[] bArr = new byte[l(o10.length())];
        return j(bArr, f(bArr, o10));
    }

    abstract int f(byte[] bArr, CharSequence charSequence) throws DecodingException;

    public String g(byte[] bArr) {
        return h(bArr, 0, bArr.length);
    }

    public final String h(byte[] bArr, int i9, int i10) {
        o.y(i9, i9 + i10, bArr.length);
        StringBuilder sb2 = new StringBuilder(m(i10));
        try {
            i(sb2, bArr, i9, i10);
            return sb2.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    abstract void i(Appendable appendable, byte[] bArr, int i9, int i10) throws IOException;

    public abstract BaseEncoding k();

    abstract int l(int i9);

    abstract int m(int i9);

    public abstract BaseEncoding n();

    abstract CharSequence o(CharSequence charSequence);
}
