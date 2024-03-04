package com.google.common.collect;

import com.google.common.collect.q6;
import com.google.common.collect.t6;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.ObjIntConsumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class m<E> extends p<E> implements Serializable {
    private static final long serialVersionUID = -2250766705698539974L;
    private transient Map<E, f3> backingMap;
    private transient long size;

    /* loaded from: classes2.dex */
    class a implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        Map.Entry<E, f3> f13234a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterator f13235b;

        a(Iterator it) {
            this.f13235b = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13235b.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            Map.Entry<E, f3> entry = (Map.Entry) this.f13235b.next();
            this.f13234a = entry;
            return entry.getKey();
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.o.A(this.f13234a != null, "no calls to next() since the last call to remove()");
            m.access$022(m.this, this.f13234a.getValue().d(0));
            this.f13235b.remove();
            this.f13234a = null;
        }
    }

    /* loaded from: classes2.dex */
    class b implements Iterator<q6.a<E>> {

        /* renamed from: a  reason: collision with root package name */
        Map.Entry<E, f3> f13237a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterator f13238b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends t6.b<E> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Map.Entry f13240a;

            a(Map.Entry entry) {
                this.f13240a = entry;
            }

            @Override // com.google.common.collect.q6.a
            public E a() {
                return (E) this.f13240a.getKey();
            }

            @Override // com.google.common.collect.q6.a
            public int getCount() {
                f3 f3Var;
                f3 f3Var2 = (f3) this.f13240a.getValue();
                if ((f3Var2 == null || f3Var2.c() == 0) && (f3Var = (f3) m.this.backingMap.get(a())) != null) {
                    return f3Var.c();
                }
                if (f3Var2 == null) {
                    return 0;
                }
                return f3Var2.c();
            }
        }

        b(Iterator it) {
            this.f13238b = it;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public q6.a<E> next() {
            Map.Entry<E, f3> entry = (Map.Entry) this.f13238b.next();
            this.f13237a = entry;
            return new a(entry);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13238b.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.o.A(this.f13237a != null, "no calls to next() since the last call to remove()");
            m.access$022(m.this, this.f13237a.getValue().d(0));
            this.f13238b.remove();
            this.f13237a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        final Iterator<Map.Entry<E, f3>> f13242a;

        /* renamed from: b  reason: collision with root package name */
        Map.Entry<E, f3> f13243b;

        /* renamed from: c  reason: collision with root package name */
        int f13244c;

        /* renamed from: d  reason: collision with root package name */
        boolean f13245d;

        c() {
            this.f13242a = m.this.backingMap.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13244c > 0 || this.f13242a.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f13244c == 0) {
                Map.Entry<E, f3> next = this.f13242a.next();
                this.f13243b = next;
                this.f13244c = next.getValue().c();
            }
            this.f13244c--;
            this.f13245d = true;
            Map.Entry<E, f3> entry = this.f13243b;
            Objects.requireNonNull(entry);
            return entry.getKey();
        }

        @Override // java.util.Iterator
        public void remove() {
            p2.e(this.f13245d);
            Map.Entry<E, f3> entry = this.f13243b;
            Objects.requireNonNull(entry);
            if (entry.getValue().c() > 0) {
                if (this.f13243b.getValue().b(-1) == 0) {
                    this.f13242a.remove();
                }
                m.access$010(m.this);
                this.f13245d = false;
                return;
            }
            throw new ConcurrentModificationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public m(Map<E, f3> map) {
        com.google.common.base.o.d(map.isEmpty());
        this.backingMap = map;
    }

    static /* synthetic */ long access$010(m mVar) {
        long j10 = mVar.size;
        mVar.size = j10 - 1;
        return j10;
    }

    static /* synthetic */ long access$022(m mVar, long j10) {
        long j11 = mVar.size - j10;
        mVar.size = j11;
        return j11;
    }

    private static int getAndSet(f3 f3Var, int i9) {
        if (f3Var == null) {
            return 0;
        }
        return f3Var.d(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$forEachEntry$0(ObjIntConsumer objIntConsumer, Object obj, f3 f3Var) {
        objIntConsumer.accept(obj, f3Var.c());
    }

    private void readObjectNoData() throws ObjectStreamException {
        throw new InvalidObjectException("Stream data required");
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public int add(E e10, int i9) {
        if (i9 == 0) {
            return count(e10);
        }
        int i10 = 0;
        com.google.common.base.o.h(i9 > 0, "occurrences cannot be negative: %s", i9);
        f3 f3Var = this.backingMap.get(e10);
        if (f3Var == null) {
            this.backingMap.put(e10, new f3(i9));
        } else {
            int c10 = f3Var.c();
            long j10 = c10 + i9;
            com.google.common.base.o.j(j10 <= 2147483647L, "too many occurrences: %s", j10);
            f3Var.a(i9);
            i10 = c10;
        }
        this.size += i9;
        return i10;
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        for (f3 f3Var : this.backingMap.values()) {
            f3Var.e(0);
        }
        this.backingMap.clear();
        this.size = 0L;
    }

    public int count(Object obj) {
        f3 f3Var = (f3) d6.t(this.backingMap, obj);
        if (f3Var == null) {
            return 0;
        }
        return f3Var.c();
    }

    @Override // com.google.common.collect.p
    int distinctElements() {
        return this.backingMap.size();
    }

    @Override // com.google.common.collect.p
    Iterator<E> elementIterator() {
        return new a(this.backingMap.entrySet().iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.p
    public Iterator<q6.a<E>> entryIterator() {
        return new b(this.backingMap.entrySet().iterator());
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public Set<q6.a<E>> entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public void forEachEntry(final ObjIntConsumer<? super E> objIntConsumer) {
        com.google.common.base.o.s(objIntConsumer);
        this.backingMap.forEach(new BiConsumer() { // from class: com.google.common.collect.l
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                m.lambda$forEachEntry$0(objIntConsumer, obj, (f3) obj2);
            }
        });
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new c();
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public int remove(Object obj, int i9) {
        if (i9 == 0) {
            return count(obj);
        }
        com.google.common.base.o.h(i9 > 0, "occurrences cannot be negative: %s", i9);
        f3 f3Var = this.backingMap.get(obj);
        if (f3Var == null) {
            return 0;
        }
        int c10 = f3Var.c();
        if (c10 <= i9) {
            this.backingMap.remove(obj);
            i9 = c10;
        }
        f3Var.a(-i9);
        this.size -= i9;
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackingMap(Map<E, f3> map) {
        this.backingMap = map;
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public int setCount(E e10, int i9) {
        int i10;
        p2.b(i9, AnimatedPasterJsonConfig.CONFIG_COUNT);
        if (i9 == 0) {
            i10 = getAndSet(this.backingMap.remove(e10), i9);
        } else {
            f3 f3Var = this.backingMap.get(e10);
            int andSet = getAndSet(f3Var, i9);
            if (f3Var == null) {
                this.backingMap.put(e10, new f3(i9));
            }
            i10 = andSet;
        }
        this.size += i9 - i10;
        return i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public int size() {
        return com.google.common.primitives.f.i(this.size);
    }
}
