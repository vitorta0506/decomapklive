package com.google.protobuf;

import java.io.IOException;
/* loaded from: classes3.dex */
class j3 extends g3<i3, i3> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: A */
    public i3 g(Object obj) {
        return ((GeneratedMessageLite) obj).f14689a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: B */
    public int h(i3 i3Var) {
        return i3Var.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: C */
    public int i(i3 i3Var) {
        return i3Var.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: D */
    public i3 k(i3 i3Var, i3 i3Var2) {
        return i3Var2.equals(i3.c()) ? i3Var : i3.i(i3Var, i3Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: E */
    public i3 n() {
        return i3.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: F */
    public void o(Object obj, i3 i3Var) {
        p(obj, i3Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: G */
    public void p(Object obj, i3 i3Var) {
        ((GeneratedMessageLite) obj).f14689a = i3Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: H */
    public i3 r(i3 i3Var) {
        i3Var.h();
        return i3Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: I */
    public void s(i3 i3Var, Writer writer) throws IOException {
        i3Var.o(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: J */
    public void t(i3 i3Var, Writer writer) throws IOException {
        i3Var.q(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    public void j(Object obj) {
        g(obj).h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    public boolean q(k2 k2Var) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: u */
    public void a(i3 i3Var, int i9, int i10) {
        i3Var.m(WireFormat.c(i9, 5), Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: v */
    public void b(i3 i3Var, int i9, long j10) {
        i3Var.m(WireFormat.c(i9, 1), Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: w */
    public void c(i3 i3Var, int i9, i3 i3Var2) {
        i3Var.m(WireFormat.c(i9, 3), i3Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: x */
    public void d(i3 i3Var, int i9, ByteString byteString) {
        i3Var.m(WireFormat.c(i9, 2), byteString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: y */
    public void e(i3 i3Var, int i9, long j10) {
        i3Var.m(WireFormat.c(i9, 0), Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: z */
    public i3 f(Object obj) {
        i3 g10 = g(obj);
        if (g10 == i3.c()) {
            i3 j10 = i3.j();
            p(obj, j10);
            return j10;
        }
        return g10;
    }
}
