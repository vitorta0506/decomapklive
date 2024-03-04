package com.google.android.gms.internal.recaptcha;

import java.lang.Comparable;
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
public class ei<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final int f8654a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8657d;

    /* renamed from: e  reason: collision with root package name */
    private volatile di f8658e;

    /* renamed from: b  reason: collision with root package name */
    private List<bi> f8655b = Collections.emptyList();

    /* renamed from: c  reason: collision with root package name */
    private Map<K, V> f8656c = Collections.emptyMap();

    /* renamed from: f  reason: collision with root package name */
    private Map<K, V> f8659f = Collections.emptyMap();

    private final int k(K k10) {
        int size = this.f8655b.size() - 1;
        int i9 = 0;
        if (size >= 0) {
            int compareTo = k10.compareTo(this.f8655b.get(size).a());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        while (i9 <= size) {
            int i10 = (i9 + size) / 2;
            int compareTo2 = k10.compareTo(this.f8655b.get(i10).a());
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
    public final V l(int i9) {
        n();
        V v10 = (V) this.f8655b.remove(i9).getValue();
        if (!this.f8656c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m().entrySet().iterator();
            List<bi> list = this.f8655b;
            Map.Entry<K, V> next = it.next();
            list.add(new bi(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v10;
    }

    private final SortedMap<K, V> m() {
        n();
        if (this.f8656c.isEmpty() && !(this.f8656c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f8656c = treeMap;
            this.f8659f = treeMap.descendingMap();
        }
        return (SortedMap) this.f8656c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        if (this.f8657d) {
            throw new UnsupportedOperationException();
        }
    }

    public void a() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (this.f8657d) {
            return;
        }
        if (this.f8656c.isEmpty()) {
            unmodifiableMap = Collections.emptyMap();
        } else {
            unmodifiableMap = Collections.unmodifiableMap(this.f8656c);
        }
        this.f8656c = unmodifiableMap;
        if (this.f8659f.isEmpty()) {
            unmodifiableMap2 = Collections.emptyMap();
        } else {
            unmodifiableMap2 = Collections.unmodifiableMap(this.f8659f);
        }
        this.f8659f = unmodifiableMap2;
        this.f8657d = true;
    }

    public final int b() {
        return this.f8655b.size();
    }

    public final Iterable<Map.Entry<K, V>> c() {
        return this.f8656c.isEmpty() ? ai.a() : this.f8656c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        n();
        if (!this.f8655b.isEmpty()) {
            this.f8655b.clear();
        }
        if (this.f8656c.isEmpty()) {
            return;
        }
        this.f8656c.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return k(comparable) >= 0 || this.f8656c.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: e */
    public final V put(K k10, V v10) {
        n();
        int k11 = k(k10);
        if (k11 >= 0) {
            return (V) this.f8655b.get(k11).setValue(v10);
        }
        n();
        if (this.f8655b.isEmpty() && !(this.f8655b instanceof ArrayList)) {
            this.f8655b = new ArrayList(this.f8654a);
        }
        int i9 = -(k11 + 1);
        if (i9 >= this.f8654a) {
            return m().put(k10, v10);
        }
        int size = this.f8655b.size();
        int i10 = this.f8654a;
        if (size == i10) {
            bi remove = this.f8655b.remove(i10 - 1);
            m().put((K) remove.a(), (V) remove.getValue());
        }
        this.f8655b.add(i9, new bi(this, k10, v10));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f8658e == null) {
            this.f8658e = new di(this, null);
        }
        return this.f8658e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ei)) {
            return super.equals(obj);
        }
        ei eiVar = (ei) obj;
        int size = size();
        if (size != eiVar.size()) {
            return false;
        }
        int b10 = b();
        if (b10 == eiVar.b()) {
            for (int i9 = 0; i9 < b10; i9++) {
                if (!g(i9).equals(eiVar.g(i9))) {
                    return false;
                }
            }
            if (b10 != size) {
                return this.f8656c.equals(eiVar.f8656c);
            }
            return true;
        }
        return entrySet().equals(eiVar.entrySet());
    }

    public final Map.Entry<K, V> g(int i9) {
        return this.f8655b.get(i9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int k10 = k(comparable);
        if (k10 >= 0) {
            return (V) this.f8655b.get(k10).getValue();
        }
        return this.f8656c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int b10 = b();
        int i9 = 0;
        for (int i10 = 0; i10 < b10; i10++) {
            i9 += this.f8655b.get(i10).hashCode();
        }
        return this.f8656c.size() > 0 ? i9 + this.f8656c.hashCode() : i9;
    }

    public final boolean j() {
        return this.f8657d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        n();
        Comparable comparable = (Comparable) obj;
        int k10 = k(comparable);
        if (k10 >= 0) {
            return (V) l(k10);
        }
        if (this.f8656c.isEmpty()) {
            return null;
        }
        return this.f8656c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f8655b.size() + this.f8656c.size();
    }
}
