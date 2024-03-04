package com.google.common.collect;

import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class g8 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f13078a = new a("NEXT_LOWER", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final b f13079b = new C0111b("NEXT_HIGHER", 1);

        /* renamed from: c  reason: collision with root package name */
        public static final b f13080c = new c("INVERTED_INSERTION_INDEX", 2);

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ b[] f13081d = a();

        /* loaded from: classes2.dex */
        enum a extends b {
            a(String str, int i9) {
                super(str, i9);
            }

            @Override // com.google.common.collect.g8.b
            int b(int i9) {
                return i9 - 1;
            }
        }

        /* renamed from: com.google.common.collect.g8$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0111b extends b {
            C0111b(String str, int i9) {
                super(str, i9);
            }

            @Override // com.google.common.collect.g8.b
            public int b(int i9) {
                return i9;
            }
        }

        /* loaded from: classes2.dex */
        enum c extends b {
            c(String str, int i9) {
                super(str, i9);
            }

            @Override // com.google.common.collect.g8.b
            public int b(int i9) {
                return ~i9;
            }
        }

        private b(String str, int i9) {
        }

        private static /* synthetic */ b[] a() {
            return new b[]{f13078a, f13079b, f13080c};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f13081d.clone();
        }

        abstract int b(int i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        public static final c f13082a = new a("ANY_PRESENT", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final c f13083b = new b("LAST_PRESENT", 1);

        /* renamed from: c  reason: collision with root package name */
        public static final c f13084c = new C0112c("FIRST_PRESENT", 2);

        /* renamed from: d  reason: collision with root package name */
        public static final c f13085d = new d("FIRST_AFTER", 3);

        /* renamed from: e  reason: collision with root package name */
        public static final c f13086e = new e("LAST_BEFORE", 4);

        /* renamed from: f  reason: collision with root package name */
        private static final /* synthetic */ c[] f13087f = a();

        /* loaded from: classes2.dex */
        enum a extends c {
            a(String str, int i9) {
                super(str, i9);
            }

            @Override // com.google.common.collect.g8.c
            <E> int b(Comparator<? super E> comparator, E e10, List<? extends E> list, int i9) {
                return i9;
            }
        }

        /* loaded from: classes2.dex */
        enum b extends c {
            b(String str, int i9) {
                super(str, i9);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.g8.c
            <E> int b(Comparator<? super E> comparator, E e10, List<? extends E> list, int i9) {
                int size = list.size() - 1;
                while (i9 < size) {
                    int i10 = ((i9 + size) + 1) >>> 1;
                    if (comparator.compare((E) list.get(i10), e10) > 0) {
                        size = i10 - 1;
                    } else {
                        i9 = i10;
                    }
                }
                return i9;
            }
        }

        /* renamed from: com.google.common.collect.g8$c$c  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0112c extends c {
            C0112c(String str, int i9) {
                super(str, i9);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.g8.c
            <E> int b(Comparator<? super E> comparator, E e10, List<? extends E> list, int i9) {
                int i10 = 0;
                while (i10 < i9) {
                    int i11 = (i10 + i9) >>> 1;
                    if (comparator.compare((E) list.get(i11), e10) < 0) {
                        i10 = i11 + 1;
                    } else {
                        i9 = i11;
                    }
                }
                return i10;
            }
        }

        /* loaded from: classes2.dex */
        enum d extends c {
            d(String str, int i9) {
                super(str, i9);
            }

            @Override // com.google.common.collect.g8.c
            public <E> int b(Comparator<? super E> comparator, E e10, List<? extends E> list, int i9) {
                return c.f13083b.b(comparator, e10, list, i9) + 1;
            }
        }

        /* loaded from: classes2.dex */
        enum e extends c {
            e(String str, int i9) {
                super(str, i9);
            }

            @Override // com.google.common.collect.g8.c
            public <E> int b(Comparator<? super E> comparator, E e10, List<? extends E> list, int i9) {
                return c.f13084c.b(comparator, e10, list, i9) - 1;
            }
        }

        private c(String str, int i9) {
        }

        private static /* synthetic */ c[] a() {
            return new c[]{f13082a, f13083b, f13084c, f13085d, f13086e};
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) f13087f.clone();
        }

        abstract <E> int b(Comparator<? super E> comparator, E e10, List<? extends E> list, int i9);
    }

    public static <E, K extends Comparable> int a(List<E> list, com.google.common.base.h<? super E, K> hVar, K k10, c cVar, b bVar) {
        com.google.common.base.o.s(k10);
        return b(list, hVar, k10, y6.e(), cVar, bVar);
    }

    public static <E, K> int b(List<E> list, com.google.common.base.h<? super E, K> hVar, K k10, Comparator<? super K> comparator, c cVar, b bVar) {
        return c(z5.m(list, hVar), k10, comparator, cVar, bVar);
    }

    public static <E> int c(List<? extends E> list, E e10, Comparator<? super E> comparator, c cVar, b bVar) {
        com.google.common.base.o.s(comparator);
        com.google.common.base.o.s(list);
        com.google.common.base.o.s(cVar);
        com.google.common.base.o.s(bVar);
        if (!(list instanceof RandomAccess)) {
            list = z5.h(list);
        }
        int i9 = 0;
        int size = list.size() - 1;
        while (i9 <= size) {
            int i10 = (i9 + size) >>> 1;
            int compare = comparator.compare(e10, (E) list.get(i10));
            if (compare < 0) {
                size = i10 - 1;
            } else if (compare <= 0) {
                return i9 + cVar.b(comparator, e10, list.subList(i9, size + 1), i10 - i9);
            } else {
                i9 = i10 + 1;
            }
        }
        return bVar.b(i9);
    }
}
