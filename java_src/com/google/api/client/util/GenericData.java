package com.google.api.client.util;

import com.google.api.client.util.k;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes2.dex */
public class GenericData extends AbstractMap<String, Object> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    Map<String, Object> f11085a;

    /* renamed from: b  reason: collision with root package name */
    final h f11086b;

    /* loaded from: classes2.dex */
    public enum Flags {
        IGNORE_CASE
    }

    /* loaded from: classes2.dex */
    final class a implements Iterator<Map.Entry<String, Object>> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f11087a;

        /* renamed from: b  reason: collision with root package name */
        private final Iterator<Map.Entry<String, Object>> f11088b;

        /* renamed from: c  reason: collision with root package name */
        private final Iterator<Map.Entry<String, Object>> f11089c;

        a(k.c cVar) {
            this.f11088b = cVar.iterator();
            this.f11089c = GenericData.this.f11085a.entrySet().iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<String, Object> next() {
            if (!this.f11087a) {
                if (this.f11088b.hasNext()) {
                    return this.f11088b.next();
                }
                this.f11087a = true;
            }
            return this.f11089c.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f11088b.hasNext() || this.f11089c.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f11087a) {
                this.f11089c.remove();
            }
            this.f11088b.remove();
        }
    }

    /* loaded from: classes2.dex */
    final class b extends AbstractSet<Map.Entry<String, Object>> {

        /* renamed from: a  reason: collision with root package name */
        private final k.c f11091a;

        b() {
            this.f11091a = new k(GenericData.this, GenericData.this.f11086b.d()).entrySet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            GenericData.this.f11085a.clear();
            this.f11091a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<String, Object>> iterator() {
            return new a(this.f11091a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return GenericData.this.f11085a.size() + this.f11091a.size();
        }
    }

    public GenericData() {
        this(EnumSet.noneOf(Flags.class));
    }

    @Override // java.util.AbstractMap
    /* renamed from: a */
    public GenericData clone() {
        try {
            GenericData genericData = (GenericData) super.clone();
            j.c(this, genericData);
            genericData.f11085a = (Map) j.a(this.f11085a);
            return genericData;
        } catch (CloneNotSupportedException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public final h b() {
        return this.f11086b;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: d */
    public final Object put(String str, Object obj) {
        m b10 = this.f11086b.b(str);
        if (b10 != null) {
            Object g10 = b10.g(this);
            b10.m(this, obj);
            return g10;
        }
        if (this.f11086b.d()) {
            str = str.toLowerCase(Locale.US);
        }
        return this.f11085a.put(str, obj);
    }

    public GenericData e(String str, Object obj) {
        m b10 = this.f11086b.b(str);
        if (b10 != null) {
            b10.m(this, obj);
        } else {
            if (this.f11086b.d()) {
                str = str.toLowerCase(Locale.US);
            }
            this.f11085a.put(str, obj);
        }
        return this;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return new b();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GenericData)) {
            return false;
        }
        GenericData genericData = (GenericData) obj;
        return super.equals(genericData) && Objects.equals(this.f11086b, genericData.f11086b);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            m b10 = this.f11086b.b(str);
            if (b10 != null) {
                return b10.g(this);
            }
            if (this.f11086b.d()) {
                str = str.toLowerCase(Locale.US);
            }
            return this.f11085a.get(str);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f11086b);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends String, ?> map) {
        for (Map.Entry<? extends String, ?> entry : map.entrySet()) {
            e(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            if (this.f11086b.b(str) == null) {
                if (this.f11086b.d()) {
                    str = str.toLowerCase(Locale.US);
                }
                return this.f11085a.remove(str);
            }
            throw new UnsupportedOperationException();
        }
        return null;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        return "GenericData{classInfo=" + this.f11086b.f11118d + ", " + super.toString() + "}";
    }

    public GenericData(EnumSet<Flags> enumSet) {
        this.f11085a = com.google.api.client.util.a.b();
        this.f11086b = h.f(getClass(), enumSet.contains(Flags.IGNORE_CASE));
    }
}
