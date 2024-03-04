package io.grpc.netty.shaded.io.netty.handler.codec.http;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5.dex */
final class x {
    private static void a(StringBuilder sb2, v vVar) {
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.m(vVar));
        sb2.append("(decodeResult: ");
        sb2.append(vVar.a());
        sb2.append(", version: ");
        sb2.append(vVar.b());
        sb2.append(')');
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a);
    }

    private static void b(StringBuilder sb2, l lVar) {
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.m(lVar));
        sb2.append("(decodeResult: ");
        sb2.append(lVar.a());
        sb2.append(", version: ");
        sb2.append(lVar.b());
        sb2.append(", content: ");
        sb2.append(lVar.content());
        sb2.append(')');
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder c(StringBuilder sb2, m mVar) {
        b(sb2, mVar);
        f(sb2, mVar);
        e(sb2, mVar.h());
        e(sb2, mVar.x());
        j(sb2);
        return sb2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder d(StringBuilder sb2, n nVar) {
        b(sb2, nVar);
        g(sb2, nVar);
        e(sb2, nVar.h());
        e(sb2, nVar.x());
        j(sb2);
        return sb2;
    }

    private static void e(StringBuilder sb2, t tVar) {
        Iterator<Map.Entry<String, String>> it = tVar.iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            sb2.append(next.getKey());
            sb2.append(": ");
            sb2.append(next.getValue());
            sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a);
        }
    }

    private static void f(StringBuilder sb2, d0 d0Var) {
        sb2.append(d0Var.method());
        sb2.append(' ');
        sb2.append(d0Var.i());
        sb2.append(' ');
        sb2.append(d0Var.b());
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a);
    }

    private static void g(StringBuilder sb2, f0 f0Var) {
        sb2.append(f0Var.b());
        sb2.append(' ');
        sb2.append(f0Var.t());
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder h(StringBuilder sb2, d0 d0Var) {
        a(sb2, d0Var);
        f(sb2, d0Var);
        e(sb2, d0Var.h());
        j(sb2);
        return sb2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder i(StringBuilder sb2, f0 f0Var) {
        a(sb2, f0Var);
        g(sb2, f0Var);
        e(sb2, f0Var.h());
        j(sb2);
        return sb2;
    }

    private static void j(StringBuilder sb2) {
        sb2.setLength(sb2.length() - io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a.length());
    }
}
