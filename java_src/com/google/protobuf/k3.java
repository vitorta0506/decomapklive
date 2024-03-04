package com.google.protobuf;

import com.google.protobuf.h3;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class k3 extends g3<h3, h3.b> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: A */
    public h3 g(Object obj) {
        return ((GeneratedMessageV3) obj).unknownFields;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: B */
    public int h(h3 h3Var) {
        return h3Var.getSerializedSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: C */
    public int i(h3 h3Var) {
        return h3Var.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: D */
    public h3 k(h3 h3Var, h3 h3Var2) {
        return h3Var.toBuilder().p(h3Var2).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: E */
    public h3.b n() {
        return h3.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: F */
    public void o(Object obj, h3.b bVar) {
        ((GeneratedMessageV3) obj).unknownFields = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: G */
    public void p(Object obj, h3 h3Var) {
        ((GeneratedMessageV3) obj).unknownFields = h3Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: H */
    public h3 r(h3.b bVar) {
        return bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: I */
    public void s(h3 h3Var, Writer writer) throws IOException {
        h3Var.n(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: J */
    public void t(h3 h3Var, Writer writer) throws IOException {
        h3Var.o(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    public void j(Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    public boolean q(k2 k2Var) {
        return k2Var.J();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: u */
    public void a(h3.b bVar, int i9, int i10) {
        bVar.j(i9, h3.c.t().b(i10).g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: v */
    public void b(h3.b bVar, int i9, long j10) {
        bVar.j(i9, h3.c.t().c(j10).g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: w */
    public void c(h3.b bVar, int i9, h3 h3Var) {
        bVar.j(i9, h3.c.t().d(h3Var).g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: x */
    public void d(h3.b bVar, int i9, ByteString byteString) {
        bVar.j(i9, h3.c.t().e(byteString).g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: y */
    public void e(h3.b bVar, int i9, long j10) {
        bVar.j(i9, h3.c.t().f(j10).g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g3
    /* renamed from: z */
    public h3.b f(Object obj) {
        return ((GeneratedMessageV3) obj).unknownFields.toBuilder();
    }
}
