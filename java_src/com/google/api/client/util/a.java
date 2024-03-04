package com.google.api.client.util;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes2.dex */
public class a<K, V> extends AbstractMap<K, V> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    int f11093a;

    /* renamed from: b  reason: collision with root package name */
    private Object[] f11094b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public final class C0091a implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private int f11095a;

        C0091a(int i9) {
            this.f11095a = i9;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return x.a(getKey(), entry.getKey()) && x.a(getValue(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) a.this.g(this.f11095a);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return (V) a.this.h(this.f11095a);
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Object key = getKey();
            Object value = getValue();
            return (key != null ? key.hashCode() : 0) ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            return (V) a.this.j(this.f11095a, v10);
        }
    }

    /* loaded from: classes2.dex */
    final class b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f11097a;

        /* renamed from: b  reason: collision with root package name */
        private int f11098b;

        b() {
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            int i9 = this.f11098b;
            a aVar = a.this;
            if (i9 != aVar.f11093a) {
                this.f11098b = i9 + 1;
                this.f11097a = false;
                return new C0091a(i9);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f11098b < a.this.f11093a;
        }

        @Override // java.util.Iterator
        public void remove() {
            int i9 = this.f11098b - 1;
            if (!this.f11097a && i9 >= 0) {
                a.this.remove(i9);
                this.f11098b--;
                this.f11097a = true;
                return;
            }
            throw new IllegalArgumentException();
        }
    }

    /* loaded from: classes2.dex */
    final class c extends AbstractSet<Map.Entry<K, V>> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a.this.f11093a;
        }
    }

    public static <K, V> a<K, V> b() {
        return new a<>();
    }

    private int e(Object obj) {
        int i9 = this.f11093a << 1;
        Object[] objArr = this.f11094b;
        for (int i10 = 0; i10 < i9; i10 += 2) {
            Object obj2 = objArr[i10];
            if (obj == null) {
                if (obj2 == null) {
                    return i10;
                }
            } else if (obj.equals(obj2)) {
                return i10;
            }
        }
        return -2;
    }

    private V i(int i9) {
        int i10 = this.f11093a << 1;
        if (i9 < 0 || i9 >= i10) {
            return null;
        }
        V n9 = n(i9 + 1);
        Object[] objArr = this.f11094b;
        int i11 = (i10 - i9) - 2;
        if (i11 != 0) {
            System.arraycopy(objArr, i9 + 2, objArr, i9, i11);
        }
        this.f11093a--;
        l(i10 - 2, null, null);
        return n9;
    }

    private void l(int i9, K k10, V v10) {
        Object[] objArr = this.f11094b;
        objArr[i9] = k10;
        objArr[i9 + 1] = v10;
    }

    private void m(int i9) {
        if (i9 == 0) {
            this.f11094b = null;
            return;
        }
        int i10 = this.f11093a;
        Object[] objArr = this.f11094b;
        if (i10 == 0 || i9 != objArr.length) {
            Object[] objArr2 = new Object[i9];
            this.f11094b = objArr2;
            if (i10 != 0) {
                System.arraycopy(objArr, 0, objArr2, 0, i10 << 1);
            }
        }
    }

    private V n(int i9) {
        if (i9 < 0) {
            return null;
        }
        return (V) this.f11094b[i9];
    }

    @Override // java.util.AbstractMap
    /* renamed from: a */
    public a<K, V> clone() {
        try {
            a<K, V> aVar = (a) super.clone();
            Object[] objArr = this.f11094b;
            if (objArr != null) {
                int length = objArr.length;
                Object[] objArr2 = new Object[length];
                aVar.f11094b = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
            }
            return aVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f11093a = 0;
        this.f11094b = null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return -2 != e(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        int i9 = this.f11093a << 1;
        Object[] objArr = this.f11094b;
        for (int i10 = 1; i10 < i9; i10 += 2) {
            Object obj2 = objArr[i10];
            if (obj == null) {
                if (obj2 == null) {
                    return true;
                }
            } else if (obj.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    public final void d(int i9) {
        if (i9 >= 0) {
            Object[] objArr = this.f11094b;
            int i10 = i9 << 1;
            int length = objArr == null ? 0 : objArr.length;
            if (i10 > length) {
                int i11 = ((length / 2) * 3) + 1;
                if (i11 % 2 != 0) {
                    i11++;
                }
                if (i11 >= i10) {
                    i10 = i11;
                }
                m(i10);
                return;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return new c();
    }

    public final int f(K k10) {
        return e(k10) >> 1;
    }

    public final K g(int i9) {
        if (i9 < 0 || i9 >= this.f11093a) {
            return null;
        }
        return (K) this.f11094b[i9 << 1];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        return n(e(obj) + 1);
    }

    public final V h(int i9) {
        if (i9 < 0 || i9 >= this.f11093a) {
            return null;
        }
        return n((i9 << 1) + 1);
    }

    public final V j(int i9, V v10) {
        int i10 = this.f11093a;
        if (i9 >= 0 && i9 < i10) {
            int i11 = (i9 << 1) + 1;
            V n9 = n(i11);
            this.f11094b[i11] = v10;
            return n9;
        }
        throw new IndexOutOfBoundsException();
    }

    public final V k(int i9, K k10, V v10) {
        if (i9 >= 0) {
            int i10 = i9 + 1;
            d(i10);
            int i11 = i9 << 1;
            V n9 = n(i11 + 1);
            l(i11, k10, v10);
            if (i10 > this.f11093a) {
                this.f11093a = i10;
            }
            return n9;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        int f10 = f(k10);
        if (f10 == -1) {
            f10 = this.f11093a;
        }
        return k(f10, k10, v10);
    }

    public final V remove(int i9) {
        return i(i9 << 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f11093a;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        return i(e(obj));
    }
}
