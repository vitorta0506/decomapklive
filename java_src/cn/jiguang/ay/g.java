package cn.jiguang.ay;

import io.jsonwebtoken.JwtParser;
import java.io.IOException;
import java.io.Serializable;
import java.text.DecimalFormat;
import kotlin.UByte;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class g implements Serializable, Comparable {

    /* renamed from: a  reason: collision with root package name */
    public static final g f2256a;

    /* renamed from: b  reason: collision with root package name */
    public static final g f2257b;

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f2258f = {0};

    /* renamed from: g  reason: collision with root package name */
    private static final byte[] f2259g = {1, 42};

    /* renamed from: h  reason: collision with root package name */
    private static final DecimalFormat f2260h;

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f2261i;

    /* renamed from: j  reason: collision with root package name */
    private static final g f2262j;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f2263c;

    /* renamed from: d  reason: collision with root package name */
    private long f2264d;

    /* renamed from: e  reason: collision with root package name */
    private int f2265e;

    static {
        DecimalFormat decimalFormat = new DecimalFormat();
        f2260h = decimalFormat;
        f2261i = new byte[256];
        decimalFormat.setMinimumIntegerDigits(3);
        int i9 = 0;
        while (true) {
            byte[] bArr = f2261i;
            if (i9 >= bArr.length) {
                g gVar = new g();
                f2256a = gVar;
                gVar.b(f2258f, 0, 1);
                g gVar2 = new g();
                f2257b = gVar2;
                gVar2.f2263c = new byte[0];
                g gVar3 = new g();
                f2262j = gVar3;
                gVar3.b(f2259g, 0, 1);
                return;
            }
            if (i9 < 65 || i9 > 90) {
                bArr[i9] = (byte) i9;
            } else {
                bArr[i9] = (byte) ((i9 - 65) + 97);
            }
            i9++;
        }
    }

    private g() {
    }

    public g(b bVar) {
        byte[] bArr = new byte[64];
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            int f10 = bVar.f();
            int i9 = f10 & 192;
            if (i9 != 0) {
                if (i9 != 192) {
                    throw new IOException("bad label type");
                }
                int f11 = bVar.f() + ((f10 & (-193)) << 8);
                if (f11 >= bVar.a() - 2) {
                    throw new IOException("bad compression");
                }
                if (!z11) {
                    bVar.d();
                    z11 = true;
                }
                bVar.b(f11);
            } else if (d() >= 128) {
                throw new IOException("too many labels");
            } else {
                if (f10 == 0) {
                    a(f2258f, 0, 1);
                    z10 = true;
                } else {
                    bArr[0] = (byte) f10;
                    bVar.a(bArr, 1, f10);
                    a(bArr, 0, 1);
                }
            }
        }
        if (z11) {
            bVar.e();
        }
    }

    public g(g gVar, int i9) {
        int b10 = gVar.b();
        if (i9 > b10) {
            throw new IllegalArgumentException("attempted to remove too many labels");
        }
        this.f2263c = gVar.f2263c;
        int i10 = b10 - i9;
        b(i10);
        for (int i11 = 0; i11 < 7 && i11 < i10; i11++) {
            a(i11, gVar.a(i11 + i9));
        }
    }

    public g(String str, g gVar) {
        int i9;
        boolean z10;
        int i10;
        if (str.equals("")) {
            throw a(str, "empty name");
        }
        if (str.equals("@")) {
            if (gVar == null) {
                b(f2257b, this);
            } else {
                b(gVar, this);
            }
        } else if (str.equals(".")) {
            b(f2256a, this);
        } else {
            byte[] bArr = new byte[64];
            int i11 = 0;
            boolean z11 = false;
            int i12 = -1;
            int i13 = 1;
            int i14 = 0;
            for (int i15 = 0; i15 < str.length(); i15++) {
                byte charAt = (byte) str.charAt(i15);
                if (z11) {
                    if (charAt >= 48 && charAt <= 57 && i11 < 3) {
                        i11++;
                        i14 = (i14 * 10) + (charAt - 48);
                        if (i14 > 255) {
                            throw a(str, "bad escape");
                        }
                        if (i11 < 3) {
                            continue;
                        } else {
                            charAt = (byte) i14;
                        }
                    } else if (i11 > 0 && i11 < 3) {
                        throw a(str, "bad escape");
                    }
                    if (i13 > 63) {
                        throw a(str, "label too long");
                    }
                    i10 = i13 + 1;
                    bArr[i13] = charAt;
                    i12 = i13;
                    z11 = false;
                    i13 = i10;
                } else {
                    if (charAt == 92) {
                        i11 = 0;
                        z11 = true;
                        i14 = 0;
                    } else if (charAt != 46) {
                        i12 = i12 == -1 ? i15 : i12;
                        if (i13 > 63) {
                            throw a(str, "label too long");
                        }
                        i10 = i13 + 1;
                        bArr[i13] = charAt;
                        i13 = i10;
                    } else if (i12 == -1) {
                        throw a(str, "invalid empty label");
                    } else {
                        bArr[0] = (byte) (i13 - 1);
                        a(str, bArr, 0, 1);
                        i12 = -1;
                        i13 = 1;
                    }
                }
            }
            if (i11 > 0 && i11 < 3) {
                throw a(str, "bad escape");
            }
            if (z11) {
                throw a(str, "bad escape");
            }
            if (i12 == -1) {
                z10 = true;
                i9 = 0;
                a(str, f2258f, 0, 1);
            } else {
                i9 = 0;
                bArr[0] = (byte) (i13 - 1);
                a(str, bArr, 0, 1);
                z10 = false;
            }
            if (gVar == null || z10) {
                return;
            }
            a(str, gVar.f2263c, gVar.a(i9), gVar.d());
        }
    }

    private final int a(int i9) {
        if (i9 == 0 && d() == 0) {
            return 0;
        }
        if (i9 < 0 || i9 >= d()) {
            throw new IllegalArgumentException("label out of range");
        }
        if (i9 < 7) {
            return ((int) (this.f2264d >>> ((7 - i9) * 8))) & 255;
        }
        int a10 = a(6);
        for (int i10 = 6; i10 < i9; i10++) {
            a10 += this.f2263c[a10] + 1;
        }
        return a10;
    }

    public static g a(g gVar, g gVar2) {
        if (gVar.a()) {
            return gVar;
        }
        g gVar3 = new g();
        b(gVar, gVar3);
        gVar3.a(gVar2.f2263c, gVar2.a(0), gVar2.d());
        return gVar3;
    }

    public static g a(String str) {
        return a(str, (g) null);
    }

    public static g a(String str, g gVar) {
        return (!str.equals("@") || gVar == null) ? str.equals(".") ? f2256a : new g(str, gVar) : gVar;
    }

    private static IOException a(String str, String str2) {
        return new IOException("'" + str + "': " + str2);
    }

    private String a(byte[] bArr, int i9) {
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = i9 + 1;
        int i11 = bArr[i9];
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            int i13 = bArr[i12] & UByte.MAX_VALUE;
            if (i13 <= 32 || i13 >= 127) {
                stringBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                stringBuffer.append(f2260h.format(i13));
            } else {
                if (i13 == 34 || i13 == 40 || i13 == 41 || i13 == 46 || i13 == 59 || i13 == 92 || i13 == 64 || i13 == 36) {
                    stringBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                }
                stringBuffer.append((char) i13);
            }
        }
        return stringBuffer.toString();
    }

    private final void a(int i9, int i10) {
        if (i9 >= 7) {
            return;
        }
        int i11 = (7 - i9) * 8;
        this.f2264d = (i10 << i11) | (this.f2264d & (~(255 << i11)));
    }

    private final void a(String str, byte[] bArr, int i9, int i10) {
        try {
            a(bArr, i9, i10);
        } catch (Exception unused) {
            throw a(str, "Name too long");
        }
    }

    private final void a(byte[] bArr, int i9, int i10) {
        byte[] bArr2 = this.f2263c;
        int length = bArr2 == null ? 0 : bArr2.length - a(0);
        int i11 = i9;
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = bArr[i11];
            if (i14 > 63) {
                throw new IllegalStateException("invalid label");
            }
            int i15 = i14 + 1;
            i11 += i15;
            i12 += i15;
        }
        int i16 = length + i12;
        if (i16 > 255) {
            throw new IOException();
        }
        int d10 = d();
        int i17 = d10 + i10;
        if (i17 > 128) {
            throw new IllegalStateException("too many labels");
        }
        byte[] bArr3 = new byte[i16];
        if (length != 0) {
            System.arraycopy(this.f2263c, a(0), bArr3, 0, length);
        }
        System.arraycopy(bArr, i9, bArr3, length, i12);
        this.f2263c = bArr3;
        for (int i18 = 0; i18 < i10; i18++) {
            a(d10 + i18, length);
            length += bArr3[length] + 1;
        }
        b(i17);
    }

    private final void b(int i9) {
        this.f2264d = (this.f2264d & (-256)) | i9;
    }

    private static final void b(g gVar, g gVar2) {
        if (gVar.a(0) == 0) {
            gVar2.f2263c = gVar.f2263c;
            gVar2.f2264d = gVar.f2264d;
            return;
        }
        int a10 = gVar.a(0);
        int length = gVar.f2263c.length - a10;
        int b10 = gVar.b();
        byte[] bArr = new byte[length];
        gVar2.f2263c = bArr;
        System.arraycopy(gVar.f2263c, a10, bArr, 0, length);
        for (int i9 = 0; i9 < b10 && i9 < 7; i9++) {
            gVar2.a(i9, gVar.a(i9) - a10);
        }
        gVar2.b(b10);
    }

    private final void b(byte[] bArr, int i9, int i10) {
        try {
            a(bArr, i9, i10);
        } catch (Exception unused) {
        }
    }

    private final boolean b(byte[] bArr, int i9) {
        int b10 = b();
        int a10 = a(0);
        int i10 = 0;
        while (i10 < b10) {
            byte[] bArr2 = this.f2263c;
            if (bArr2[a10] != bArr[i9]) {
                return false;
            }
            int i11 = a10 + 1;
            byte b11 = bArr2[a10];
            i9++;
            if (b11 > 63) {
                throw new IllegalStateException("invalid label");
            }
            int i12 = 0;
            while (i12 < b11) {
                byte[] bArr3 = f2261i;
                int i13 = i11 + 1;
                int i14 = i9 + 1;
                if (bArr3[this.f2263c[i11] & UByte.MAX_VALUE] != bArr3[bArr[i9] & UByte.MAX_VALUE]) {
                    return false;
                }
                i12++;
                i9 = i14;
                i11 = i13;
            }
            i10++;
            a10 = i11;
        }
        return true;
    }

    private final int d() {
        return (int) (this.f2264d & 255);
    }

    public String a(boolean z10) {
        int b10 = b();
        if (b10 == 0) {
            return "@";
        }
        int i9 = 0;
        if (b10 == 1 && this.f2263c[a(0)] == 0) {
            return ".";
        }
        StringBuffer stringBuffer = new StringBuffer();
        int a10 = a(0);
        while (true) {
            if (i9 >= b10) {
                break;
            }
            byte b11 = this.f2263c[a10];
            if (b11 > 63) {
                throw new IllegalStateException("invalid label");
            }
            if (b11 != 0) {
                if (i9 > 0) {
                    stringBuffer.append(JwtParser.SEPARATOR_CHAR);
                }
                stringBuffer.append(a(this.f2263c, a10));
                a10 += b11 + 1;
                i9++;
            } else if (!z10) {
                stringBuffer.append(JwtParser.SEPARATOR_CHAR);
            }
        }
        return stringBuffer.toString();
    }

    public void a(c cVar) {
        cVar.a(c());
    }

    public void a(c cVar, a aVar) {
        int b10 = b();
        int i9 = 0;
        while (i9 < b10 - 1) {
            g gVar = i9 == 0 ? this : new g(this, i9);
            int a10 = aVar != null ? aVar.a(gVar) : -1;
            if (a10 >= 0) {
                cVar.c(49152 | a10);
                return;
            }
            if (aVar != null) {
                aVar.a(cVar.a(), gVar);
            }
            int a11 = a(i9);
            byte[] bArr = this.f2263c;
            cVar.a(bArr, a11, bArr[a11] + 1);
            i9++;
        }
        cVar.b(0);
    }

    public void a(c cVar, a aVar, boolean z10) {
        if (z10) {
            a(cVar);
        } else {
            a(cVar, aVar);
        }
    }

    public boolean a() {
        int b10 = b();
        return b10 != 0 && this.f2263c[a(b10 - 1)] == 0;
    }

    public int b() {
        return d();
    }

    public byte[] c() {
        int b10 = b();
        if (b10 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[this.f2263c.length - a(0)];
        int a10 = a(0);
        int i9 = 0;
        for (int i10 = 0; i10 < b10; i10++) {
            byte[] bArr2 = this.f2263c;
            byte b11 = bArr2[a10];
            if (b11 > 63) {
                throw new IllegalStateException("invalid label");
            }
            bArr[i9] = bArr2[a10];
            i9++;
            a10++;
            int i11 = 0;
            while (i11 < b11) {
                bArr[i9] = f2261i[this.f2263c[a10] & UByte.MAX_VALUE];
                i11++;
                i9++;
                a10++;
            }
        }
        return bArr;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        g gVar = (g) obj;
        if (this == gVar) {
            return 0;
        }
        int b10 = b();
        int b11 = gVar.b();
        int i9 = b10 > b11 ? b11 : b10;
        for (int i10 = 1; i10 <= i9; i10++) {
            int a10 = a(b10 - i10);
            int a11 = gVar.a(b11 - i10);
            byte b12 = this.f2263c[a10];
            byte b13 = gVar.f2263c[a11];
            for (int i11 = 0; i11 < b12 && i11 < b13; i11++) {
                byte[] bArr = f2261i;
                int i12 = bArr[this.f2263c[(i11 + a10) + 1] & UByte.MAX_VALUE] - bArr[gVar.f2263c[(i11 + a11) + 1] & UByte.MAX_VALUE];
                if (i12 != 0) {
                    return i12;
                }
            }
            if (b12 != b13) {
                return b12 - b13;
            }
        }
        return b10 - b11;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (gVar.f2265e == 0) {
            gVar.hashCode();
        }
        if (this.f2265e == 0) {
            hashCode();
        }
        if (gVar.f2265e == this.f2265e && gVar.b() == b()) {
            return b(gVar.f2263c, gVar.a(0));
        }
        return false;
    }

    public int hashCode() {
        int i9 = this.f2265e;
        if (i9 != 0) {
            return i9;
        }
        int i10 = 0;
        int a10 = a(0);
        while (true) {
            byte[] bArr = this.f2263c;
            if (a10 >= bArr.length) {
                this.f2265e = i10;
                return i10;
            }
            i10 += (i10 << 3) + f2261i[bArr[a10] & UByte.MAX_VALUE];
            a10++;
        }
    }

    public String toString() {
        return a(false);
    }
}
