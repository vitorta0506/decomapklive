package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
final class c {
    static List<String> a(int i9, Iterable<String> iterable) {
        if (iterable == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(i9);
        for (String str : iterable) {
            arrayList.add(io.grpc.netty.shaded.io.netty.util.internal.s.a(str, "p"));
        }
        return (List) io.grpc.netty.shaded.io.netty.util.internal.s.b(arrayList, "result");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> b(Iterable<String> iterable) {
        return a(2, iterable);
    }
}
