package com.google.common.collect;

import com.google.common.collect.ImmutableTable;
import com.google.common.collect.a9;
import com.google.common.collect.z8;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
final class z8 {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b<R, C, V> {

        /* renamed from: a  reason: collision with root package name */
        final List<c<R, C, V>> f13509a;

        /* renamed from: b  reason: collision with root package name */
        final q8<R, C, c<R, C, V>> f13510b;

        private b() {
            this.f13509a = new ArrayList();
            this.f13510b = HashBasedTable.create();
        }

        b<R, C, V> a(b<R, C, V> bVar, BinaryOperator<V> binaryOperator) {
            for (c<R, C, V> cVar : bVar.f13509a) {
                b(cVar.a(), cVar.b(), cVar.getValue(), binaryOperator);
            }
            return this;
        }

        void b(R r10, C c10, V v10, BinaryOperator<V> binaryOperator) {
            c<R, C, V> cVar = this.f13510b.get(r10, c10);
            if (cVar == null) {
                c<R, C, V> cVar2 = new c<>(r10, c10, v10);
                this.f13509a.add(cVar2);
                this.f13510b.put(r10, c10, cVar2);
                return;
            }
            cVar.c(v10, binaryOperator);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ImmutableTable<R, C, V> c() {
            return ImmutableTable.copyOf(this.f13509a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c<R, C, V> extends a9.b<R, C, V> {

        /* renamed from: a  reason: collision with root package name */
        private final R f13511a;

        /* renamed from: b  reason: collision with root package name */
        private final C f13512b;

        /* renamed from: c  reason: collision with root package name */
        private V f13513c;

        c(R r10, C c10, V v10) {
            this.f13511a = (R) com.google.common.base.o.t(r10, "row");
            this.f13512b = (C) com.google.common.base.o.t(c10, "column");
            this.f13513c = (V) com.google.common.base.o.t(v10, "value");
        }

        @Override // com.google.common.collect.q8.a
        public R a() {
            return this.f13511a;
        }

        @Override // com.google.common.collect.q8.a
        public C b() {
            return this.f13512b;
        }

        void c(V v10, BinaryOperator<V> binaryOperator) {
            com.google.common.base.o.t(v10, "value");
            this.f13513c = (V) com.google.common.base.o.t(binaryOperator.apply(this.f13513c, v10), "mergeFunction.apply");
        }

        @Override // com.google.common.collect.q8.a
        public V getValue() {
            return this.f13513c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(Function function, Function function2, Function function3, ImmutableTable.a aVar, Object obj) {
        aVar.e(function.apply(obj), function2.apply(obj), function3.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b g() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(Function function, Function function2, Function function3, BinaryOperator binaryOperator, b bVar, Object obj) {
        bVar.b(function.apply(obj), function2.apply(obj), function3.apply(obj), binaryOperator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b i(BinaryOperator binaryOperator, b bVar, b bVar2) {
        return bVar.a(bVar2, binaryOperator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> k(final Function<? super T, ? extends R> function, final Function<? super T, ? extends C> function2, final Function<? super T, ? extends V> function3) {
        com.google.common.base.o.t(function, "rowFunction");
        com.google.common.base.o.t(function2, "columnFunction");
        com.google.common.base.o.t(function3, "valueFunction");
        return Collector.of(new Supplier() { // from class: com.google.common.collect.y8
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ImmutableTable.a();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.r8
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                z8.f(function, function2, function3, (ImmutableTable.a) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.u8
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableTable.a) obj).c((ImmutableTable.a) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.v8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableTable.a) obj).a();
            }
        }, new Collector.Characteristics[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> l(final Function<? super T, ? extends R> function, final Function<? super T, ? extends C> function2, final Function<? super T, ? extends V> function3, final BinaryOperator<V> binaryOperator) {
        com.google.common.base.o.t(function, "rowFunction");
        com.google.common.base.o.t(function2, "columnFunction");
        com.google.common.base.o.t(function3, "valueFunction");
        com.google.common.base.o.t(binaryOperator, "mergeFunction");
        return Collector.of(new Supplier() { // from class: com.google.common.collect.x8
            @Override // java.util.function.Supplier
            public final Object get() {
                z8.b g10;
                g10 = z8.g();
                return g10;
            }
        }, new BiConsumer() { // from class: com.google.common.collect.s8
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                z8.h(function, function2, function3, binaryOperator, (z8.b) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.t8
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                z8.b i9;
                i9 = z8.i(binaryOperator, (z8.b) obj, (z8.b) obj2);
                return i9;
            }
        }, new Function() { // from class: com.google.common.collect.w8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ImmutableTable c10;
                c10 = ((z8.b) obj).c();
                return c10;
            }
        }, new Collector.Characteristics[0]);
    }
}
