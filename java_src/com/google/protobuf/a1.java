package com.google.protobuf;

import com.google.protobuf.u0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class a1 {

    /* renamed from: a  reason: collision with root package name */
    private static final a1 f14851a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final a1 f14852b = new c();

    /* loaded from: classes3.dex */
    private static final class b extends a1 {

        /* renamed from: c  reason: collision with root package name */
        private static final Class<?> f14853c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private b() {
            super();
        }

        static <E> List<E> f(Object obj, long j10) {
            return (List) m3.G(obj, j10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static <L> List<L> g(Object obj, long j10, int i9) {
            y0 y0Var;
            List<L> arrayList;
            List<L> f10 = f(obj, j10);
            if (f10.isEmpty()) {
                if (f10 instanceof z0) {
                    arrayList = new y0(i9);
                } else if ((f10 instanceof f2) && (f10 instanceof u0.j)) {
                    arrayList = ((u0.j) f10).b(i9);
                } else {
                    arrayList = new ArrayList<>(i9);
                }
                m3.X(obj, j10, arrayList);
                return arrayList;
            }
            if (f14853c.isAssignableFrom(f10.getClass())) {
                ArrayList arrayList2 = new ArrayList(f10.size() + i9);
                arrayList2.addAll(f10);
                m3.X(obj, j10, arrayList2);
                y0Var = arrayList2;
            } else if (f10 instanceof l3) {
                y0 y0Var2 = new y0(f10.size() + i9);
                y0Var2.addAll((l3) f10);
                m3.X(obj, j10, y0Var2);
                y0Var = y0Var2;
            } else if ((f10 instanceof f2) && (f10 instanceof u0.j)) {
                u0.j jVar = (u0.j) f10;
                if (jVar.r0()) {
                    return f10;
                }
                u0.j b10 = jVar.b(f10.size() + i9);
                m3.X(obj, j10, b10);
                return b10;
            } else {
                return f10;
            }
            return y0Var;
        }

        @Override // com.google.protobuf.a1
        void c(Object obj, long j10) {
            Object unmodifiableList;
            List list = (List) m3.G(obj, j10);
            if (list instanceof z0) {
                unmodifiableList = ((z0) list).V0();
            } else if (f14853c.isAssignableFrom(list.getClass())) {
                return;
            } else {
                if ((list instanceof f2) && (list instanceof u0.j)) {
                    u0.j jVar = (u0.j) list;
                    if (jVar.r0()) {
                        jVar.C();
                        return;
                    }
                    return;
                }
                unmodifiableList = Collections.unmodifiableList(list);
            }
            m3.X(obj, j10, unmodifiableList);
        }

        @Override // com.google.protobuf.a1
        <E> void d(Object obj, Object obj2, long j10) {
            List f10 = f(obj2, j10);
            List g10 = g(obj, j10, f10.size());
            int size = g10.size();
            int size2 = f10.size();
            if (size > 0 && size2 > 0) {
                g10.addAll(f10);
            }
            if (size > 0) {
                f10 = g10;
            }
            m3.X(obj, j10, f10);
        }

        @Override // com.google.protobuf.a1
        <L> List<L> e(Object obj, long j10) {
            return g(obj, j10, 10);
        }
    }

    /* loaded from: classes3.dex */
    private static final class c extends a1 {
        private c() {
            super();
        }

        static <E> u0.j<E> f(Object obj, long j10) {
            return (u0.j) m3.G(obj, j10);
        }

        @Override // com.google.protobuf.a1
        void c(Object obj, long j10) {
            f(obj, j10).C();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
        @Override // com.google.protobuf.a1
        <E> void d(Object obj, Object obj2, long j10) {
            u0.j<E> f10 = f(obj, j10);
            u0.j<E> f11 = f(obj2, j10);
            int size = f10.size();
            int size2 = f11.size();
            u0.j<E> jVar = f10;
            jVar = f10;
            if (size > 0 && size2 > 0) {
                boolean r02 = f10.r0();
                u0.j<E> jVar2 = f10;
                if (!r02) {
                    jVar2 = f10.b(size2 + size);
                }
                jVar2.addAll(f11);
                jVar = jVar2;
            }
            if (size > 0) {
                f11 = jVar;
            }
            m3.X(obj, j10, f11);
        }

        @Override // com.google.protobuf.a1
        <L> List<L> e(Object obj, long j10) {
            u0.j f10 = f(obj, j10);
            if (f10.r0()) {
                return f10;
            }
            int size = f10.size();
            u0.j b10 = f10.b(size == 0 ? 10 : size * 2);
            m3.X(obj, j10, b10);
            return b10;
        }
    }

    private a1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a1 a() {
        return f14851a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a1 b() {
        return f14852b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c(Object obj, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> void d(Object obj, Object obj2, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> List<L> e(Object obj, long j10);
}
