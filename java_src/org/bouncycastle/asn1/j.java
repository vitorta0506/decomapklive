package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
/* loaded from: classes7.dex */
public class j extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final int f55938a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f55939b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[][] f55940c;

    public j(InputStream inputStream) {
        this(inputStream, a2.c(inputStream));
    }

    public j(InputStream inputStream, int i9) {
        this(inputStream, i9, false);
    }

    public j(InputStream inputStream, int i9, boolean z10) {
        super(inputStream);
        this.f55938a = i9;
        this.f55939b = z10;
        this.f55940c = new byte[11];
    }

    public j(InputStream inputStream, boolean z10) {
        this(inputStream, a2.c(inputStream), z10);
    }

    public j(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public j(byte[] bArr, boolean z10) {
        this(new ByteArrayInputStream(bArr), bArr.length, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r b(int i9, t1 t1Var, byte[][] bArr) throws IOException {
        if (i9 != 10) {
            if (i9 != 12) {
                if (i9 != 30) {
                    switch (i9) {
                        case 1:
                            return c.K(d(t1Var, bArr));
                        case 2:
                            return new k(t1Var.e(), false);
                        case 3:
                            return b.K(t1Var.c(), t1Var);
                        case 4:
                            return new w0(t1Var.e());
                        case 5:
                            return u0.f55980a;
                        case 6:
                            return n.M(d(t1Var, bArr));
                        default:
                            switch (i9) {
                                case 18:
                                    return new v0(t1Var.e());
                                case 19:
                                    return new z0(t1Var.e());
                                case 20:
                                    return new c1(t1Var.e());
                                case 21:
                                    return new g1(t1Var.e());
                                case 22:
                                    return new t0(t1Var.e());
                                case 23:
                                    return new z(t1Var.e());
                                case 24:
                                    return new i(t1Var.e());
                                case 25:
                                    return new s0(t1Var.e());
                                case 26:
                                    return new h1(t1Var.e());
                                case 27:
                                    return new q0(t1Var.e());
                                case 28:
                                    return new f1(t1Var.e());
                                default:
                                    throw new IOException("unknown tag " + i9 + " encountered");
                            }
                    }
                }
                return new m0(c(t1Var));
            }
            return new e1(t1Var.e());
        }
        return g.K(d(t1Var, bArr));
    }

    private static char[] c(t1 t1Var) throws IOException {
        int i9;
        int c10 = t1Var.c();
        if ((c10 & 1) == 0) {
            int i10 = c10 / 2;
            char[] cArr = new char[i10];
            byte[] bArr = new byte[8];
            int i11 = 0;
            int i12 = 0;
            while (c10 >= 8) {
                if (dl.a.d(t1Var, bArr, 0, 8) != 8) {
                    throw new EOFException("EOF encountered in middle of BMPString");
                }
                cArr[i12] = (char) ((bArr[0] << 8) | (bArr[1] & UByte.MAX_VALUE));
                cArr[i12 + 1] = (char) ((bArr[2] << 8) | (bArr[3] & UByte.MAX_VALUE));
                cArr[i12 + 2] = (char) ((bArr[4] << 8) | (bArr[5] & UByte.MAX_VALUE));
                cArr[i12 + 3] = (char) ((bArr[6] << 8) | (bArr[7] & UByte.MAX_VALUE));
                i12 += 4;
                c10 -= 8;
            }
            if (c10 > 0) {
                if (dl.a.d(t1Var, bArr, 0, c10) != c10) {
                    throw new EOFException("EOF encountered in middle of BMPString");
                }
                while (true) {
                    int i13 = i11 + 1;
                    int i14 = i13 + 1;
                    i9 = i12 + 1;
                    cArr[i12] = (char) ((bArr[i11] << 8) | (bArr[i13] & UByte.MAX_VALUE));
                    if (i14 >= c10) {
                        break;
                    }
                    i11 = i14;
                    i12 = i9;
                }
                i12 = i9;
            }
            if (t1Var.c() == 0 && i10 == i12) {
                return cArr;
            }
            throw new IllegalStateException();
        }
        throw new IOException("malformed BMPString encoding encountered");
    }

    private static byte[] d(t1 t1Var, byte[][] bArr) throws IOException {
        int c10 = t1Var.c();
        if (c10 >= bArr.length) {
            return t1Var.e();
        }
        byte[] bArr2 = bArr[c10];
        if (bArr2 == null) {
            bArr2 = new byte[c10];
            bArr[c10] = bArr2;
        }
        t1Var.d(bArr2);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(InputStream inputStream, int i9, boolean z10) throws IOException {
        int read = inputStream.read();
        if (read >= 0) {
            if (read == 128) {
                return -1;
            }
            if (read > 127) {
                int i10 = read & 127;
                if (i10 > 4) {
                    throw new IOException("DER length more than 4 bytes: " + i10);
                }
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    int read2 = inputStream.read();
                    if (read2 < 0) {
                        throw new EOFException("EOF found reading length");
                    }
                    i11 = (i11 << 8) + read2;
                }
                if (i11 >= 0) {
                    if (i11 < i9 || z10) {
                        return i11;
                    }
                    throw new IOException("corrupted stream - out of bounds length found: " + i11 + " >= " + i9);
                }
                throw new IOException("corrupted stream - negative length found");
            }
            return read;
        }
        throw new EOFException("EOF found when length expected");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(InputStream inputStream, int i9) throws IOException {
        int i10 = i9 & 31;
        if (i10 == 31) {
            int i11 = 0;
            int read = inputStream.read();
            if ((read & 127) != 0) {
                while (read >= 0 && (read & 128) != 0) {
                    i11 = (i11 | (read & 127)) << 7;
                    read = inputStream.read();
                }
                if (read >= 0) {
                    return i11 | (read & 127);
                }
                throw new EOFException("EOF found inside tag value.");
            }
            throw new IOException("corrupted stream - invalid high tag number found");
        }
        return i10;
    }

    protected r a(int i9, int i10, int i11) throws IOException {
        boolean z10 = (i9 & 32) != 0;
        t1 t1Var = new t1(this, i11, this.f55938a);
        if ((i9 & 64) != 0) {
            return new i1(z10, i10, t1Var.e());
        }
        if ((i9 & 128) != 0) {
            return new w(t1Var).c(z10, i10);
        }
        if (z10) {
            if (i10 != 4) {
                if (i10 != 8) {
                    if (i10 == 16) {
                        return this.f55939b ? new x1(t1Var.e()) : l1.a(q(t1Var));
                    } else if (i10 == 17) {
                        return l1.b(q(t1Var));
                    } else {
                        throw new IOException("unknown tag " + i10 + " encountered");
                    }
                }
                return new k1(q(t1Var));
            }
            f q10 = q(t1Var);
            int f10 = q10.f();
            o[] oVarArr = new o[f10];
            for (int i12 = 0; i12 != f10; i12++) {
                e d10 = q10.d(i12);
                if (!(d10 instanceof o)) {
                    throw new ASN1Exception("unknown object encountered in constructed OCTET STRING: " + d10.getClass());
                }
                oVarArr[i12] = (o) d10;
            }
            return new d0(oVarArr);
        }
        return b(i10, t1Var, this.f55940c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f55938a;
    }

    protected int j() throws IOException {
        return k(this, this.f55938a, false);
    }

    public r o() throws IOException {
        int read = read();
        if (read <= 0) {
            if (read != 0) {
                return null;
            }
            throw new IOException("unexpected end-of-contents marker");
        }
        int p10 = p(this, read);
        boolean z10 = (read & 32) != 0;
        int j10 = j();
        if (j10 >= 0) {
            try {
                return a(read, p10, j10);
            } catch (IllegalArgumentException e10) {
                throw new ASN1Exception("corrupted stream detected", e10);
            }
        } else if (z10) {
            w wVar = new w(new v1(this, this.f55938a), this.f55938a);
            if ((read & 64) != 0) {
                return new b0(p10, wVar).d();
            }
            if ((read & 128) != 0) {
                return new k0(true, p10, wVar).d();
            }
            if (p10 != 4) {
                if (p10 != 8) {
                    if (p10 != 16) {
                        if (p10 == 17) {
                            return new i0(wVar).d();
                        }
                        throw new IOException("unknown BER object encountered");
                    }
                    return new g0(wVar).d();
                }
                return new p0(wVar).d();
            }
            return new e0(wVar).d();
        } else {
            throw new IOException("indefinite-length primitive encoding encountered");
        }
    }

    f q(t1 t1Var) throws IOException {
        if (t1Var.c() < 1) {
            return new f(0);
        }
        j jVar = new j(t1Var);
        f fVar = new f();
        while (true) {
            r o10 = jVar.o();
            if (o10 == null) {
                return fVar;
            }
            fVar.a(o10);
        }
    }
}
