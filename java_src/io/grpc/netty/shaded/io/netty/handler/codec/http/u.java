package io.grpc.netty.shaded.io.netty.handler.codec.http;
/* loaded from: classes5.dex */
final class u {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CharSequence charSequence, CharSequence charSequence2, kg.j jVar) {
        int length = charSequence.length();
        int length2 = charSequence2.length();
        jVar.n0(length + length2 + 4);
        int K2 = jVar.K2();
        b(jVar, K2, charSequence);
        int i9 = K2 + length;
        kg.n.I(jVar, i9, 14880);
        int i10 = i9 + 2;
        b(jVar, i10, charSequence2);
        int i11 = i10 + length2;
        kg.n.I(jVar, i11, 3338);
        jVar.L2(i11 + 2);
    }

    private static void b(kg.j jVar, int i9, CharSequence charSequence) {
        if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
            kg.n.h((io.grpc.netty.shaded.io.netty.util.c) charSequence, 0, jVar, i9, charSequence.length());
        } else {
            jVar.c2(i9, charSequence, io.grpc.netty.shaded.io.netty.util.h.f45018f);
        }
    }
}
