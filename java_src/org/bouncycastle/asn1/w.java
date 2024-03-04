package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes7.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f55987a;

    /* renamed from: b  reason: collision with root package name */
    private final int f55988b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[][] f55989c;

    public w(InputStream inputStream) {
        this(inputStream, a2.c(inputStream));
    }

    public w(InputStream inputStream, int i9) {
        this.f55987a = inputStream;
        this.f55988b = i9;
        this.f55989c = new byte[11];
    }

    private void e(boolean z10) {
        InputStream inputStream = this.f55987a;
        if (inputStream instanceof v1) {
            ((v1) inputStream).d(z10);
        }
    }

    e a(int i9) throws IOException {
        if (i9 != 4) {
            if (i9 != 8) {
                if (i9 != 16) {
                    if (i9 == 17) {
                        return new i0(this);
                    }
                    throw new ASN1Exception("unknown BER object encountered: 0x" + Integer.toHexString(i9));
                }
                return new g0(this);
            }
            return new p0(this);
        }
        return new e0(this);
    }

    public e b() throws IOException {
        int read = this.f55987a.read();
        if (read == -1) {
            return null;
        }
        boolean z10 = false;
        e(false);
        int p10 = j.p(this.f55987a, read);
        boolean z11 = (read & 32) != 0;
        int k10 = j.k(this.f55987a, this.f55988b, (p10 == 4 || p10 == 16 || p10 == 17 || p10 == 8) ? true : true);
        if (k10 < 0) {
            if (z11) {
                w wVar = new w(new v1(this.f55987a, this.f55988b), this.f55988b);
                return (read & 64) != 0 ? new b0(p10, wVar) : (read & 128) != 0 ? new k0(true, p10, wVar) : wVar.a(p10);
            }
            throw new IOException("indefinite-length primitive encoding encountered");
        }
        t1 t1Var = new t1(this.f55987a, k10, this.f55988b);
        if ((read & 64) != 0) {
            return new i1(z11, p10, t1Var.e());
        }
        if ((read & 128) != 0) {
            return new k0(z11, p10, new w(t1Var));
        }
        if (!z11) {
            if (p10 != 4) {
                try {
                    return j.b(p10, t1Var, this.f55989c);
                } catch (IllegalArgumentException e10) {
                    throw new ASN1Exception("corrupted stream detected", e10);
                }
            }
            return new x0(t1Var);
        } else if (p10 != 4) {
            if (p10 != 8) {
                if (p10 != 16) {
                    if (p10 == 17) {
                        return new q1(new w(t1Var));
                    }
                    throw new IOException("unknown tag " + p10 + " encountered");
                }
                return new o1(new w(t1Var));
            }
            return new p0(new w(t1Var));
        } else {
            return new e0(new w(t1Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r c(boolean z10, int i9) throws IOException {
        if (z10) {
            f d10 = d();
            return this.f55987a instanceof v1 ? d10.f() == 1 ? new j0(true, i9, d10.d(0)) : new j0(false, i9, c0.a(d10)) : d10.f() == 1 ? new r1(true, i9, d10.d(0)) : new r1(false, i9, l1.a(d10));
        }
        return new r1(false, i9, new w0(((t1) this.f55987a).e()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f d() throws IOException {
        e b10 = b();
        if (b10 == null) {
            return new f(0);
        }
        f fVar = new f();
        do {
            fVar.a(b10 instanceof u1 ? ((u1) b10).d() : b10.f());
            b10 = b();
        } while (b10 != null);
        return fVar;
    }
}
