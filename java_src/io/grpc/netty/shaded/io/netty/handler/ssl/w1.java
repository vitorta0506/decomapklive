package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes5.dex */
public final class w1 implements i {

    /* renamed from: a  reason: collision with root package name */
    public static final w1 f44846a = new w1();

    private w1() {
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.i
    public String[] a(Iterable<String> iterable, List<String> list, Set<String> set) {
        ArrayList arrayList;
        String next;
        io.grpc.netty.shaded.io.netty.util.internal.s.h(list, "defaultCiphers");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(set, "supportedCiphers");
        if (iterable == null) {
            arrayList = new ArrayList(list.size());
            iterable = list;
        } else {
            arrayList = new ArrayList(set.size());
        }
        Iterator<String> it = iterable.iterator();
        while (it.hasNext() && (next = it.next()) != null) {
            if (set.contains(next)) {
                arrayList.add(next);
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }
}
