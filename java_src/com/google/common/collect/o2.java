package com.google.common.collect;

import com.google.common.collect.ImmutableBiMap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableRangeMap;
import com.google.common.collect.ImmutableRangeSet;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSetMultimap;
import com.google.common.collect.ImmutableSortedMap;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.k6;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;
/* loaded from: classes2.dex */
final class o2 {

    /* renamed from: a  reason: collision with root package name */
    private static final Collector<Object, ?, ImmutableList<Object>> f13322a = Collector.of(new Supplier() { // from class: com.google.common.collect.z1
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableList.builder();
        }
    }, new BiConsumer() { // from class: com.google.common.collect.m2
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableList.b) obj).a(obj2);
        }
    }, new BinaryOperator() { // from class: com.google.common.collect.k0
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableList.b) obj).k((ImmutableList.b) obj2);
        }
    }, new Function() { // from class: com.google.common.collect.e1
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableList.b) obj).j();
        }
    }, new Collector.Characteristics[0]);

    /* renamed from: b  reason: collision with root package name */
    private static final Collector<Object, ?, ImmutableSet<Object>> f13323b = Collector.of(new Supplier() { // from class: com.google.common.collect.d2
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableSet.builder();
        }
    }, new BiConsumer() { // from class: com.google.common.collect.h0
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableSet.a) obj).a(obj2);
        }
    }, new BinaryOperator() { // from class: com.google.common.collect.p0
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableSet.a) obj).i((ImmutableSet.a) obj2);
        }
    }, new Function() { // from class: com.google.common.collect.j1
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableSet.a) obj).h();
        }
    }, new Collector.Characteristics[0]);

    /* renamed from: c  reason: collision with root package name */
    private static final Collector<Range<Comparable<?>>, ?, ImmutableRangeSet<Comparable<?>>> f13324c = Collector.of(new Supplier() { // from class: com.google.common.collect.c2
        @Override // java.util.function.Supplier
        public final Object get() {
            return ImmutableRangeSet.builder();
        }
    }, new BiConsumer() { // from class: com.google.common.collect.n2
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((ImmutableRangeSet.d) obj).a((Range) obj2);
        }
    }, new BinaryOperator() { // from class: com.google.common.collect.o0
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((ImmutableRangeSet.d) obj).d((ImmutableRangeSet.d) obj2);
        }
    }, new Function() { // from class: com.google.common.collect.i1
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((ImmutableRangeSet.d) obj).c();
        }
    }, new Collector.Characteristics[0]);

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.isRegister()" because "arg" is null
        	at jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(RegisterArg.java:173)
        	at jadx.core.dex.instructions.args.InsnArg.isSameVar(InsnArg.java:269)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:118)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.common.collect.i6 A(com.google.common.collect.i6 r0, com.google.common.collect.i6 r1) {
        /*
            r0.putAll(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.o2.A(com.google.common.collect.i6, com.google.common.collect.i6):com.google.common.collect.i6");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B(Function function, Function function2, ImmutableBiMap.a aVar, Object obj) {
        aVar.h(function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C(Function function, Function function2, ImmutableListMultimap.a aVar, Object obj) {
        aVar.d(function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D(Function function, Function function2, ImmutableMap.b bVar, Object obj) {
        bVar.h(function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E(Function function, ToIntFunction toIntFunction, q6 q6Var, Object obj) {
        q6Var.add(com.google.common.base.o.s(function.apply(obj)), toIntFunction.applyAsInt(obj));
    }

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.isRegister()" because "arg" is null
        	at jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(RegisterArg.java:173)
        	at jadx.core.dex.instructions.args.InsnArg.isSameVar(InsnArg.java:269)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:118)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.common.collect.q6 F(com.google.common.collect.q6 r0, com.google.common.collect.q6 r1) {
        /*
            r0.addAll(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.o2.F(com.google.common.collect.q6, com.google.common.collect.q6):com.google.common.collect.q6");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImmutableMultiset G(q6 q6Var) {
        return ImmutableMultiset.copyFromEntries(q6Var.entrySet());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H(Function function, Function function2, ImmutableRangeMap.c cVar, Object obj) {
        cVar.c((Range) function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I(Function function, Function function2, ImmutableSetMultimap.a aVar, Object obj) {
        aVar.d(function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImmutableSortedMap.c J(Comparator comparator) {
        return new ImmutableSortedMap.c(comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void K(Function function, Function function2, ImmutableSortedMap.c cVar, Object obj) {
        cVar.h(function.apply(obj), function2.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TreeMap L(Comparator comparator) {
        return new TreeMap(comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImmutableSortedSet.b M(Comparator comparator) {
        return new ImmutableSortedSet.b(comparator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, K, V> Collector<T, ?, ImmutableBiMap<K, V>> N(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(function2);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.g2
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ImmutableBiMap.a();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.g0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                o2.B(function, function2, (ImmutableBiMap.a) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.j0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableBiMap.a) obj).e((ImmutableBiMap.a) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.d1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableBiMap.a) obj).a();
            }
        }, new Collector.Characteristics[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Collector<E, ?, ImmutableList<E>> O() {
        return (Collector<E, ?, ImmutableList<E>>) f13322a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> P(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        com.google.common.base.o.t(function, "keyFunction");
        com.google.common.base.o.t(function2, "valueFunction");
        return Collector.of(new Supplier() { // from class: com.google.common.collect.a2
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableListMultimap.builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.r0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                o2.C(function, function2, (ImmutableListMultimap.a) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.l0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableListMultimap.a) obj).i((ImmutableListMultimap.a) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.f1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableListMultimap.a) obj).h();
            }
        }, new Collector.Characteristics[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> Q(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(function2);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.h2
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ImmutableMap.b();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.c1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                o2.D(function, function2, (ImmutableMap.b) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.m0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableMap.b) obj).e((ImmutableMap.b) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.g1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableMap.b) obj).a();
            }
        }, new Collector.Characteristics[0]);
    }

    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> R(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(function2);
        com.google.common.base.o.s(binaryOperator);
        return Collectors.collectingAndThen(Collectors.toMap(function, function2, binaryOperator, new Supplier() { // from class: com.google.common.collect.i2
            @Override // java.util.function.Supplier
            public final Object get() {
                return new LinkedHashMap();
            }
        }), new Function() { // from class: com.google.common.collect.r1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableMap.copyOf((Map) ((LinkedHashMap) obj));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, E> Collector<T, ?, ImmutableMultiset<E>> S(final Function<? super T, ? extends E> function, final ToIntFunction<? super T> toIntFunction) {
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(toIntFunction);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.f2
            @Override // java.util.function.Supplier
            public final Object get() {
                return LinkedHashMultiset.create();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.l2
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                o2.E(function, toIntFunction, (q6) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.v0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return o2.F((q6) obj, (q6) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.p1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ImmutableMultiset G;
                G = o2.G((q6) obj);
                return G;
            }
        }, new Collector.Characteristics[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, K extends Comparable<? super K>, V> Collector<T, ?, ImmutableRangeMap<K, V>> T(final Function<? super T, Range<K>> function, final Function<? super T, ? extends V> function2) {
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(function2);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.b2
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableRangeMap.builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.n1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                o2.H(function, function2, (ImmutableRangeMap.c) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.n0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableRangeMap.c) obj).b((ImmutableRangeMap.c) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.h1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableRangeMap.c) obj).a();
            }
        }, new Collector.Characteristics[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E extends Comparable<? super E>> Collector<Range<E>, ?, ImmutableRangeSet<E>> U() {
        return (Collector<Range<E>, ?, ImmutableRangeSet<E>>) f13324c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Collector<E, ?, ImmutableSet<E>> V() {
        return (Collector<E, ?, ImmutableSet<E>>) f13323b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> W(final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        com.google.common.base.o.t(function, "keyFunction");
        com.google.common.base.o.t(function2, "valueFunction");
        return Collector.of(new Supplier() { // from class: com.google.common.collect.e2
            @Override // java.util.function.Supplier
            public final Object get() {
                return ImmutableSetMultimap.builder();
            }
        }, new BiConsumer() { // from class: com.google.common.collect.y1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                o2.I(function, function2, (ImmutableSetMultimap.a) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.q0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSetMultimap.a) obj).i((ImmutableSetMultimap.a) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.k1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSetMultimap.a) obj).h();
            }
        }, new Collector.Characteristics[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, K, V> Collector<T, ?, ImmutableSortedMap<K, V>> X(final Comparator<? super K> comparator, final Function<? super T, ? extends K> function, final Function<? super T, ? extends V> function2) {
        com.google.common.base.o.s(comparator);
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(function2);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.v1
            @Override // java.util.function.Supplier
            public final Object get() {
                ImmutableSortedMap.c J;
                J = o2.J(comparator);
                return J;
            }
        }, new BiConsumer() { // from class: com.google.common.collect.j2
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                o2.K(function, function2, (ImmutableSortedMap.c) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.s0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSortedMap.c) obj).e((ImmutableSortedMap.c) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.l1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSortedMap.c) obj).a();
            }
        }, Collector.Characteristics.UNORDERED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, K, V> Collector<T, ?, ImmutableSortedMap<K, V>> Y(final Comparator<? super K> comparator, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        com.google.common.base.o.s(comparator);
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(function2);
        com.google.common.base.o.s(binaryOperator);
        return Collectors.collectingAndThen(Collectors.toMap(function, function2, binaryOperator, new Supplier() { // from class: com.google.common.collect.x1
            @Override // java.util.function.Supplier
            public final Object get() {
                TreeMap L;
                L = o2.L(comparator);
                return L;
            }
        }), new Function() { // from class: com.google.common.collect.s1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableSortedMap.copyOfSorted((TreeMap) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Collector<E, ?, ImmutableSortedSet<E>> Z(final Comparator<? super E> comparator) {
        com.google.common.base.o.s(comparator);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.w1
            @Override // java.util.function.Supplier
            public final Object get() {
                ImmutableSortedSet.b M;
                M = o2.M(comparator);
                return M;
            }
        }, new BiConsumer() { // from class: com.google.common.collect.i0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ImmutableSortedSet.b) obj).f(obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.t0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((ImmutableSortedSet.b) obj).i((ImmutableSortedSet.b) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.m1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ImmutableSortedSet.b) obj).h();
            }
        }, new Collector.Characteristics[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> s(final Function<? super T, ? extends K> function, final Function<? super T, ? extends Stream<? extends V>> function2) {
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(function2);
        Function function3 = new Function() { // from class: com.google.common.collect.a1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object v10;
                v10 = o2.v(function, obj);
                return v10;
            }
        };
        Function function4 = new Function() { // from class: com.google.common.collect.b1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream w6;
                w6 = o2.w(function2, obj);
                return w6;
            }
        };
        final k6.e<Object, Object> a10 = k6.a().a();
        Objects.requireNonNull(a10);
        return Collectors.collectingAndThen(u(function3, function4, new Supplier() { // from class: com.google.common.collect.t1
            @Override // java.util.function.Supplier
            public final Object get() {
                return k6.e.this.e();
            }
        }), new Function() { // from class: com.google.common.collect.o1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableListMultimap.copyOf((i6) ((x5) obj));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> t(final Function<? super T, ? extends K> function, final Function<? super T, ? extends Stream<? extends V>> function2) {
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(function2);
        Function function3 = new Function() { // from class: com.google.common.collect.y0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object x10;
                x10 = o2.x(function, obj);
                return x10;
            }
        };
        Function function4 = new Function() { // from class: com.google.common.collect.z0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream y10;
                y10 = o2.y(function2, obj);
                return y10;
            }
        };
        final k6.g<Object, Object> d10 = k6.a().d();
        Objects.requireNonNull(d10);
        return Collectors.collectingAndThen(u(function3, function4, new Supplier() { // from class: com.google.common.collect.u1
            @Override // java.util.function.Supplier
            public final Object get() {
                return k6.g.this.e();
            }
        }), new Function() { // from class: com.google.common.collect.q1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableSetMultimap.copyOf((i6) ((u7) obj));
            }
        });
    }

    static <T, K, V, M extends i6<K, V>> Collector<T, ?, M> u(final Function<? super T, ? extends K> function, final Function<? super T, ? extends Stream<? extends V>> function2, Supplier<M> supplier) {
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(function2);
        com.google.common.base.o.s(supplier);
        return Collector.of(supplier, new BiConsumer() { // from class: com.google.common.collect.k2
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                o2.z(function, function2, (i6) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.u0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return o2.A((i6) obj, (i6) obj2);
            }
        }, new Collector.Characteristics[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object v(Function function, Object obj) {
        return com.google.common.base.o.s(function.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream w(Function function, Object obj) {
        return ((Stream) function.apply(obj)).peek(x0.f13480a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object x(Function function, Object obj) {
        return com.google.common.base.o.s(function.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream y(Function function, Object obj) {
        return ((Stream) function.apply(obj)).peek(x0.f13480a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z(Function function, Function function2, i6 i6Var, Object obj) {
        final Collection collection = i6Var.get(function.apply(obj));
        Objects.requireNonNull(collection);
        ((Stream) function2.apply(obj)).forEachOrdered(new Consumer() { // from class: com.google.common.collect.w0
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                collection.add(obj2);
            }
        });
    }
}
