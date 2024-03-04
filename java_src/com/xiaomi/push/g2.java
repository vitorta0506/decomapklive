package com.xiaomi.push;

import java.io.IOException;
/* loaded from: classes5.dex */
public abstract class g2 {
    public abstract int a();

    public abstract g2 b(l0 l0Var);

    public g2 c(byte[] bArr) {
        return d(bArr, 0, bArr.length);
    }

    public g2 d(byte[] bArr, int i9, int i10) {
        try {
            l0 g10 = l0.g(bArr, i9, i10);
            b(g10);
            g10.j(0);
            return this;
        } catch (d e10) {
            throw e10;
        } catch (IOException unused) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public abstract void e(c cVar);

    public void f(byte[] bArr, int i9, int i10) {
        try {
            c p10 = c.p(bArr, i9, i10);
            e(p10);
            p10.J();
        } catch (IOException unused) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean g(l0 l0Var, int i9) {
        return l0Var.m(i9);
    }

    public byte[] h() {
        int i9 = i();
        byte[] bArr = new byte[i9];
        f(bArr, 0, i9);
        return bArr;
    }

    public abstract int i();
}
