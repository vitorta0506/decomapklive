package com.xiaomi.push;

import java.io.InputStream;
import java.util.Vector;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes5.dex */
public final class l0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f36950a;

    /* renamed from: b  reason: collision with root package name */
    private int f36951b;

    /* renamed from: c  reason: collision with root package name */
    private int f36952c;

    /* renamed from: d  reason: collision with root package name */
    private int f36953d;

    /* renamed from: e  reason: collision with root package name */
    private final InputStream f36954e;

    /* renamed from: f  reason: collision with root package name */
    private int f36955f;

    /* renamed from: g  reason: collision with root package name */
    private int f36956g;

    /* renamed from: h  reason: collision with root package name */
    private int f36957h;

    /* renamed from: i  reason: collision with root package name */
    private int f36958i;

    /* renamed from: j  reason: collision with root package name */
    private int f36959j;

    /* renamed from: k  reason: collision with root package name */
    private int f36960k;

    private l0(InputStream inputStream) {
        this.f36957h = Integer.MAX_VALUE;
        this.f36959j = 64;
        this.f36960k = 67108864;
        this.f36950a = new byte[4096];
        this.f36951b = 0;
        this.f36953d = 0;
        this.f36954e = inputStream;
    }

    private l0(byte[] bArr, int i9, int i10) {
        this.f36957h = Integer.MAX_VALUE;
        this.f36959j = 64;
        this.f36960k = 67108864;
        this.f36950a = bArr;
        this.f36951b = i10 + i9;
        this.f36953d = i9;
        this.f36954e = null;
    }

    public static l0 f(InputStream inputStream) {
        return new l0(inputStream);
    }

    public static l0 g(byte[] bArr, int i9, int i10) {
        return new l0(bArr, i9, i10);
    }

    private boolean n(boolean z10) {
        int i9 = this.f36953d;
        int i10 = this.f36951b;
        if (i9 >= i10) {
            int i11 = this.f36956g;
            if (i11 + i10 == this.f36957h) {
                if (z10) {
                    throw d.a();
                }
                return false;
            }
            this.f36956g = i11 + i10;
            this.f36953d = 0;
            InputStream inputStream = this.f36954e;
            int read = inputStream == null ? -1 : inputStream.read(this.f36950a);
            this.f36951b = read;
            if (read == 0 || read < -1) {
                throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.f36951b + "\nThe InputStream implementation is buggy.");
            } else if (read == -1) {
                this.f36951b = 0;
                if (z10) {
                    throw d.a();
                }
                return false;
            } else {
                r();
                int i12 = this.f36956g + this.f36951b + this.f36952c;
                if (i12 > this.f36960k || i12 < 0) {
                    throw d.h();
                }
                return true;
            }
        }
        throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
    }

    private void r() {
        int i9 = this.f36951b + this.f36952c;
        this.f36951b = i9;
        int i10 = this.f36956g + i9;
        int i11 = this.f36957h;
        if (i10 <= i11) {
            this.f36952c = 0;
            return;
        }
        int i12 = i10 - i11;
        this.f36952c = i12;
        this.f36951b = i9 - i12;
    }

    public byte a() {
        if (this.f36953d == this.f36951b) {
            n(true);
        }
        byte[] bArr = this.f36950a;
        int i9 = this.f36953d;
        this.f36953d = i9 + 1;
        return bArr[i9];
    }

    public int b() {
        if (t()) {
            this.f36955f = 0;
            return 0;
        }
        int x10 = x();
        this.f36955f = x10;
        if (x10 != 0) {
            return x10;
        }
        throw d.d();
    }

    public int c(int i9) {
        if (i9 >= 0) {
            int i10 = i9 + this.f36956g + this.f36953d;
            int i11 = this.f36957h;
            if (i10 <= i11) {
                this.f36957h = i10;
                r();
                return i11;
            }
            throw d.a();
        }
        throw d.b();
    }

    public long d() {
        return q();
    }

    public a e() {
        int x10 = x();
        int i9 = this.f36951b;
        int i10 = this.f36953d;
        if (x10 > i9 - i10 || x10 <= 0) {
            return a.b(o(x10));
        }
        a c10 = a.c(this.f36950a, i10, x10);
        this.f36953d += x10;
        return c10;
    }

    public String h() {
        int x10 = x();
        int i9 = this.f36951b;
        int i10 = this.f36953d;
        if (x10 > i9 - i10 || x10 <= 0) {
            return new String(o(x10), "UTF-8");
        }
        String str = new String(this.f36950a, i10, x10, "UTF-8");
        this.f36953d += x10;
        return str;
    }

    public void i() {
        int b10;
        do {
            b10 = b();
            if (b10 == 0) {
                return;
            }
        } while (m(b10));
    }

    public void j(int i9) {
        if (this.f36955f != i9) {
            throw d.e();
        }
    }

    public void k(g2 g2Var) {
        int x10 = x();
        if (this.f36958i >= this.f36959j) {
            throw d.g();
        }
        int c10 = c(x10);
        this.f36958i++;
        g2Var.b(this);
        j(0);
        this.f36958i--;
        s(c10);
    }

    public boolean l() {
        return x() != 0;
    }

    public boolean m(int i9) {
        int a10 = w2.a(i9);
        if (a10 == 0) {
            p();
            return true;
        } else if (a10 == 1) {
            v();
            return true;
        } else if (a10 == 2) {
            w(x());
            return true;
        } else if (a10 == 3) {
            i();
            j(w2.b(w2.c(i9), 4));
            return true;
        } else if (a10 != 4) {
            if (a10 == 5) {
                y();
                return true;
            }
            throw d.f();
        } else {
            return false;
        }
    }

    public byte[] o(int i9) {
        if (i9 < 0) {
            throw d.b();
        }
        int i10 = this.f36956g;
        int i11 = this.f36953d;
        int i12 = i10 + i11 + i9;
        int i13 = this.f36957h;
        if (i12 > i13) {
            w((i13 - i10) - i11);
            throw d.a();
        }
        int i14 = this.f36951b;
        if (i9 <= i14 - i11) {
            byte[] bArr = new byte[i9];
            System.arraycopy(this.f36950a, i11, bArr, 0, i9);
            this.f36953d += i9;
            return bArr;
        } else if (i9 >= 4096) {
            this.f36956g = i10 + i14;
            this.f36953d = 0;
            this.f36951b = 0;
            int i15 = i14 - i11;
            int i16 = i9 - i15;
            Vector vector = new Vector();
            while (i16 > 0) {
                int min = Math.min(i16, 4096);
                byte[] bArr2 = new byte[min];
                int i17 = 0;
                while (i17 < min) {
                    InputStream inputStream = this.f36954e;
                    int read = inputStream == null ? -1 : inputStream.read(bArr2, i17, min - i17);
                    if (read == -1) {
                        throw d.a();
                    }
                    this.f36956g += read;
                    i17 += read;
                }
                i16 -= min;
                vector.addElement(bArr2);
            }
            byte[] bArr3 = new byte[i9];
            System.arraycopy(this.f36950a, i11, bArr3, 0, i15);
            for (int i18 = 0; i18 < vector.size(); i18++) {
                byte[] bArr4 = (byte[]) vector.elementAt(i18);
                System.arraycopy(bArr4, 0, bArr3, i15, bArr4.length);
                i15 += bArr4.length;
            }
            return bArr3;
        } else {
            byte[] bArr5 = new byte[i9];
            int i19 = i14 - i11;
            System.arraycopy(this.f36950a, i11, bArr5, 0, i19);
            this.f36953d = this.f36951b;
            while (true) {
                n(true);
                int i20 = i9 - i19;
                int i21 = this.f36951b;
                if (i20 <= i21) {
                    System.arraycopy(this.f36950a, 0, bArr5, i19, i20);
                    this.f36953d = i20;
                    return bArr5;
                }
                System.arraycopy(this.f36950a, 0, bArr5, i19, i21);
                int i22 = this.f36951b;
                i19 += i22;
                this.f36953d = i22;
            }
        }
    }

    public int p() {
        return x();
    }

    public long q() {
        long j10 = 0;
        for (int i9 = 0; i9 < 64; i9 += 7) {
            byte a10 = a();
            j10 |= (a10 & ByteCompanionObject.MAX_VALUE) << i9;
            if ((a10 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j10;
            }
        }
        throw d.c();
    }

    public void s(int i9) {
        this.f36957h = i9;
        r();
    }

    public boolean t() {
        return this.f36953d == this.f36951b && !n(false);
    }

    public int u() {
        return x();
    }

    public long v() {
        byte a10 = a();
        byte a11 = a();
        return ((a11 & 255) << 8) | (a10 & 255) | ((a() & 255) << 16) | ((a() & 255) << 24) | ((a() & 255) << 32) | ((a() & 255) << 40) | ((a() & 255) << 48) | ((a() & 255) << 56);
    }

    public void w(int i9) {
        if (i9 < 0) {
            throw d.b();
        }
        int i10 = this.f36956g;
        int i11 = this.f36953d;
        int i12 = i10 + i11 + i9;
        int i13 = this.f36957h;
        if (i12 > i13) {
            w((i13 - i10) - i11);
            throw d.a();
        }
        int i14 = this.f36951b;
        if (i9 <= i14 - i11) {
            this.f36953d = i11 + i9;
            return;
        }
        int i15 = i14 - i11;
        this.f36956g = i10 + i14;
        this.f36953d = 0;
        this.f36951b = 0;
        while (i15 < i9) {
            InputStream inputStream = this.f36954e;
            int skip = inputStream == null ? -1 : (int) inputStream.skip(i9 - i15);
            if (skip <= 0) {
                throw d.a();
            }
            i15 += skip;
            this.f36956g += skip;
        }
    }

    public int x() {
        int i9;
        byte a10 = a();
        if (a10 >= 0) {
            return a10;
        }
        int i10 = a10 & ByteCompanionObject.MAX_VALUE;
        byte a11 = a();
        if (a11 >= 0) {
            i9 = a11 << 7;
        } else {
            i10 |= (a11 & ByteCompanionObject.MAX_VALUE) << 7;
            byte a12 = a();
            if (a12 >= 0) {
                i9 = a12 << 14;
            } else {
                i10 |= (a12 & ByteCompanionObject.MAX_VALUE) << 14;
                byte a13 = a();
                if (a13 < 0) {
                    int i11 = i10 | ((a13 & ByteCompanionObject.MAX_VALUE) << 21);
                    byte a14 = a();
                    int i12 = i11 | (a14 << 28);
                    if (a14 < 0) {
                        for (int i13 = 0; i13 < 5; i13++) {
                            if (a() >= 0) {
                                return i12;
                            }
                        }
                        throw d.c();
                    }
                    return i12;
                }
                i9 = a13 << 21;
            }
        }
        return i10 | i9;
    }

    public int y() {
        return (a() & UByte.MAX_VALUE) | ((a() & UByte.MAX_VALUE) << 8) | ((a() & UByte.MAX_VALUE) << 16) | ((a() & UByte.MAX_VALUE) << 24);
    }
}
