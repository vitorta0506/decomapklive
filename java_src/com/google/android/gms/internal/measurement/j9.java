package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
final class j9 extends n9 {

    /* renamed from: c  reason: collision with root package name */
    private static final Class f8152c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ j9(i9 i9Var) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.n9
    public final void a(Object obj, long j10) {
        Object unmodifiableList;
        List list = (List) lb.k(obj, j10);
        if (list instanceof h9) {
            unmodifiableList = ((h9) list).l();
        } else if (f8152c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof ga) && (list instanceof d9)) {
                d9 d9Var = (d9) list;
                if (d9Var.E()) {
                    d9Var.D();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        lb.x(obj, j10, unmodifiableList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.n9
    public final void b(Object obj, Object obj2, long j10) {
        g9 g9Var;
        List list = (List) lb.k(obj2, j10);
        int size = list.size();
        List list2 = (List) lb.k(obj, j10);
        if (list2.isEmpty()) {
            if (list2 instanceof h9) {
                list2 = new g9(size);
            } else if ((list2 instanceof ga) && (list2 instanceof d9)) {
                list2 = ((d9) list2).j(size);
            } else {
                list2 = new ArrayList(size);
            }
            lb.x(obj, j10, list2);
        } else {
            if (f8152c.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList = new ArrayList(list2.size() + size);
                arrayList.addAll(list2);
                lb.x(obj, j10, arrayList);
                g9Var = arrayList;
            } else if (list2 instanceof gb) {
                g9 g9Var2 = new g9(list2.size() + size);
                g9Var2.addAll(g9Var2.size(), (gb) list2);
                lb.x(obj, j10, g9Var2);
                g9Var = g9Var2;
            } else if ((list2 instanceof ga) && (list2 instanceof d9)) {
                d9 d9Var = (d9) list2;
                if (!d9Var.E()) {
                    list2 = d9Var.j(list2.size() + size);
                    lb.x(obj, j10, list2);
                }
            }
            list2 = g9Var;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        lb.x(obj, j10, list);
    }
}
