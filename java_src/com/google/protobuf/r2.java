package com.google.protobuf;

import com.google.protobuf.o0;
import com.huawei.hms.framework.common.ContainerUtils;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class r2<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final int f15209a;

    /* renamed from: b  reason: collision with root package name */
    private List<r2<K, V>.e> f15210b;

    /* renamed from: c  reason: collision with root package name */
    private Map<K, V> f15211c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15212d;

    /* renamed from: e  reason: collision with root package name */
    private volatile r2<K, V>.g f15213e;

    /* renamed from: f  reason: collision with root package name */
    private Map<K, V> f15214f;

    /* renamed from: g  reason: collision with root package name */
    private volatile r2<K, V>.c f15215g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
    /* loaded from: classes3.dex */
    public static class a<FieldDescriptorType> extends r2<FieldDescriptorType, Object> {
        a(int i9) {
            super(i9, null);
        }

        @Override // com.google.protobuf.r2
        public void p() {
            if (!o()) {
                for (int i9 = 0; i9 < k(); i9++) {
                    Map.Entry<FieldDescriptorType, Object> j10 = j(i9);
                    if (((o0.c) j10.getKey()).isRepeated()) {
                        j10.setValue(Collections.unmodifiableList((List) j10.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : m()) {
                    if (((o0.c) entry.getKey()).isRepeated()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.p();
        }

        @Override // com.google.protobuf.r2, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.put((o0.c) obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c extends r2<K, V>.g {
        private c() {
            super(r2.this, null);
        }

        @Override // com.google.protobuf.r2.g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new b(r2.this, null);
        }

        /* synthetic */ c(r2 r2Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private static final Iterator<Object> f15220a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final Iterable<Object> f15221b = new b();

        /* loaded from: classes3.dex */
        static class a implements Iterator<Object> {
            a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* loaded from: classes3.dex */
        static class b implements Iterable<Object> {
            b() {
            }

            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return d.f15220a;
            }
        }

        static <T> Iterable<T> b() {
            return (Iterable<T>) f15221b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class e implements Map.Entry<K, V>, Comparable<r2<K, V>.e> {

        /* renamed from: a  reason: collision with root package name */
        private final K f15222a;

        /* renamed from: b  reason: collision with root package name */
        private V f15223b;

        e(r2 r2Var, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        private boolean b(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(r2<K, V>.e eVar) {
            return getKey().compareTo(eVar.getKey());
        }

        @Override // java.util.Map.Entry
        /* renamed from: c */
        public K getKey() {
            return this.f15222a;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return b(this.f15222a, entry.getKey()) && b(this.f15223b, entry.getValue());
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f15223b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f15222a;
            int hashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f15223b;
            return hashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            r2.this.g();
            V v11 = this.f15223b;
            this.f15223b = v10;
            return v11;
        }

        public String toString() {
            return this.f15222a + ContainerUtils.KEY_VALUE_DELIMITER + this.f15223b;
        }

        e(K k10, V v10) {
            this.f15222a = k10;
            this.f15223b = v10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class g extends AbstractSet<Map.Entry<K, V>> {
        private g() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /* renamed from: c */
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            r2.this.put(entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            r2.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = r2.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f(r2.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                r2.this.remove(entry.getKey());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return r2.this.size();
        }

        /* synthetic */ g(r2 r2Var, a aVar) {
            this();
        }
    }

    /* synthetic */ r2(int i9, a aVar) {
        this(i9);
    }

    private int f(K k10) {
        int size = this.f15210b.size() - 1;
        if (size >= 0) {
            int compareTo = k10.compareTo(this.f15210b.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i9 = 0;
        while (i9 <= size) {
            int i10 = (i9 + size) / 2;
            int compareTo2 = k10.compareTo(this.f15210b.get(i10).getKey());
            if (compareTo2 < 0) {
                size = i10 - 1;
            } else if (compareTo2 <= 0) {
                return i10;
            } else {
                i9 = i10 + 1;
            }
        }
        return -(i9 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f15212d) {
            throw new UnsupportedOperationException();
        }
    }

    private void i() {
        g();
        if (!this.f15210b.isEmpty() || (this.f15210b instanceof ArrayList)) {
            return;
        }
        this.f15210b = new ArrayList(this.f15209a);
    }

    private SortedMap<K, V> n() {
        g();
        if (this.f15211c.isEmpty() && !(this.f15211c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f15211c = treeMap;
            this.f15214f = treeMap.descendingMap();
        }
        return (SortedMap) this.f15211c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends o0.c<FieldDescriptorType>> r2<FieldDescriptorType, Object> q(int i9) {
        return new a(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V s(int i9) {
        g();
        V value = this.f15210b.remove(i9).getValue();
        if (!this.f15211c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = n().entrySet().iterator();
            this.f15210b.add(new e(this, it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        g();
        if (!this.f15210b.isEmpty()) {
            this.f15210b.clear();
        }
        if (this.f15211c.isEmpty()) {
            return;
        }
        this.f15211c.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return f(comparable) >= 0 || this.f15211c.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f15213e == null) {
            this.f15213e = new g(this, null);
        }
        return this.f15213e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r2)) {
            return super.equals(obj);
        }
        r2 r2Var = (r2) obj;
        int size = size();
        if (size != r2Var.size()) {
            return false;
        }
        int k10 = k();
        if (k10 != r2Var.k()) {
            return entrySet().equals(r2Var.entrySet());
        }
        for (int i9 = 0; i9 < k10; i9++) {
            if (!j(i9).equals(r2Var.j(i9))) {
                return false;
            }
        }
        if (k10 != size) {
            return this.f15211c.equals(r2Var.f15211c);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int f10 = f(comparable);
        if (f10 >= 0) {
            return this.f15210b.get(f10).getValue();
        }
        return this.f15211c.get(comparable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<Map.Entry<K, V>> h() {
        if (this.f15215g == null) {
            this.f15215g = new c(this, null);
        }
        return this.f15215g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int k10 = k();
        int i9 = 0;
        for (int i10 = 0; i10 < k10; i10++) {
            i9 += this.f15210b.get(i10).hashCode();
        }
        return l() > 0 ? i9 + this.f15211c.hashCode() : i9;
    }

    public Map.Entry<K, V> j(int i9) {
        return this.f15210b.get(i9);
    }

    public int k() {
        return this.f15210b.size();
    }

    public int l() {
        return this.f15211c.size();
    }

    public Iterable<Map.Entry<K, V>> m() {
        if (this.f15211c.isEmpty()) {
            return d.b();
        }
        return this.f15211c.entrySet();
    }

    public boolean o() {
        return this.f15212d;
    }

    public void p() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (this.f15212d) {
            return;
        }
        if (this.f15211c.isEmpty()) {
            unmodifiableMap = Collections.emptyMap();
        } else {
            unmodifiableMap = Collections.unmodifiableMap(this.f15211c);
        }
        this.f15211c = unmodifiableMap;
        if (this.f15214f.isEmpty()) {
            unmodifiableMap2 = Collections.emptyMap();
        } else {
            unmodifiableMap2 = Collections.unmodifiableMap(this.f15214f);
        }
        this.f15214f = unmodifiableMap2;
        this.f15212d = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: r */
    public V put(K k10, V v10) {
        g();
        int f10 = f(k10);
        if (f10 >= 0) {
            return this.f15210b.get(f10).setValue(v10);
        }
        i();
        int i9 = -(f10 + 1);
        if (i9 >= this.f15209a) {
            return n().put(k10, v10);
        }
        int size = this.f15210b.size();
        int i10 = this.f15209a;
        if (size == i10) {
            r2<K, V>.e remove = this.f15210b.remove(i10 - 1);
            n().put((K) remove.getKey(), remove.getValue());
        }
        this.f15210b.add(i9, new e(k10, v10));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int f10 = f(comparable);
        if (f10 >= 0) {
            return (V) s(f10);
        }
        if (this.f15211c.isEmpty()) {
            return null;
        }
        return this.f15211c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f15210b.size() + this.f15211c.size();
    }

    /* loaded from: classes3.dex */
    private class b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private int f15216a;

        /* renamed from: b  reason: collision with root package name */
        private Iterator<Map.Entry<K, V>> f15217b;

        private b() {
            this.f15216a = r2.this.f15210b.size();
        }

        private Iterator<Map.Entry<K, V>> a() {
            if (this.f15217b == null) {
                this.f15217b = r2.this.f15214f.entrySet().iterator();
            }
            return this.f15217b;
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public Map.Entry<K, V> next() {
            if (a().hasNext()) {
                return a().next();
            }
            List list = r2.this.f15210b;
            int i9 = this.f15216a - 1;
            this.f15216a = i9;
            return (Map.Entry) list.get(i9);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i9 = this.f15216a;
            return (i9 > 0 && i9 <= r2.this.f15210b.size()) || a().hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* synthetic */ b(r2 r2Var, a aVar) {
            this();
        }
    }

    /* loaded from: classes3.dex */
    private class f implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private int f15225a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f15226b;

        /* renamed from: c  reason: collision with root package name */
        private Iterator<Map.Entry<K, V>> f15227c;

        private f() {
            this.f15225a = -1;
        }

        private Iterator<Map.Entry<K, V>> a() {
            if (this.f15227c == null) {
                this.f15227c = r2.this.f15211c.entrySet().iterator();
            }
            return this.f15227c;
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public Map.Entry<K, V> next() {
            this.f15226b = true;
            int i9 = this.f15225a + 1;
            this.f15225a = i9;
            if (i9 < r2.this.f15210b.size()) {
                return (Map.Entry) r2.this.f15210b.get(this.f15225a);
            }
            return a().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f15225a + 1 >= r2.this.f15210b.size()) {
                return !r2.this.f15211c.isEmpty() && a().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f15226b) {
                this.f15226b = false;
                r2.this.g();
                if (this.f15225a < r2.this.f15210b.size()) {
                    r2 r2Var = r2.this;
                    int i9 = this.f15225a;
                    this.f15225a = i9 - 1;
                    r2Var.s(i9);
                    return;
                }
                a().remove();
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }

        /* synthetic */ f(r2 r2Var, a aVar) {
            this();
        }
    }

    private r2(int i9) {
        this.f15209a = i9;
        this.f15210b = Collections.emptyList();
        this.f15211c = Collections.emptyMap();
        this.f15214f = Collections.emptyMap();
    }
}
