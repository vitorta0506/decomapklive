package com.google.protobuf;

import com.google.protobuf.f1;
import java.util.Map;
/* loaded from: classes3.dex */
class j1 implements h1 {
    private static <K, V> int i(int i9, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        f1 f1Var = (f1) obj2;
        int i10 = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapFieldLite.entrySet()) {
            i10 += f1Var.a(i9, entry.getKey(), entry.getValue());
        }
        return i10;
    }

    private static <K, V> MapFieldLite<K, V> j(Object obj, Object obj2) {
        MapFieldLite<K, V> mapFieldLite = (MapFieldLite) obj;
        MapFieldLite<K, V> mapFieldLite2 = (MapFieldLite) obj2;
        if (!mapFieldLite2.isEmpty()) {
            if (!mapFieldLite.isMutable()) {
                mapFieldLite = mapFieldLite.mutableCopy();
            }
            mapFieldLite.mergeFrom(mapFieldLite2);
        }
        return mapFieldLite;
    }

    @Override // com.google.protobuf.h1
    public Object a(Object obj, Object obj2) {
        return j(obj, obj2);
    }

    @Override // com.google.protobuf.h1
    public f1.b<?, ?> b(Object obj) {
        return ((f1) obj).c();
    }

    @Override // com.google.protobuf.h1
    public Map<?, ?> c(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.google.protobuf.h1
    public Object d(Object obj) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    @Override // com.google.protobuf.h1
    public Map<?, ?> e(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.google.protobuf.h1
    public Object f(Object obj) {
        ((MapFieldLite) obj).makeImmutable();
        return obj;
    }

    @Override // com.google.protobuf.h1
    public int g(int i9, Object obj, Object obj2) {
        return i(i9, obj, obj2);
    }

    @Override // com.google.protobuf.h1
    public boolean h(Object obj) {
        return !((MapFieldLite) obj).isMutable();
    }
}
