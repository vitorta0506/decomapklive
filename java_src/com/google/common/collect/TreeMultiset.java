package com.google.common.collect;

import com.google.common.collect.q6;
import com.google.common.collect.t6;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;
/* loaded from: classes2.dex */
public final class TreeMultiset<E> extends v<E> implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient f<E> header;
    private final transient b4<E> range;
    private final transient g<f<E>> rootReference;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends t6.b<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f12840a;

        a(f fVar) {
            this.f12840a = fVar;
        }

        @Override // com.google.common.collect.q6.a
        public E a() {
            return (E) this.f12840a.x();
        }

        @Override // com.google.common.collect.q6.a
        public int getCount() {
            int w6 = this.f12840a.w();
            return w6 == 0 ? TreeMultiset.this.count(a()) : w6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Iterator<q6.a<E>> {

        /* renamed from: a  reason: collision with root package name */
        f<E> f12842a;

        /* renamed from: b  reason: collision with root package name */
        q6.a<E> f12843b;

        b() {
            this.f12842a = TreeMultiset.this.firstNode();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public q6.a<E> next() {
            if (hasNext()) {
                TreeMultiset treeMultiset = TreeMultiset.this;
                f<E> fVar = this.f12842a;
                Objects.requireNonNull(fVar);
                q6.a<E> wrapEntry = treeMultiset.wrapEntry(fVar);
                this.f12843b = wrapEntry;
                if (this.f12842a.L() == TreeMultiset.this.header) {
                    this.f12842a = null;
                } else {
                    this.f12842a = this.f12842a.L();
                }
                return wrapEntry;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f12842a == null) {
                return false;
            }
            if (TreeMultiset.this.range.l(this.f12842a.x())) {
                this.f12842a = null;
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.o.A(this.f12843b != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.setCount(this.f12843b.a(), 0);
            this.f12843b = null;
        }
    }

    /* loaded from: classes2.dex */
    class c implements Iterator<q6.a<E>> {

        /* renamed from: a  reason: collision with root package name */
        f<E> f12845a;

        /* renamed from: b  reason: collision with root package name */
        q6.a<E> f12846b = null;

        c() {
            this.f12845a = TreeMultiset.this.lastNode();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public q6.a<E> next() {
            if (hasNext()) {
                Objects.requireNonNull(this.f12845a);
                q6.a<E> wrapEntry = TreeMultiset.this.wrapEntry(this.f12845a);
                this.f12846b = wrapEntry;
                if (this.f12845a.z() == TreeMultiset.this.header) {
                    this.f12845a = null;
                } else {
                    this.f12845a = this.f12845a.z();
                }
                return wrapEntry;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f12845a == null) {
                return false;
            }
            if (TreeMultiset.this.range.m(this.f12845a.x())) {
                this.f12845a = null;
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.o.A(this.f12846b != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.setCount(this.f12846b.a(), 0);
            this.f12846b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12848a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f12848a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12848a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f12849a = new a("SIZE", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final e f12850b = new b("DISTINCT", 1);

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ e[] f12851c = a();

        /* loaded from: classes2.dex */
        enum a extends e {
            a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.collect.TreeMultiset.e
            int b(f<?> fVar) {
                return ((f) fVar).f12853b;
            }

            @Override // com.google.common.collect.TreeMultiset.e
            long c(f<?> fVar) {
                if (fVar == null) {
                    return 0L;
                }
                return ((f) fVar).f12855d;
            }
        }

        /* loaded from: classes2.dex */
        enum b extends e {
            b(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.collect.TreeMultiset.e
            int b(f<?> fVar) {
                return 1;
            }

            @Override // com.google.common.collect.TreeMultiset.e
            long c(f<?> fVar) {
                if (fVar == null) {
                    return 0L;
                }
                return ((f) fVar).f12854c;
            }
        }

        private e(String str, int i9) {
        }

        private static /* synthetic */ e[] a() {
            return new e[]{f12849a, f12850b};
        }

        public static e valueOf(String str) {
            return (e) Enum.valueOf(e.class, str);
        }

        public static e[] values() {
            return (e[]) f12851c.clone();
        }

        abstract int b(f<?> fVar);

        abstract long c(f<?> fVar);

        /* synthetic */ e(String str, int i9, a aVar) {
            this(str, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g<T> {

        /* renamed from: a  reason: collision with root package name */
        private T f12861a;

        private g() {
        }

        /* synthetic */ g(a aVar) {
            this();
        }

        public void a(T t10, T t11) {
            if (this.f12861a == t10) {
                this.f12861a = t11;
                return;
            }
            throw new ConcurrentModificationException();
        }

        void b() {
            this.f12861a = null;
        }

        public T c() {
            return this.f12861a;
        }
    }

    TreeMultiset(g<f<E>> gVar, b4<E> b4Var, f<E> fVar) {
        super(b4Var.b());
        this.rootReference = gVar;
        this.range = b4Var;
        this.header = fVar;
    }

    private long aggregateAboveRange(e eVar, f<E> fVar) {
        long c10;
        long aggregateAboveRange;
        if (fVar == null) {
            return 0L;
        }
        int compare = comparator().compare(w6.a(this.range.h()), fVar.x());
        if (compare > 0) {
            return aggregateAboveRange(eVar, ((f) fVar).f12858g);
        }
        if (compare == 0) {
            int i9 = d.f12848a[this.range.g().ordinal()];
            if (i9 != 1) {
                if (i9 == 2) {
                    return eVar.c(((f) fVar).f12858g);
                }
                throw new AssertionError();
            }
            c10 = eVar.b(fVar);
            aggregateAboveRange = eVar.c(((f) fVar).f12858g);
        } else {
            c10 = eVar.c(((f) fVar).f12858g) + eVar.b(fVar);
            aggregateAboveRange = aggregateAboveRange(eVar, ((f) fVar).f12857f);
        }
        return c10 + aggregateAboveRange;
    }

    private long aggregateBelowRange(e eVar, f<E> fVar) {
        long c10;
        long aggregateBelowRange;
        if (fVar == null) {
            return 0L;
        }
        int compare = comparator().compare(w6.a(this.range.f()), fVar.x());
        if (compare < 0) {
            return aggregateBelowRange(eVar, ((f) fVar).f12857f);
        }
        if (compare == 0) {
            int i9 = d.f12848a[this.range.e().ordinal()];
            if (i9 != 1) {
                if (i9 == 2) {
                    return eVar.c(((f) fVar).f12857f);
                }
                throw new AssertionError();
            }
            c10 = eVar.b(fVar);
            aggregateBelowRange = eVar.c(((f) fVar).f12857f);
        } else {
            c10 = eVar.c(((f) fVar).f12857f) + eVar.b(fVar);
            aggregateBelowRange = aggregateBelowRange(eVar, ((f) fVar).f12858g);
        }
        return c10 + aggregateBelowRange;
    }

    private long aggregateForEntries(e eVar) {
        f<E> c10 = this.rootReference.c();
        long c11 = eVar.c(c10);
        if (this.range.i()) {
            c11 -= aggregateBelowRange(eVar, c10);
        }
        return this.range.j() ? c11 - aggregateAboveRange(eVar, c10) : c11;
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(y6.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public f<E> firstNode() {
        f<E> L;
        f<E> c10 = this.rootReference.c();
        if (c10 == null) {
            return null;
        }
        if (this.range.i()) {
            Object a10 = w6.a(this.range.f());
            L = c10.s(comparator(), a10);
            if (L == null) {
                return null;
            }
            if (this.range.e() == BoundType.OPEN && comparator().compare(a10, L.x()) == 0) {
                L = L.L();
            }
        } else {
            L = this.header.L();
        }
        if (L == this.header || !this.range.c(L.x())) {
            return null;
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public f<E> lastNode() {
        f<E> z10;
        f<E> c10 = this.rootReference.c();
        if (c10 == null) {
            return null;
        }
        if (this.range.j()) {
            Object a10 = w6.a(this.range.h());
            z10 = c10.v(comparator(), a10);
            if (z10 == null) {
                return null;
            }
            if (this.range.g() == BoundType.OPEN && comparator().compare(a10, z10.x()) == 0) {
                z10 = z10.z();
            }
        } else {
            z10 = this.header.z();
        }
        if (z10 == this.header || !this.range.c(z10.x())) {
            return null;
        }
        return z10;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        t7.a(v.class, "comparator").b(this, comparator);
        t7.a(TreeMultiset.class, "range").b(this, b4.a(comparator));
        t7.a(TreeMultiset.class, "rootReference").b(this, new g(null));
        f fVar = new f();
        t7.a(TreeMultiset.class, "header").b(this, fVar);
        successor(fVar, fVar);
        t7.f(this, objectInputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void successor(f<T> fVar, f<T> fVar2) {
        ((f) fVar).f12860i = fVar2;
        ((f) fVar2).f12859h = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public q6.a<E> wrapEntry(f<E> fVar) {
        return new a(fVar);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        t7.k(this, objectOutputStream);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public int add(E e10, int i9) {
        p2.b(i9, "occurrences");
        if (i9 == 0) {
            return count(e10);
        }
        com.google.common.base.o.d(this.range.c(e10));
        f<E> c10 = this.rootReference.c();
        if (c10 == null) {
            comparator().compare(e10, e10);
            f<E> fVar = new f<>(e10, i9);
            f<E> fVar2 = this.header;
            successor(fVar2, fVar, fVar2);
            this.rootReference.a(c10, fVar);
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.a(c10, c10.o(comparator(), e10, i9, iArr));
        return iArr[0];
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        if (!this.range.i() && !this.range.j()) {
            f<E> L = this.header.L();
            while (true) {
                f<E> fVar = this.header;
                if (L != fVar) {
                    f<E> L2 = L.L();
                    ((f) L).f12853b = 0;
                    ((f) L).f12857f = null;
                    ((f) L).f12858g = null;
                    ((f) L).f12859h = null;
                    ((f) L).f12860i = null;
                    L = L2;
                } else {
                    successor(fVar, fVar);
                    this.rootReference.b();
                    return;
                }
            }
        } else {
            p5.e(entryIterator());
        }
    }

    @Override // com.google.common.collect.v, com.google.common.collect.h8, com.google.common.collect.e8
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.q6
    public int count(Object obj) {
        try {
            f<E> c10 = this.rootReference.c();
            if (this.range.c(obj) && c10 != null) {
                return c10.t(comparator(), obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.v
    Iterator<q6.a<E>> descendingEntryIterator() {
        return new c();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.h8
    public /* bridge */ /* synthetic */ h8 descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override // com.google.common.collect.p
    int distinctElements() {
        return com.google.common.primitives.f.i(aggregateForEntries(e.f12850b));
    }

    @Override // com.google.common.collect.p
    Iterator<E> elementIterator() {
        return t6.e(entryIterator());
    }

    @Override // com.google.common.collect.v, com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ NavigableSet elementSet() {
        return super.elementSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.p
    public Iterator<q6.a<E>> entryIterator() {
        return new b();
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.h8
    public /* bridge */ /* synthetic */ q6.a firstEntry() {
        return super.firstEntry();
    }

    @Override // com.google.common.collect.p, java.lang.Iterable
    public /* bridge */ /* synthetic */ void forEach(Consumer consumer) {
        p6.a(this, consumer);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public void forEachEntry(ObjIntConsumer<? super E> objIntConsumer) {
        com.google.common.base.o.s(objIntConsumer);
        for (f<E> firstNode = firstNode(); firstNode != this.header && firstNode != null && !this.range.l(firstNode.x()); firstNode = firstNode.L()) {
            objIntConsumer.accept(firstNode.x(), firstNode.w());
        }
    }

    @Override // com.google.common.collect.h8
    public h8<E> headMultiset(E e10, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.k(b4.n(comparator(), e10, boundType)), this.header);
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return t6.i(this);
    }

    @Override // com.google.common.collect.v, com.google.common.collect.h8
    public /* bridge */ /* synthetic */ q6.a lastEntry() {
        return super.lastEntry();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.h8
    public /* bridge */ /* synthetic */ q6.a pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // com.google.common.collect.v, com.google.common.collect.h8
    public /* bridge */ /* synthetic */ q6.a pollLastEntry() {
        return super.pollLastEntry();
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public int remove(Object obj, int i9) {
        p2.b(i9, "occurrences");
        if (i9 == 0) {
            return count(obj);
        }
        f<E> c10 = this.rootReference.c();
        int[] iArr = new int[1];
        try {
            if (this.range.c(obj) && c10 != null) {
                this.rootReference.a(c10, c10.E(comparator(), obj, i9, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public int setCount(E e10, int i9) {
        p2.b(i9, AnimatedPasterJsonConfig.CONFIG_COUNT);
        if (!this.range.c(e10)) {
            com.google.common.base.o.d(i9 == 0);
            return 0;
        }
        f<E> c10 = this.rootReference.c();
        if (c10 == null) {
            if (i9 > 0) {
                add(e10, i9);
            }
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.a(c10, c10.K(comparator(), e10, i9, iArr));
        return iArr[0];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public int size() {
        return com.google.common.primitives.f.i(aggregateForEntries(e.f12849a));
    }

    @Override // com.google.common.collect.p, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Spliterator spliterator() {
        return p6.c(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.v, com.google.common.collect.h8
    public /* bridge */ /* synthetic */ h8 subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    @Override // com.google.common.collect.h8
    public h8<E> tailMultiset(E e10, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.k(b4.d(comparator(), e10, boundType)), this.header);
    }

    public static <E> TreeMultiset<E> create(Comparator<? super E> comparator) {
        if (comparator == null) {
            return new TreeMultiset<>(y6.e());
        }
        return new TreeMultiset<>(comparator);
    }

    static int distinctElements(f<?> fVar) {
        if (fVar == null) {
            return 0;
        }
        return ((f) fVar).f12854c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void successor(f<T> fVar, f<T> fVar2, f<T> fVar3) {
        successor(fVar, fVar2);
        successor(fVar2, fVar3);
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> create = create();
        n5.a(create, iterable);
        return create;
    }

    TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.range = b4.a(comparator);
        f<E> fVar = new f<>();
        this.header = fVar;
        successor(fVar, fVar);
        this.rootReference = new g<>(null);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public boolean setCount(E e10, int i9, int i10) {
        p2.b(i10, "newCount");
        p2.b(i9, "oldCount");
        com.google.common.base.o.d(this.range.c(e10));
        f<E> c10 = this.rootReference.c();
        if (c10 != null) {
            int[] iArr = new int[1];
            this.rootReference.a(c10, c10.J(comparator(), e10, i9, i10, iArr));
            return iArr[0] == i9;
        } else if (i9 == 0) {
            if (i10 > 0) {
                add(e10, i10);
            }
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class f<E> {

        /* renamed from: a  reason: collision with root package name */
        private final E f12852a;

        /* renamed from: b  reason: collision with root package name */
        private int f12853b;

        /* renamed from: c  reason: collision with root package name */
        private int f12854c;

        /* renamed from: d  reason: collision with root package name */
        private long f12855d;

        /* renamed from: e  reason: collision with root package name */
        private int f12856e;

        /* renamed from: f  reason: collision with root package name */
        private f<E> f12857f;

        /* renamed from: g  reason: collision with root package name */
        private f<E> f12858g;

        /* renamed from: h  reason: collision with root package name */
        private f<E> f12859h;

        /* renamed from: i  reason: collision with root package name */
        private f<E> f12860i;

        f(E e10, int i9) {
            com.google.common.base.o.d(i9 > 0);
            this.f12852a = e10;
            this.f12853b = i9;
            this.f12855d = i9;
            this.f12854c = 1;
            this.f12856e = 1;
            this.f12857f = null;
            this.f12858g = null;
        }

        private f<E> A() {
            int r10 = r();
            if (r10 == -2) {
                Objects.requireNonNull(this.f12858g);
                if (this.f12858g.r() > 0) {
                    this.f12858g = this.f12858g.I();
                }
                return H();
            } else if (r10 != 2) {
                C();
                return this;
            } else {
                Objects.requireNonNull(this.f12857f);
                if (this.f12857f.r() < 0) {
                    this.f12857f = this.f12857f.H();
                }
                return I();
            }
        }

        private void B() {
            D();
            C();
        }

        private void C() {
            this.f12856e = Math.max(y(this.f12857f), y(this.f12858g)) + 1;
        }

        private void D() {
            this.f12854c = TreeMultiset.distinctElements(this.f12857f) + 1 + TreeMultiset.distinctElements(this.f12858g);
            this.f12855d = this.f12853b + M(this.f12857f) + M(this.f12858g);
        }

        private f<E> F(f<E> fVar) {
            f<E> fVar2 = this.f12858g;
            if (fVar2 == null) {
                return this.f12857f;
            }
            this.f12858g = fVar2.F(fVar);
            this.f12854c--;
            this.f12855d -= fVar.f12853b;
            return A();
        }

        private f<E> G(f<E> fVar) {
            f<E> fVar2 = this.f12857f;
            if (fVar2 == null) {
                return this.f12858g;
            }
            this.f12857f = fVar2.G(fVar);
            this.f12854c--;
            this.f12855d -= fVar.f12853b;
            return A();
        }

        private f<E> H() {
            com.google.common.base.o.z(this.f12858g != null);
            f<E> fVar = this.f12858g;
            this.f12858g = fVar.f12857f;
            fVar.f12857f = this;
            fVar.f12855d = this.f12855d;
            fVar.f12854c = this.f12854c;
            B();
            fVar.C();
            return fVar;
        }

        private f<E> I() {
            com.google.common.base.o.z(this.f12857f != null);
            f<E> fVar = this.f12857f;
            this.f12857f = fVar.f12858g;
            fVar.f12858g = this;
            fVar.f12855d = this.f12855d;
            fVar.f12854c = this.f12854c;
            B();
            fVar.C();
            return fVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public f<E> L() {
            f<E> fVar = this.f12860i;
            Objects.requireNonNull(fVar);
            return fVar;
        }

        private static long M(f<?> fVar) {
            if (fVar == null) {
                return 0L;
            }
            return ((f) fVar).f12855d;
        }

        private f<E> p(E e10, int i9) {
            this.f12857f = new f<>(e10, i9);
            TreeMultiset.successor(z(), this.f12857f, this);
            this.f12856e = Math.max(2, this.f12856e);
            this.f12854c++;
            this.f12855d += i9;
            return this;
        }

        private f<E> q(E e10, int i9) {
            f<E> fVar = new f<>(e10, i9);
            this.f12858g = fVar;
            TreeMultiset.successor(this, fVar, L());
            this.f12856e = Math.max(2, this.f12856e);
            this.f12854c++;
            this.f12855d += i9;
            return this;
        }

        private int r() {
            return y(this.f12857f) - y(this.f12858g);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public f<E> s(Comparator<? super E> comparator, E e10) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f12857f;
                return fVar == null ? this : (f) com.google.common.base.j.a(fVar.s(comparator, e10), this);
            } else if (compare == 0) {
                return this;
            } else {
                f<E> fVar2 = this.f12858g;
                if (fVar2 == null) {
                    return null;
                }
                return fVar2.s(comparator, e10);
            }
        }

        private f<E> u() {
            int i9 = this.f12853b;
            this.f12853b = 0;
            TreeMultiset.successor(z(), L());
            f<E> fVar = this.f12857f;
            if (fVar == null) {
                return this.f12858g;
            }
            f<E> fVar2 = this.f12858g;
            if (fVar2 == null) {
                return fVar;
            }
            if (fVar.f12856e >= fVar2.f12856e) {
                f<E> z10 = z();
                z10.f12857f = this.f12857f.F(z10);
                z10.f12858g = this.f12858g;
                z10.f12854c = this.f12854c - 1;
                z10.f12855d = this.f12855d - i9;
                return z10.A();
            }
            f<E> L = L();
            L.f12858g = this.f12858g.G(L);
            L.f12857f = this.f12857f;
            L.f12854c = this.f12854c - 1;
            L.f12855d = this.f12855d - i9;
            return L.A();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public f<E> v(Comparator<? super E> comparator, E e10) {
            int compare = comparator.compare(e10, x());
            if (compare > 0) {
                f<E> fVar = this.f12858g;
                return fVar == null ? this : (f) com.google.common.base.j.a(fVar.v(comparator, e10), this);
            } else if (compare == 0) {
                return this;
            } else {
                f<E> fVar2 = this.f12857f;
                if (fVar2 == null) {
                    return null;
                }
                return fVar2.v(comparator, e10);
            }
        }

        private static int y(f<?> fVar) {
            if (fVar == null) {
                return 0;
            }
            return ((f) fVar).f12856e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public f<E> z() {
            f<E> fVar = this.f12859h;
            Objects.requireNonNull(fVar);
            return fVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        f<E> E(Comparator<? super E> comparator, E e10, int i9, int[] iArr) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f12857f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f12857f = fVar.E(comparator, e10, i9, iArr);
                if (iArr[0] > 0) {
                    if (i9 >= iArr[0]) {
                        this.f12854c--;
                        this.f12855d -= iArr[0];
                    } else {
                        this.f12855d -= i9;
                    }
                }
                return iArr[0] == 0 ? this : A();
            } else if (compare > 0) {
                f<E> fVar2 = this.f12858g;
                if (fVar2 == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f12858g = fVar2.E(comparator, e10, i9, iArr);
                if (iArr[0] > 0) {
                    if (i9 >= iArr[0]) {
                        this.f12854c--;
                        this.f12855d -= iArr[0];
                    } else {
                        this.f12855d -= i9;
                    }
                }
                return A();
            } else {
                int i10 = this.f12853b;
                iArr[0] = i10;
                if (i9 >= i10) {
                    return u();
                }
                this.f12853b = i10 - i9;
                this.f12855d -= i9;
                return this;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        f<E> J(Comparator<? super E> comparator, E e10, int i9, int i10, int[] iArr) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f12857f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return (i9 != 0 || i10 <= 0) ? this : p(e10, i10);
                }
                this.f12857f = fVar.J(comparator, e10, i9, i10, iArr);
                if (iArr[0] == i9) {
                    if (i10 == 0 && iArr[0] != 0) {
                        this.f12854c--;
                    } else if (i10 > 0 && iArr[0] == 0) {
                        this.f12854c++;
                    }
                    this.f12855d += i10 - iArr[0];
                }
                return A();
            } else if (compare > 0) {
                f<E> fVar2 = this.f12858g;
                if (fVar2 == null) {
                    iArr[0] = 0;
                    return (i9 != 0 || i10 <= 0) ? this : q(e10, i10);
                }
                this.f12858g = fVar2.J(comparator, e10, i9, i10, iArr);
                if (iArr[0] == i9) {
                    if (i10 == 0 && iArr[0] != 0) {
                        this.f12854c--;
                    } else if (i10 > 0 && iArr[0] == 0) {
                        this.f12854c++;
                    }
                    this.f12855d += i10 - iArr[0];
                }
                return A();
            } else {
                int i11 = this.f12853b;
                iArr[0] = i11;
                if (i9 == i11) {
                    if (i10 == 0) {
                        return u();
                    }
                    this.f12855d += i10 - i11;
                    this.f12853b = i10;
                }
                return this;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        f<E> K(Comparator<? super E> comparator, E e10, int i9, int[] iArr) {
            int i10;
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f12857f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return i9 > 0 ? p(e10, i9) : this;
                }
                this.f12857f = fVar.K(comparator, e10, i9, iArr);
                if (i9 == 0 && iArr[0] != 0) {
                    this.f12854c--;
                } else if (i9 > 0 && iArr[0] == 0) {
                    this.f12854c++;
                }
                this.f12855d += i9 - iArr[0];
                return A();
            } else if (compare > 0) {
                f<E> fVar2 = this.f12858g;
                if (fVar2 == null) {
                    iArr[0] = 0;
                    return i9 > 0 ? q(e10, i9) : this;
                }
                this.f12858g = fVar2.K(comparator, e10, i9, iArr);
                if (i9 == 0 && iArr[0] != 0) {
                    this.f12854c--;
                } else if (i9 > 0 && iArr[0] == 0) {
                    this.f12854c++;
                }
                this.f12855d += i9 - iArr[0];
                return A();
            } else {
                iArr[0] = this.f12853b;
                if (i9 == 0) {
                    return u();
                }
                this.f12855d += i9 - i10;
                this.f12853b = i9;
                return this;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        f<E> o(Comparator<? super E> comparator, E e10, int i9, int[] iArr) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f12857f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return p(e10, i9);
                }
                int i10 = fVar.f12856e;
                f<E> o10 = fVar.o(comparator, e10, i9, iArr);
                this.f12857f = o10;
                if (iArr[0] == 0) {
                    this.f12854c++;
                }
                this.f12855d += i9;
                return o10.f12856e == i10 ? this : A();
            } else if (compare > 0) {
                f<E> fVar2 = this.f12858g;
                if (fVar2 == null) {
                    iArr[0] = 0;
                    return q(e10, i9);
                }
                int i11 = fVar2.f12856e;
                f<E> o11 = fVar2.o(comparator, e10, i9, iArr);
                this.f12858g = o11;
                if (iArr[0] == 0) {
                    this.f12854c++;
                }
                this.f12855d += i9;
                return o11.f12856e == i11 ? this : A();
            } else {
                int i12 = this.f12853b;
                iArr[0] = i12;
                long j10 = i9;
                com.google.common.base.o.d(((long) i12) + j10 <= 2147483647L);
                this.f12853b += i9;
                this.f12855d += j10;
                return this;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        int t(Comparator<? super E> comparator, E e10) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f12857f;
                if (fVar == null) {
                    return 0;
                }
                return fVar.t(comparator, e10);
            } else if (compare > 0) {
                f<E> fVar2 = this.f12858g;
                if (fVar2 == null) {
                    return 0;
                }
                return fVar2.t(comparator, e10);
            } else {
                return this.f12853b;
            }
        }

        public String toString() {
            return t6.g(x(), w()).toString();
        }

        int w() {
            return this.f12853b;
        }

        E x() {
            return (E) w6.a(this.f12852a);
        }

        f() {
            this.f12852a = null;
            this.f12853b = 1;
        }
    }
}
