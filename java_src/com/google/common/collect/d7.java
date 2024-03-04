package com.google.common.collect;

import java.lang.Comparable;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final /* synthetic */ class d7<C extends Comparable> {
    public static void a(e7 e7Var, Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            e7Var.add((Range) it.next());
        }
    }

    public static boolean b(e7 e7Var, Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (!e7Var.encloses((Range) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static void c(e7 e7Var, Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            e7Var.remove((Range) it.next());
        }
    }
}
