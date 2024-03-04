package io.grpc.netty.shaded.io.netty.util.internal;

import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes5.dex */
public final class RecyclableArrayList extends ArrayList<Object> {
    private static final int DEFAULT_INITIAL_CAPACITY = 8;
    private static final r<RecyclableArrayList> RECYCLER = r.b(new a());
    private static final long serialVersionUID = -8605125654176467947L;
    private final r.a<RecyclableArrayList> handle;
    private boolean insertSinceRecycled;

    /* loaded from: classes5.dex */
    static class a implements r.b<RecyclableArrayList> {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
        /* renamed from: b */
        public RecyclableArrayList a(r.a<RecyclableArrayList> aVar) {
            return new RecyclableArrayList(aVar, (a) null);
        }
    }

    /* synthetic */ RecyclableArrayList(r.a aVar, a aVar2) {
        this(aVar);
    }

    private static void checkNullElements(Collection<?> collection) {
        if ((collection instanceof RandomAccess) && (collection instanceof List)) {
            List list = (List) collection;
            int size = list.size();
            for (int i9 = 0; i9 < size; i9++) {
                if (list.get(i9) == null) {
                    throw new IllegalArgumentException("c contains null values");
                }
            }
            return;
        }
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("c contains null values");
            }
        }
    }

    public static RecyclableArrayList newInstance() {
        return newInstance(8);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        if (super.add(s.h(obj, "element"))) {
            this.insertSinceRecycled = true;
            return true;
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<?> collection) {
        checkNullElements(collection);
        if (super.addAll(collection)) {
            this.insertSinceRecycled = true;
            return true;
        }
        return false;
    }

    public boolean insertSinceRecycled() {
        return this.insertSinceRecycled;
    }

    public boolean recycle() {
        clear();
        this.insertSinceRecycled = false;
        this.handle.a(this);
        return true;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public Object set(int i9, Object obj) {
        Object obj2 = super.set(i9, s.h(obj, "element"));
        this.insertSinceRecycled = true;
        return obj2;
    }

    private RecyclableArrayList(r.a<RecyclableArrayList> aVar) {
        this(aVar, 8);
    }

    public static RecyclableArrayList newInstance(int i9) {
        RecyclableArrayList a10 = RECYCLER.a();
        a10.ensureCapacity(i9);
        return a10;
    }

    private RecyclableArrayList(r.a<RecyclableArrayList> aVar, int i9) {
        super(i9);
        this.handle = aVar;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int i9, Object obj) {
        super.add(i9, s.h(obj, "element"));
        this.insertSinceRecycled = true;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int i9, Collection<?> collection) {
        checkNullElements(collection);
        if (super.addAll(i9, collection)) {
            this.insertSinceRecycled = true;
            return true;
        }
        return false;
    }
}
