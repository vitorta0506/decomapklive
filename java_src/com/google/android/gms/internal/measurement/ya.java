package com.google.android.gms.internal.measurement;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ya extends AbstractMap {

    /* renamed from: a  reason: collision with root package name */
    private final int f8443a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8446d;

    /* renamed from: e  reason: collision with root package name */
    private volatile wa f8447e;

    /* renamed from: b  reason: collision with root package name */
    private List f8444b = Collections.emptyList();

    /* renamed from: c  reason: collision with root package name */
    private Map f8445c = Collections.emptyMap();

    /* renamed from: f  reason: collision with root package name */
    private Map f8448f = Collections.emptyMap();

    private final int k(Comparable comparable) {
        int size = this.f8444b.size() - 1;
        int i9 = 0;
        if (size >= 0) {
            int compareTo = comparable.compareTo(((sa) this.f8444b.get(size)).a());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        while (i9 <= size) {
            int i10 = (i9 + size) / 2;
            int compareTo2 = comparable.compareTo(((sa) this.f8444b.get(i10)).a());
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
    public final Object l(int i9) {
        n();
        Object value = ((sa) this.f8444b.remove(i9)).getValue();
        if (!this.f8445c.isEmpty()) {
            Iterator it = m().entrySet().iterator();
            List list = this.f8444b;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new sa(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return value;
    }

    private final SortedMap m() {
        n();
        if (this.f8445c.isEmpty() && !(this.f8445c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f8445c = treeMap;
            this.f8448f = treeMap.descendingMap();
        }
        return (SortedMap) this.f8445c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        if (this.f8446d) {
            throw new UnsupportedOperationException();
        }
    }

    public void a() {
        Map unmodifiableMap;
        Map unmodifiableMap2;
        if (this.f8446d) {
            return;
        }
        if (this.f8445c.isEmpty()) {
            unmodifiableMap = Collections.emptyMap();
        } else {
            unmodifiableMap = Collections.unmodifiableMap(this.f8445c);
        }
        this.f8445c = unmodifiableMap;
        if (this.f8448f.isEmpty()) {
            unmodifiableMap2 = Collections.emptyMap();
        } else {
            unmodifiableMap2 = Collections.unmodifiableMap(this.f8448f);
        }
        this.f8448f = unmodifiableMap2;
        this.f8446d = true;
    }

    public final int b() {
        return this.f8444b.size();
    }

    public final Iterable c() {
        return this.f8445c.isEmpty() ? ra.a() : this.f8445c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        n();
        if (!this.f8444b.isEmpty()) {
            this.f8444b.clear();
        }
        if (this.f8445c.isEmpty()) {
            return;
        }
        this.f8445c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return k(comparable) >= 0 || this.f8445c.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: e */
    public final Object put(Comparable comparable, Object obj) {
        n();
        int k10 = k(comparable);
        if (k10 >= 0) {
            return ((sa) this.f8444b.get(k10)).setValue(obj);
        }
        n();
        if (this.f8444b.isEmpty() && !(this.f8444b instanceof ArrayList)) {
            this.f8444b = new ArrayList(this.f8443a);
        }
        int i9 = -(k10 + 1);
        if (i9 >= this.f8443a) {
            return m().put(comparable, obj);
        }
        int size = this.f8444b.size();
        int i10 = this.f8443a;
        if (size == i10) {
            sa saVar = (sa) this.f8444b.remove(i10 - 1);
            m().put(saVar.a(), saVar.getValue());
        }
        this.f8444b.add(i9, new sa(this, comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f8447e == null) {
            this.f8447e = new wa(this, null);
        }
        return this.f8447e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ya)) {
            return super.equals(obj);
        }
        ya yaVar = (ya) obj;
        int size = size();
        if (size != yaVar.size()) {
            return false;
        }
        int b10 = b();
        if (b10 == yaVar.b()) {
            for (int i9 = 0; i9 < b10; i9++) {
                if (!g(i9).equals(yaVar.g(i9))) {
                    return false;
                }
            }
            if (b10 != size) {
                return this.f8445c.equals(yaVar.f8445c);
            }
            return true;
        }
        return entrySet().equals(yaVar.entrySet());
    }

    public final Map.Entry g(int i9) {
        return (Map.Entry) this.f8444b.get(i9);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int k10 = k(comparable);
        if (k10 >= 0) {
            return ((sa) this.f8444b.get(k10)).getValue();
        }
        return this.f8445c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int b10 = b();
        int i9 = 0;
        for (int i10 = 0; i10 < b10; i10++) {
            i9 += ((sa) this.f8444b.get(i10)).hashCode();
        }
        return this.f8445c.size() > 0 ? i9 + this.f8445c.hashCode() : i9;
    }

    public final boolean j() {
        return this.f8446d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        n();
        Comparable comparable = (Comparable) obj;
        int k10 = k(comparable);
        if (k10 >= 0) {
            return l(k10);
        }
        if (this.f8445c.isEmpty()) {
            return null;
        }
        return this.f8445c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f8444b.size() + this.f8445c.size();
    }
}
