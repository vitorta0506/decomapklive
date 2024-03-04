package com.google.protobuf;

import com.google.protobuf.WireFormat;
import com.google.protobuf.o1;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class f1<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final b<K, V> f14955a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14956a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14956a = iArr;
            try {
                iArr[WireFormat.FieldType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14956a[WireFormat.FieldType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14956a[WireFormat.FieldType.GROUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final WireFormat.FieldType f14957a;

        /* renamed from: b  reason: collision with root package name */
        public final K f14958b;

        /* renamed from: c  reason: collision with root package name */
        public final WireFormat.FieldType f14959c;

        /* renamed from: d  reason: collision with root package name */
        public final V f14960d;

        public b(WireFormat.FieldType fieldType, K k10, WireFormat.FieldType fieldType2, V v10) {
            this.f14957a = fieldType;
            this.f14958b = k10;
            this.f14959c = fieldType2;
            this.f14960d = v10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> int b(b<K, V> bVar, K k10, V v10) {
        return o0.l(bVar.f14957a, 1, k10) + o0.l(bVar.f14959c, 2, v10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map.Entry<K, V> d(p pVar, b<K, V> bVar, f0 f0Var) throws IOException {
        Object obj = bVar.f14958b;
        Object obj2 = bVar.f14960d;
        while (true) {
            int L = pVar.L();
            if (L == 0) {
                break;
            } else if (L == WireFormat.c(1, bVar.f14957a.getWireType())) {
                obj = e(pVar, f0Var, bVar.f14957a, obj);
            } else if (L == WireFormat.c(2, bVar.f14959c.getWireType())) {
                obj2 = e(pVar, f0Var, bVar.f14959c, obj2);
            } else if (!pVar.Q(L)) {
                break;
            }
        }
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    static <T> T e(p pVar, f0 f0Var, WireFormat.FieldType fieldType, T t10) throws IOException {
        int i9 = a.f14956a[fieldType.ordinal()];
        if (i9 == 1) {
            o1.a builder = ((o1) t10).toBuilder();
            pVar.C(builder, f0Var);
            return (T) builder.I();
        } else if (i9 != 2) {
            if (i9 != 3) {
                return (T) o0.K(pVar, fieldType, true);
            }
            throw new RuntimeException("Groups are not allowed in maps.");
        } else {
            return (T) Integer.valueOf(pVar.u());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void f(CodedOutputStream codedOutputStream, b<K, V> bVar, K k10, V v10) throws IOException {
        o0.N(codedOutputStream, bVar.f14957a, 1, k10);
        o0.N(codedOutputStream, bVar.f14959c, 2, v10);
    }

    public int a(int i9, K k10, V v10) {
        return CodedOutputStream.X(i9) + CodedOutputStream.E(b(this.f14955a, k10, v10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b<K, V> c() {
        return this.f14955a;
    }
}
