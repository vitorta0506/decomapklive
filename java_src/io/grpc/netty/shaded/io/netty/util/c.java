package io.grpc.netty.shaded.io.netty.util;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Arrays;
import kotlin.UByte;
/* loaded from: classes5.dex */
public final class c implements CharSequence, Comparable<CharSequence> {

    /* renamed from: f  reason: collision with root package name */
    public static final c f45004f = g("");

    /* renamed from: g  reason: collision with root package name */
    public static final l<CharSequence> f45005g = new a();

    /* renamed from: h  reason: collision with root package name */
    public static final l<CharSequence> f45006h = new b();

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f45007a;

    /* renamed from: b  reason: collision with root package name */
    private final int f45008b;

    /* renamed from: c  reason: collision with root package name */
    private final int f45009c;

    /* renamed from: d  reason: collision with root package name */
    private int f45010d;

    /* renamed from: e  reason: collision with root package name */
    private String f45011e;

    /* loaded from: classes5.dex */
    static class a implements l<CharSequence> {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.l
        /* renamed from: a */
        public boolean c(CharSequence charSequence, CharSequence charSequence2) {
            return c.l(charSequence, charSequence2);
        }

        @Override // io.grpc.netty.shaded.io.netty.util.l
        /* renamed from: d */
        public int b(CharSequence charSequence) {
            return c.s(charSequence);
        }
    }

    /* loaded from: classes5.dex */
    static class b implements l<CharSequence> {
        b() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.l
        /* renamed from: a */
        public boolean c(CharSequence charSequence, CharSequence charSequence2) {
            return c.j(charSequence, charSequence2);
        }

        @Override // io.grpc.netty.shaded.io.netty.util.l
        /* renamed from: d */
        public int b(CharSequence charSequence) {
            return c.s(charSequence);
        }
    }

    public c(byte[] bArr) {
        this(bArr, true);
    }

    private static byte L(byte b10) {
        return x(b10) ? (byte) (b10 + 32) : b10;
    }

    public static char M(char c10) {
        return y(c10) ? (char) (c10 + ' ') : c10;
    }

    public static CharSequence U(CharSequence charSequence) {
        if (charSequence instanceof c) {
            return ((c) charSequence).T();
        }
        if (charSequence instanceof String) {
            return ((String) charSequence).trim();
        }
        int i9 = 0;
        int length = charSequence.length() - 1;
        while (i9 <= length && charSequence.charAt(i9) <= ' ') {
            i9++;
        }
        int i10 = length;
        while (i10 >= i9 && charSequence.charAt(i10) <= ' ') {
            i10--;
        }
        return (i9 == 0 && i10 == length) ? charSequence : charSequence.subSequence(i9, i10);
    }

    public static char c(byte b10) {
        return (char) (b10 & UByte.MAX_VALUE);
    }

    public static byte e(char c10) {
        if (c10 > 255) {
            c10 = '?';
        }
        return (byte) c10;
    }

    private static byte f(char c10) {
        return (byte) c10;
    }

    public static c g(String str) {
        c cVar = new c(str);
        cVar.f45011e = str;
        return cVar;
    }

    public static boolean j(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        } else if (charSequence instanceof c) {
            return ((c) charSequence).i(charSequence2);
        } else {
            if (charSequence2 instanceof c) {
                return ((c) charSequence2).i(charSequence);
            }
            if (charSequence.length() != charSequence2.length()) {
                return false;
            }
            for (int i9 = 0; i9 < charSequence.length(); i9++) {
                if (charSequence.charAt(i9) != charSequence2.charAt(i9)) {
                    return false;
                }
            }
            return true;
        }
    }

    public static boolean l(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        } else if (charSequence instanceof c) {
            return ((c) charSequence).k(charSequence2);
        } else {
            if (charSequence2 instanceof c) {
                return ((c) charSequence2).k(charSequence);
            }
            if (charSequence.length() != charSequence2.length()) {
                return false;
            }
            for (int i9 = 0; i9 < charSequence.length(); i9++) {
                if (!p(charSequence.charAt(i9), charSequence2.charAt(i9))) {
                    return false;
                }
            }
            return true;
        }
    }

    private static boolean o(byte b10, byte b11) {
        return b10 == b11 || L(b10) == L(b11);
    }

    private static boolean p(char c10, char c11) {
        return c10 == c11 || M(c10) == M(c11);
    }

    private int r(int i9, int i10, g gVar) throws Exception {
        int i11 = this.f45008b;
        int i12 = i11 + i9 + i10;
        for (int i13 = i11 + i9; i13 < i12; i13++) {
            if (!gVar.a(this.f45007a[i13])) {
                return i13 - this.f45008b;
            }
        }
        return -1;
    }

    public static int s(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        if (charSequence instanceof c) {
            return charSequence.hashCode();
        }
        return io.grpc.netty.shaded.io.netty.util.internal.t.U(charSequence);
    }

    public static int u(CharSequence charSequence, char c10, int i9) {
        if (charSequence instanceof String) {
            return ((String) charSequence).indexOf(c10, i9);
        }
        if (charSequence instanceof c) {
            return ((c) charSequence).t(c10, i9);
        }
        if (charSequence == null) {
            return -1;
        }
        int length = charSequence.length();
        if (i9 < 0) {
            i9 = 0;
        }
        while (i9 < length) {
            if (charSequence.charAt(i9) == c10) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    public static boolean x(byte b10) {
        return b10 >= 65 && b10 <= 90;
    }

    public static boolean y(char c10) {
        return c10 >= 'A' && c10 <= 'Z';
    }

    public static c z(CharSequence charSequence) {
        return charSequence instanceof c ? (c) charSequence : new c(charSequence);
    }

    public boolean A(int i9, CharSequence charSequence, int i10, int i11) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(charSequence, TypedValues.Custom.S_STRING);
        if (i10 >= 0 && charSequence.length() - i10 >= i11) {
            int length = length();
            if (i9 >= 0 && length - i9 >= i11) {
                if (i11 <= 0) {
                    return true;
                }
                int i12 = i11 + i10;
                int b10 = i9 + b();
                while (i10 < i12) {
                    if (c(this.f45007a[b10]) != charSequence.charAt(i10)) {
                        return false;
                    }
                    i10++;
                    b10++;
                }
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.CharSequence
    /* renamed from: B */
    public c subSequence(int i9, int i10) {
        return C(i9, i10, true);
    }

    public c C(int i9, int i10, boolean z10) {
        int i11 = i10 - i9;
        if (!io.grpc.netty.shaded.io.netty.util.internal.o.c(i9, i11, length())) {
            if (i9 == 0 && i10 == length()) {
                return this;
            }
            if (i10 == i9) {
                return f45004f;
            }
            return new c(this.f45007a, i9 + this.f45008b, i11, z10);
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i9 + ") <= end (" + i10 + ") <= length(" + length() + ')');
    }

    public byte[] F() {
        return I(0, length());
    }

    public byte[] I(int i9, int i10) {
        byte[] bArr = this.f45007a;
        int i11 = this.f45008b;
        return Arrays.copyOfRange(bArr, i9 + i11, i10 + i11);
    }

    public String N(int i9) {
        return Q(i9, length());
    }

    public String Q(int i9, int i10) {
        int i11 = i10 - i9;
        if (i11 == 0) {
            return "";
        }
        if (!io.grpc.netty.shaded.io.netty.util.internal.o.c(i9, i11, length())) {
            return new String(this.f45007a, 0, i9 + this.f45008b, i11);
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i9 + ") <= srcIdx + length(" + i11 + ") <= srcLen(" + length() + ')');
    }

    public c T() {
        int b10 = b();
        int b11 = (b() + length()) - 1;
        while (b10 <= b11 && this.f45007a[b10] <= 32) {
            b10++;
        }
        int i9 = b11;
        while (i9 >= b10 && this.f45007a[i9] <= 32) {
            i9--;
        }
        return (b10 == 0 && i9 == b11) ? this : new c(this.f45007a, b10, (i9 - b10) + 1, false);
    }

    public byte[] a() {
        return this.f45007a;
    }

    public int b() {
        return this.f45008b;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i9) {
        return c(d(i9));
    }

    public byte d(int i9) {
        if (i9 >= 0 && i9 < this.f45009c) {
            if (io.grpc.netty.shaded.io.netty.util.internal.t.T()) {
                return io.grpc.netty.shaded.io.netty.util.internal.t.C(this.f45007a, i9 + this.f45008b);
            }
            return this.f45007a[i9 + this.f45008b];
        }
        throw new IndexOutOfBoundsException("index: " + i9 + " must be in the range [0," + this.f45009c + ")");
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != c.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        c cVar = (c) obj;
        return length() == cVar.length() && hashCode() == cVar.hashCode() && io.grpc.netty.shaded.io.netty.util.internal.t.w(a(), b(), cVar.a(), cVar.b(), length());
    }

    @Override // java.lang.Comparable
    /* renamed from: h */
    public int compareTo(CharSequence charSequence) {
        int i9 = 0;
        if (this == charSequence) {
            return 0;
        }
        int length = length();
        int length2 = charSequence.length();
        int min = Math.min(length, length2);
        int b10 = b();
        while (i9 < min) {
            int c10 = c(this.f45007a[b10]) - charSequence.charAt(i9);
            if (c10 != 0) {
                return c10;
            }
            i9++;
            b10++;
        }
        return length - length2;
    }

    public int hashCode() {
        int i9 = this.f45010d;
        if (i9 == 0) {
            int V = io.grpc.netty.shaded.io.netty.util.internal.t.V(this.f45007a, this.f45008b, this.f45009c);
            this.f45010d = V;
            return V;
        }
        return i9;
    }

    public boolean i(CharSequence charSequence) {
        if (this == charSequence) {
            return true;
        }
        if (charSequence == null || charSequence.length() != length()) {
            return false;
        }
        if (charSequence instanceof c) {
            return equals(charSequence);
        }
        int b10 = b();
        for (int i9 = 0; i9 < charSequence.length(); i9++) {
            if (c(this.f45007a[b10]) != charSequence.charAt(i9)) {
                return false;
            }
            b10++;
        }
        return true;
    }

    public boolean k(CharSequence charSequence) {
        if (this == charSequence) {
            return true;
        }
        if (charSequence == null || charSequence.length() != length()) {
            return false;
        }
        if (charSequence instanceof c) {
            c cVar = (c) charSequence;
            int b10 = b();
            int b11 = cVar.b();
            int length = length() + b10;
            while (b10 < length) {
                if (!o(this.f45007a[b10], cVar.f45007a[b11])) {
                    return false;
                }
                b10++;
                b11++;
            }
            return true;
        }
        int b12 = b();
        int length2 = length();
        for (int i9 = 0; i9 < length2; i9++) {
            if (!p(c(this.f45007a[b12]), charSequence.charAt(i9))) {
                return false;
            }
            b12++;
        }
        return true;
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f45009c;
    }

    public boolean m(CharSequence charSequence) {
        int length = charSequence.length();
        return A(length() - length, charSequence, 0, length);
    }

    public int q(g gVar) throws Exception {
        return r(0, length(), gVar);
    }

    public int t(char c10, int i9) {
        if (c10 > 255) {
            return -1;
        }
        if (i9 < 0) {
            i9 = 0;
        }
        byte f10 = f(c10);
        int i10 = this.f45008b;
        int i11 = this.f45009c + i10;
        for (int i12 = i9 + i10; i12 < i11; i12++) {
            if (this.f45007a[i12] == f10) {
                return i12 - this.f45008b;
            }
        }
        return -1;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        String str = this.f45011e;
        if (str == null) {
            String N = N(0);
            this.f45011e = N;
            return N;
        }
        return str;
    }

    public boolean v() {
        return this.f45009c == 0;
    }

    public boolean w() {
        return this.f45008b == 0 && this.f45009c == this.f45007a.length;
    }

    public c(byte[] bArr, boolean z10) {
        this(bArr, 0, bArr.length, z10);
    }

    public c(byte[] bArr, int i9, int i10, boolean z10) {
        if (z10) {
            this.f45007a = Arrays.copyOfRange(bArr, i9, i9 + i10);
            this.f45008b = 0;
        } else if (!io.grpc.netty.shaded.io.netty.util.internal.o.c(i9, i10, bArr.length)) {
            this.f45007a = bArr;
            this.f45008b = i9;
        } else {
            throw new IndexOutOfBoundsException("expected: 0 <= start(" + i9 + ") <= start + length(" + i10 + ") <= value.length(" + bArr.length + ')');
        }
        this.f45009c = i10;
    }

    public c(CharSequence charSequence) {
        this(charSequence, 0, charSequence.length());
    }

    public c(CharSequence charSequence, int i9, int i10) {
        if (!io.grpc.netty.shaded.io.netty.util.internal.o.c(i9, i10, charSequence.length())) {
            this.f45007a = io.grpc.netty.shaded.io.netty.util.internal.t.j(i10);
            int i11 = 0;
            while (i11 < i10) {
                this.f45007a[i11] = e(charSequence.charAt(i9));
                i11++;
                i9++;
            }
            this.f45008b = 0;
            this.f45009c = i10;
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i9 + ") <= start + length(" + i10 + ") <= value.length(" + charSequence.length() + ')');
    }
}
