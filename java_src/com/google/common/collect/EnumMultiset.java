package com.google.common.collect;

import com.google.common.collect.q6;
import com.google.common.collect.t6;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;
/* loaded from: classes2.dex */
public final class EnumMultiset<E extends Enum<E>> extends p<E> implements Serializable {
    private static final long serialVersionUID = 0;
    private transient int[] counts;
    private transient int distinctElements;
    private transient E[] enumConstants;
    private transient long size;
    private transient Class<E> type;

    /* loaded from: classes2.dex */
    class a extends EnumMultiset<E>.c<E> {
        a() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.EnumMultiset.c
        /* renamed from: b */
        public E a(int i9) {
            return (E) EnumMultiset.this.enumConstants[i9];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends EnumMultiset<E>.c<q6.a<E>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends t6.b<E> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f12633a;

            a(int i9) {
                this.f12633a = i9;
            }

            @Override // com.google.common.collect.q6.a
            /* renamed from: b */
            public E a() {
                return (E) EnumMultiset.this.enumConstants[this.f12633a];
            }

            @Override // com.google.common.collect.q6.a
            public int getCount() {
                return EnumMultiset.this.counts[this.f12633a];
            }
        }

        b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.EnumMultiset.c
        /* renamed from: b */
        public q6.a<E> a(int i9) {
            return new a(i9);
        }
    }

    /* loaded from: classes2.dex */
    abstract class c<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f12635a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f12636b = -1;

        c() {
        }

        abstract T a(int i9);

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.f12635a < EnumMultiset.this.enumConstants.length) {
                int[] iArr = EnumMultiset.this.counts;
                int i9 = this.f12635a;
                if (iArr[i9] > 0) {
                    return true;
                }
                this.f12635a = i9 + 1;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T a10 = a(this.f12635a);
                int i9 = this.f12635a;
                this.f12636b = i9;
                this.f12635a = i9 + 1;
                return a10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            p2.e(this.f12636b >= 0);
            if (EnumMultiset.this.counts[this.f12636b] > 0) {
                EnumMultiset.access$210(EnumMultiset.this);
                EnumMultiset enumMultiset = EnumMultiset.this;
                EnumMultiset.access$322(enumMultiset, enumMultiset.counts[this.f12636b]);
                EnumMultiset.this.counts[this.f12636b] = 0;
            }
            this.f12636b = -1;
        }
    }

    private EnumMultiset(Class<E> cls) {
        this.type = cls;
        com.google.common.base.o.d(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
    }

    static /* synthetic */ int access$210(EnumMultiset enumMultiset) {
        int i9 = enumMultiset.distinctElements;
        enumMultiset.distinctElements = i9 - 1;
        return i9;
    }

    static /* synthetic */ long access$322(EnumMultiset enumMultiset, long j10) {
        long j11 = enumMultiset.size - j10;
        enumMultiset.size = j11;
        return j11;
    }

    private void checkIsE(Object obj) {
        com.google.common.base.o.s(obj);
        if (isActuallyE(obj)) {
            return;
        }
        String valueOf = String.valueOf(this.type);
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 21 + valueOf2.length());
        sb2.append("Expected an ");
        sb2.append(valueOf);
        sb2.append(" but got ");
        sb2.append(valueOf2);
        throw new ClassCastException(sb2.toString());
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Class<E> cls) {
        return new EnumMultiset<>(cls);
    }

    private boolean isActuallyE(Object obj) {
        if (obj instanceof Enum) {
            Enum r52 = (Enum) obj;
            int ordinal = r52.ordinal();
            E[] eArr = this.enumConstants;
            return ordinal < eArr.length && eArr[ordinal] == r52;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Class<E> cls = (Class) objectInputStream.readObject();
        this.type = cls;
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
        t7.f(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.type);
        t7.k(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ int add(Object obj, int i9) {
        return add((EnumMultiset<E>) ((Enum) obj), i9);
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Arrays.fill(this.counts, 0);
        this.size = 0L;
        this.distinctElements = 0;
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.q6
    public int count(Object obj) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        return this.counts[((Enum) obj).ordinal()];
    }

    @Override // com.google.common.collect.p
    int distinctElements() {
        return this.distinctElements;
    }

    @Override // com.google.common.collect.p
    Iterator<E> elementIterator() {
        return new a();
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ Set elementSet() {
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

    @Override // com.google.common.collect.p, java.lang.Iterable
    public /* bridge */ /* synthetic */ void forEach(Consumer consumer) {
        p6.a(this, consumer);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public void forEachEntry(ObjIntConsumer<? super E> objIntConsumer) {
        com.google.common.base.o.s(objIntConsumer);
        int i9 = 0;
        while (true) {
            E[] eArr = this.enumConstants;
            if (i9 >= eArr.length) {
                return;
            }
            int[] iArr = this.counts;
            if (iArr[i9] > 0) {
                objIntConsumer.accept(eArr[i9], iArr[i9]);
            }
            i9++;
        }
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return t6.i(this);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public int remove(Object obj, int i9) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        Enum r12 = (Enum) obj;
        p2.b(i9, "occurrences");
        if (i9 == 0) {
            return count(obj);
        }
        int ordinal = r12.ordinal();
        int[] iArr = this.counts;
        int i10 = iArr[ordinal];
        if (i10 == 0) {
            return 0;
        }
        if (i10 <= i9) {
            iArr[ordinal] = 0;
            this.distinctElements--;
            this.size -= i10;
        } else {
            iArr[ordinal] = i10 - i9;
            this.size -= i9;
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ int setCount(Object obj, int i9) {
        return setCount((EnumMultiset<E>) ((Enum) obj), i9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public int size() {
        return com.google.common.primitives.f.i(this.size);
    }

    @Override // com.google.common.collect.p, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Spliterator spliterator() {
        return p6.c(this);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        com.google.common.base.o.e(it.hasNext(), "EnumMultiset constructor passed empty Iterable");
        EnumMultiset<E> enumMultiset = new EnumMultiset<>(it.next().getDeclaringClass());
        n5.a(enumMultiset, iterable);
        return enumMultiset;
    }

    public int add(E e10, int i9) {
        checkIsE(e10);
        p2.b(i9, "occurrences");
        if (i9 == 0) {
            return count(e10);
        }
        int ordinal = e10.ordinal();
        int i10 = this.counts[ordinal];
        long j10 = i9;
        long j11 = i10 + j10;
        com.google.common.base.o.j(j11 <= 2147483647L, "too many occurrences: %s", j11);
        this.counts[ordinal] = (int) j11;
        if (i10 == 0) {
            this.distinctElements++;
        }
        this.size += j10;
        return i10;
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ boolean setCount(Object obj, int i9, int i10) {
        return super.setCount(obj, i9, i10);
    }

    public int setCount(E e10, int i9) {
        checkIsE(e10);
        p2.b(i9, AnimatedPasterJsonConfig.CONFIG_COUNT);
        int ordinal = e10.ordinal();
        int[] iArr = this.counts;
        int i10 = iArr[ordinal];
        iArr[ordinal] = i9;
        this.size += i9 - i10;
        if (i10 == 0 && i9 > 0) {
            this.distinctElements++;
        } else if (i10 > 0 && i9 == 0) {
            this.distinctElements--;
        }
        return i10;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable, Class<E> cls) {
        EnumMultiset<E> create = create(cls);
        n5.a(create, iterable);
        return create;
    }
}
