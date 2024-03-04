package com.google.api.client.util;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class k extends AbstractMap<String, Object> {

    /* renamed from: a  reason: collision with root package name */
    final Object f11134a;

    /* renamed from: b  reason: collision with root package name */
    final h f11135b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class a implements Map.Entry<String, Object> {

        /* renamed from: a  reason: collision with root package name */
        private Object f11136a;

        /* renamed from: b  reason: collision with root package name */
        private final m f11137b;

        a(m mVar, Object obj) {
            this.f11137b = mVar;
            this.f11136a = z.d(obj);
        }

        @Override // java.util.Map.Entry
        /* renamed from: a */
        public String getKey() {
            String e10 = this.f11137b.e();
            return k.this.f11135b.d() ? e10.toLowerCase(Locale.US) : e10;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return getKey().equals(entry.getKey()) && getValue().equals(entry.getValue());
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f11136a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return getKey().hashCode() ^ getValue().hashCode();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this.f11136a;
            this.f11136a = z.d(obj);
            this.f11137b.m(k.this.f11134a, obj);
            return obj2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class b implements Iterator<Map.Entry<String, Object>> {

        /* renamed from: a  reason: collision with root package name */
        private int f11139a = -1;

        /* renamed from: b  reason: collision with root package name */
        private m f11140b;

        /* renamed from: c  reason: collision with root package name */
        private Object f11141c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f11142d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f11143e;

        /* renamed from: f  reason: collision with root package name */
        private m f11144f;

        b() {
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<String, Object> next() {
            if (hasNext()) {
                m mVar = this.f11140b;
                this.f11144f = mVar;
                Object obj = this.f11141c;
                this.f11143e = false;
                this.f11142d = false;
                this.f11140b = null;
                this.f11141c = null;
                return new a(mVar, obj);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (!this.f11143e) {
                this.f11143e = true;
                this.f11141c = null;
                while (this.f11141c == null) {
                    int i9 = this.f11139a + 1;
                    this.f11139a = i9;
                    if (i9 >= k.this.f11135b.f11118d.size()) {
                        break;
                    }
                    h hVar = k.this.f11135b;
                    m b10 = hVar.b(hVar.f11118d.get(this.f11139a));
                    this.f11140b = b10;
                    this.f11141c = b10.g(k.this.f11134a);
                }
            }
            return this.f11141c != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            z.g((this.f11144f == null || this.f11142d) ? false : true);
            this.f11142d = true;
            this.f11144f.m(k.this.f11134a, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class c extends AbstractSet<Map.Entry<String, Object>> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: c */
        public b iterator() {
            return new b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            for (String str : k.this.f11135b.f11118d) {
                k.this.f11135b.b(str).m(k.this.f11134a, null);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            for (String str : k.this.f11135b.f11118d) {
                if (k.this.f11135b.b(str).g(k.this.f11134a) != null) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i9 = 0;
            for (String str : k.this.f11135b.f11118d) {
                if (k.this.f11135b.b(str).g(k.this.f11134a) != null) {
                    i9++;
                }
            }
            return i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Object obj, boolean z10) {
        this.f11134a = obj;
        this.f11135b = h.f(obj.getClass(), z10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: a */
    public c entrySet() {
        return new c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: b */
    public Object put(String str, Object obj) {
        m b10 = this.f11135b.b(str);
        z.e(b10, "no field of key " + str);
        Object g10 = b10.g(this.f11134a);
        b10.m(this.f11134a, z.d(obj));
        return g10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        m b10;
        if ((obj instanceof String) && (b10 = this.f11135b.b((String) obj)) != null) {
            return b10.g(this.f11134a);
        }
        return null;
    }
}
