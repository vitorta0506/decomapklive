package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes5.dex */
public final class o implements i {

    /* renamed from: b  reason: collision with root package name */
    public static final o f44711b = new o(true);

    /* renamed from: c  reason: collision with root package name */
    public static final o f44712c = new o(false);

    /* renamed from: a  reason: collision with root package name */
    private final boolean f44713a;

    private o(boolean z10) {
        this.f44713a = z10;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.i
    public String[] a(Iterable<String> iterable, List<String> list, Set<String> set) {
        String next;
        if (iterable == null) {
            if (this.f44713a) {
                return (String[]) list.toArray(new String[0]);
            }
            return (String[]) set.toArray(new String[0]);
        }
        ArrayList arrayList = new ArrayList(set.size());
        Iterator<String> it = iterable.iterator();
        while (it.hasNext() && (next = it.next()) != null) {
            arrayList.add(next);
        }
        return (String[]) arrayList.toArray(new String[0]);
    }
}
