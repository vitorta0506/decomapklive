package com.google.protobuf;

import com.google.protobuf.f1;
import java.util.Map;
/* loaded from: classes3.dex */
class i1 implements h1 {
    i1() {
    }

    private static <K, V> int i(int i9, Object obj, Object obj2) {
        int i10 = 0;
        if (obj == null) {
            return 0;
        }
        Map<K, V> i11 = ((g1) obj).i();
        e1 e1Var = (e1) obj2;
        if (i11.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : i11.entrySet()) {
            i10 += CodedOutputStream.X(i9) + CodedOutputStream.E(f1.b(e1Var.g(), entry.getKey(), entry.getValue()));
        }
        return i10;
    }

    private static <K, V> Object j(Object obj, Object obj2) {
        g1 g1Var = (g1) obj;
        g1<K, V> g1Var2 = (g1) obj2;
        if (!g1Var.m()) {
            g1Var.f();
        }
        g1Var.o(g1Var2);
        return g1Var;
    }

    @Override // com.google.protobuf.h1
    public Object a(Object obj, Object obj2) {
        return j(obj, obj2);
    }

    @Override // com.google.protobuf.h1
    public f1.b<?, ?> b(Object obj) {
        return ((e1) obj).g();
    }

    @Override // com.google.protobuf.h1
    public Map<?, ?> c(Object obj) {
        return ((g1) obj).l();
    }

    @Override // com.google.protobuf.h1
    public Object d(Object obj) {
        return g1.p((e1) obj);
    }

    @Override // com.google.protobuf.h1
    public Map<?, ?> e(Object obj) {
        return ((g1) obj).i();
    }

    @Override // com.google.protobuf.h1
    public Object f(Object obj) {
        ((g1) obj).n();
        return obj;
    }

    @Override // com.google.protobuf.h1
    public int g(int i9, Object obj, Object obj2) {
        return i(i9, obj, obj2);
    }

    @Override // com.google.protobuf.h1
    public boolean h(Object obj) {
        return !((g1) obj).m();
    }
}
