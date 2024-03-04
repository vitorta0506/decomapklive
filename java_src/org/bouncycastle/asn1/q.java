package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Enumeration;
/* loaded from: classes7.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private OutputStream f55962a;

    public q(OutputStream outputStream) {
        this.f55962a = outputStream;
    }

    public static q a(OutputStream outputStream) {
        return new q(outputStream);
    }

    public static q b(OutputStream outputStream, String str) {
        return str.equals("DER") ? new y0(outputStream) : str.equals("DL") ? new m1(outputStream) : new q(outputStream);
    }

    void c() throws IOException {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y0 d() {
        return new y0(this.f55962a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q e() {
        return new m1(this.f55962a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(int i9) throws IOException {
        this.f55962a.write(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(byte[] bArr, int i9, int i10) throws IOException {
        this.f55962a.write(bArr, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(Enumeration enumeration) throws IOException {
        while (enumeration.hasMoreElements()) {
            u(((e) enumeration.nextElement()).f(), true);
        }
    }

    final void i(e[] eVarArr) throws IOException {
        for (e eVar : eVarArr) {
            u(eVar.f(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j(boolean z10, int i9, byte b10) throws IOException {
        if (z10) {
            f(i9);
        }
        r(1);
        f(b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(boolean z10, int i9, byte b10, byte[] bArr) throws IOException {
        if (z10) {
            f(i9);
        }
        r(bArr.length + 1);
        f(b10);
        g(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l(boolean z10, int i9, byte b10, byte[] bArr, int i10, int i11, byte b11) throws IOException {
        if (z10) {
            f(i9);
        }
        r(i11 + 2);
        f(b10);
        g(bArr, i10, i11);
        f(b11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(boolean z10, int i9, int i10, byte[] bArr) throws IOException {
        v(z10, i9, i10);
        r(bArr.length);
        g(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n(boolean z10, int i9, byte[] bArr) throws IOException {
        if (z10) {
            f(i9);
        }
        r(bArr.length);
        g(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o(boolean z10, int i9, int i10, byte[] bArr) throws IOException {
        v(z10, i9, i10);
        f(128);
        g(bArr, 0, bArr.length);
        f(0);
        f(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void p(boolean z10, int i9, Enumeration enumeration) throws IOException {
        if (z10) {
            f(i9);
        }
        f(128);
        h(enumeration);
        f(0);
        f(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q(boolean z10, int i9, e[] eVarArr) throws IOException {
        if (z10) {
            f(i9);
        }
        f(128);
        i(eVarArr);
        f(0);
        f(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void r(int i9) throws IOException {
        if (i9 <= 127) {
            f((byte) i9);
            return;
        }
        int i10 = i9;
        int i11 = 1;
        while (true) {
            i10 >>>= 8;
            if (i10 == 0) {
                break;
            }
            i11++;
        }
        f((byte) (i11 | 128));
        for (int i12 = (i11 - 1) * 8; i12 >= 0; i12 -= 8) {
            f((byte) (i9 >> i12));
        }
    }

    public void s(e eVar) throws IOException {
        if (eVar == null) {
            throw new IOException("null object detected");
        }
        u(eVar.f(), true);
        c();
    }

    public void t(r rVar) throws IOException {
        if (rVar == null) {
            throw new IOException("null object detected");
        }
        u(rVar, true);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(r rVar, boolean z10) throws IOException {
        rVar.y(this, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void v(boolean z10, int i9, int i10) throws IOException {
        if (z10) {
            if (i10 < 31) {
                f(i9 | i10);
                return;
            }
            f(31 | i9);
            if (i10 < 128) {
                f(i10);
                return;
            }
            byte[] bArr = new byte[5];
            int i11 = 4;
            bArr[4] = (byte) (i10 & 127);
            do {
                i10 >>= 7;
                i11--;
                bArr[i11] = (byte) ((i10 & 127) | 128);
            } while (i10 > 127);
            g(bArr, i11, 5 - i11);
        }
    }
}
