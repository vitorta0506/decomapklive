package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.q6;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ObjIntConsumer;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public abstract class ImmutableMultiset<E> extends y4<E> implements q6<E> {
    private transient ImmutableList<E> asList;
    private transient ImmutableSet<q6.a<E>> entrySet;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends e9<E> {

        /* renamed from: a  reason: collision with root package name */
        int f12697a;

        /* renamed from: b  reason: collision with root package name */
        E f12698b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Iterator f12699c;

        a(ImmutableMultiset immutableMultiset, Iterator it) {
            this.f12699c = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12697a > 0 || this.f12699c.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f12697a <= 0) {
                q6.a aVar = (q6.a) this.f12699c.next();
                this.f12698b = (E) aVar.a();
                this.f12697a = aVar.getCount();
            }
            this.f12697a--;
            E e10 = this.f12698b;
            Objects.requireNonNull(e10);
            return e10;
        }
    }

    /* loaded from: classes2.dex */
    public static class b<E> extends ImmutableCollection.a<E> {

        /* renamed from: a  reason: collision with root package name */
        final q6<E> f12700a;

        public b() {
            this(LinkedHashMultiset.create());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.a
        /* renamed from: f */
        public b<E> a(E e10) {
            this.f12700a.add(com.google.common.base.o.s(e10));
            return this;
        }

        public b<E> g(E... eArr) {
            super.b(eArr);
            return this;
        }

        public b<E> h(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b<E> i(E e10, int i9) {
            this.f12700a.add(com.google.common.base.o.s(e10), i9);
            return this;
        }

        public ImmutableMultiset<E> j() {
            return ImmutableMultiset.copyOf(this.f12700a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(q6<E> q6Var) {
            this.f12700a = q6Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c<E> extends ImmutableSet.d<E> {

        /* renamed from: a  reason: collision with root package name */
        private final List<q6.a<E>> f12701a;

        /* renamed from: b  reason: collision with root package name */
        private final q6<E> f12702b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(List<q6.a<E>> list, q6<E> q6Var) {
            this.f12701a = list;
            this.f12702b = q6Var;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f12702b.contains(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet.d
        public E get(int i9) {
            return this.f12701a.get(i9).a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f12701a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class d extends l5<q6.a<E>> {
        private static final long serialVersionUID = 0;

        private d() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l5
        /* renamed from: c */
        public q6.a<E> get(int i9) {
            return ImmutableMultiset.this.getEntry(i9);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof q6.a) {
                q6.a aVar = (q6.a) obj;
                return aVar.getCount() > 0 && ImmutableMultiset.this.count(aVar.a()) == aVar.getCount();
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return ImmutableMultiset.this.isPartialView();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ImmutableMultiset.this.elementSet().size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return new e(ImmutableMultiset.this);
        }

        /* synthetic */ d(ImmutableMultiset immutableMultiset, a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    static class e<E> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final ImmutableMultiset<E> f12704a;

        e(ImmutableMultiset<E> immutableMultiset) {
            this.f12704a = immutableMultiset;
        }

        Object readResolve() {
            return this.f12704a.entrySet();
        }
    }

    /* loaded from: classes2.dex */
    static final class f implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final Object[] f12705a;

        /* renamed from: b  reason: collision with root package name */
        final int[] f12706b;

        f(q6<? extends Object> q6Var) {
            int size = q6Var.entrySet().size();
            this.f12705a = new Object[size];
            this.f12706b = new int[size];
            int i9 = 0;
            for (q6.a<? extends Object> aVar : q6Var.entrySet()) {
                this.f12705a[i9] = aVar.a();
                this.f12706b[i9] = aVar.getCount();
                i9++;
            }
        }

        Object readResolve() {
            LinkedHashMultiset create = LinkedHashMultiset.create(this.f12705a.length);
            int i9 = 0;
            while (true) {
                Object[] objArr = this.f12705a;
                if (i9 < objArr.length) {
                    create.add(objArr[i9], this.f12706b[i9]);
                    i9++;
                } else {
                    return ImmutableMultiset.copyOf(create);
                }
            }
        }
    }

    public static <E> b<E> builder() {
        return new b<>();
    }

    private static <E> ImmutableMultiset<E> copyFromElements(E... eArr) {
        LinkedHashMultiset create = LinkedHashMultiset.create();
        Collections.addAll(create, eArr);
        return copyFromEntries(create.entrySet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableMultiset<E> copyFromEntries(Collection<? extends q6.a<? extends E>> collection) {
        if (collection.isEmpty()) {
            return of();
        }
        return l7.d(collection);
    }

    public static <E> ImmutableMultiset<E> copyOf(E[] eArr) {
        return copyFromElements(eArr);
    }

    private ImmutableSet<q6.a<E>> createEntrySet() {
        return isEmpty() ? ImmutableSet.of() : new d(this, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$toImmutableMultiset$0(Object obj) {
        return 1;
    }

    public static <E> ImmutableMultiset<E> of() {
        return (ImmutableMultiset<E>) l7.f13226g;
    }

    public static <E> Collector<E, ?, ImmutableMultiset<E>> toImmutableMultiset() {
        return o2.S(Function.identity(), new ToIntFunction() { // from class: com.google.common.collect.x4
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int lambda$toImmutableMultiset$0;
                lambda$toImmutableMultiset$0 = ImmutableMultiset.lambda$toImmutableMultiset$0(obj);
                return lambda$toImmutableMultiset$0;
            }
        });
    }

    @Override // com.google.common.collect.q6
    @Deprecated
    public final int add(E e10, int i9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.asList;
        if (immutableList == null) {
            ImmutableList<E> asList = super.asList();
            this.asList = asList;
            return asList;
        }
        return immutableList;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return count(obj) > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i9) {
        e9<q6.a<E>> it = entrySet().iterator();
        while (it.hasNext()) {
            q6.a<E> next = it.next();
            Arrays.fill(objArr, i9, next.getCount() + i9, next.a());
            i9 += next.getCount();
        }
        return i9;
    }

    public abstract /* synthetic */ int count(Object obj);

    @Override // com.google.common.collect.q6
    public abstract ImmutableSet<E> elementSet();

    @Override // java.util.Collection, com.google.common.collect.q6
    public boolean equals(Object obj) {
        return t6.f(this, obj);
    }

    @Override // java.lang.Iterable
    public /* bridge */ /* synthetic */ void forEach(Consumer consumer) {
        p6.a(this, consumer);
    }

    @Override // com.google.common.collect.q6
    public /* bridge */ /* synthetic */ void forEachEntry(ObjIntConsumer objIntConsumer) {
        p6.b(this, objIntConsumer);
    }

    abstract q6.a<E> getEntry(int i9);

    @Override // java.util.Collection, com.google.common.collect.q6
    public int hashCode() {
        return w7.e(entrySet());
    }

    @Override // com.google.common.collect.q6
    @Deprecated
    public final int remove(Object obj, int i9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.q6
    @Deprecated
    public final int setCount(E e10, int i9) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new f(this);
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> iterable) {
        q6 create;
        if (iterable instanceof ImmutableMultiset) {
            ImmutableMultiset<E> immutableMultiset = (ImmutableMultiset) iterable;
            if (!immutableMultiset.isPartialView()) {
                return immutableMultiset;
            }
        }
        if (iterable instanceof q6) {
            create = t6.d(iterable);
        } else {
            create = LinkedHashMultiset.create(iterable);
        }
        return copyFromEntries(create.entrySet());
    }

    public static <E> ImmutableMultiset<E> of(E e10) {
        return copyFromElements(e10);
    }

    public static <T, E> Collector<T, ?, ImmutableMultiset<E>> toImmutableMultiset(Function<? super T, ? extends E> function, ToIntFunction<? super T> toIntFunction) {
        return o2.S(function, toIntFunction);
    }

    @Override // com.google.common.collect.q6
    public ImmutableSet<q6.a<E>> entrySet() {
        ImmutableSet<q6.a<E>> immutableSet = this.entrySet;
        if (immutableSet == null) {
            ImmutableSet<q6.a<E>> createEntrySet = createEntrySet();
            this.entrySet = createEntrySet;
            return createEntrySet;
        }
        return immutableSet;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<E> iterator() {
        return new a(this, entrySet().iterator());
    }

    @Override // com.google.common.collect.q6
    @Deprecated
    public final boolean setCount(E e10, int i9, int i10) {
        throw new UnsupportedOperationException();
    }

    public static <E> ImmutableMultiset<E> of(E e10, E e11) {
        return copyFromElements(e10, e11);
    }

    public static <E> ImmutableMultiset<E> of(E e10, E e11, E e12) {
        return copyFromElements(e10, e11, e12);
    }

    public static <E> ImmutableMultiset<E> of(E e10, E e11, E e12, E e13) {
        return copyFromElements(e10, e11, e12, e13);
    }

    public static <E> ImmutableMultiset<E> of(E e10, E e11, E e12, E e13, E e14) {
        return copyFromElements(e10, e11, e12, e13, e14);
    }

    public static <E> ImmutableMultiset<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E... eArr) {
        return new b().a(e10).a(e11).a(e12).a(e13).a(e14).a(e15).g(eArr).j();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> it) {
        LinkedHashMultiset create = LinkedHashMultiset.create();
        p5.a(create, it);
        return copyFromEntries(create.entrySet());
    }
}
