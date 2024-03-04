package com.google.protobuf;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class g3<T, B> {
    abstract void a(B b10, int i9, int i10);

    abstract void b(B b10, int i9, long j10);

    abstract void c(B b10, int i9, T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void d(B b10, int i9, ByteString byteString);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void e(B b10, int i9, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B f(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T g(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int h(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int i(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void j(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T k(T t10, T t11);

    final void l(B b10, k2 k2Var) throws IOException {
        while (k2Var.F() != Integer.MAX_VALUE && m(b10, k2Var)) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m(B b10, k2 k2Var) throws IOException {
        int tag = k2Var.getTag();
        int a10 = WireFormat.a(tag);
        int b11 = WireFormat.b(tag);
        if (b11 == 0) {
            e(b10, a10, k2Var.O());
            return true;
        } else if (b11 == 1) {
            b(b10, a10, k2Var.a());
            return true;
        } else if (b11 == 2) {
            d(b10, a10, k2Var.r());
            return true;
        } else if (b11 != 3) {
            if (b11 != 4) {
                if (b11 == 5) {
                    a(b10, a10, k2Var.y());
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            return false;
        } else {
            B n9 = n();
            int c10 = WireFormat.c(a10, 4);
            l(n9, k2Var);
            if (c10 == k2Var.getTag()) {
                c(b10, a10, r(n9));
                return true;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B n();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void o(Object obj, B b10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void p(Object obj, T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean q(k2 k2Var);

    abstract T r(B b10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void s(T t10, Writer writer) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void t(T t10, Writer writer) throws IOException;
}
