package io.grpc.netty.shaded.io.netty.handler.codec.http;

import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
public class e0 extends c0<d0> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.c0
    /* renamed from: J */
    public void F(kg.j jVar, d0 d0Var) throws Exception {
        kg.n.i(d0Var.method().a(), jVar);
        String i9 = d0Var.i();
        if (i9.isEmpty()) {
            kg.n.a0(jVar, 2109216);
        } else {
            int indexOf = i9.indexOf("://");
            boolean z10 = false;
            StringBuilder sb2 = i9;
            if (indexOf != -1) {
                char charAt = i9.charAt(0);
                sb2 = i9;
                if (charAt != '/') {
                    int i10 = indexOf + 3;
                    int indexOf2 = i9.indexOf(63, i10);
                    if (indexOf2 == -1) {
                        int lastIndexOf = i9.lastIndexOf(47);
                        sb2 = i9;
                        if (lastIndexOf < i10) {
                            z10 = true;
                            sb2 = i9;
                        }
                    } else {
                        int lastIndexOf2 = i9.lastIndexOf(47, indexOf2);
                        sb2 = i9;
                        if (lastIndexOf2 < i10) {
                            sb2 = new StringBuilder(i9).insert(indexOf2, IOUtils.DIR_SEPARATOR_UNIX);
                        }
                    }
                }
            }
            jVar.u2(32).D2(sb2, io.grpc.netty.shaded.io.netty.util.h.f45016d);
            if (z10) {
                kg.n.b0(jVar, 12064);
            } else {
                jVar.u2(32);
            }
        }
        d0Var.b().b(jVar);
        kg.n.b0(jVar, 3338);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.c0, pg.m
    public boolean s(Object obj) throws Exception {
        return super.s(obj) && !(obj instanceof f0);
    }
}
