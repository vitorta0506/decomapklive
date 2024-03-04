package com.google.common.collect;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Function;
/* loaded from: classes2.dex */
public final class MutableClassToInstanceMap<B> extends t3<Class<? extends B>, B> implements Serializable {
    private final Map<Class<? extends B>, B> delegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends u3<Class<? extends B>, B> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map.Entry f12825a;

        a(Map.Entry entry) {
            this.f12825a = entry;
        }

        @Override // com.google.common.collect.u3, java.util.Map.Entry
        public B setValue(B b10) {
            return (B) super.setValue(MutableClassToInstanceMap.cast(getKey(), b10));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.w3
        /* renamed from: w0 */
        public Map.Entry<Class<? extends B>, B> delegate() {
            return this.f12825a;
        }
    }

    /* loaded from: classes2.dex */
    class b extends y3<Map.Entry<Class<? extends B>, B>> {

        /* loaded from: classes2.dex */
        class a extends b9<Map.Entry<Class<? extends B>, B>, Map.Entry<Class<? extends B>, B>> {
            a(b bVar, Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.b9
            /* renamed from: b */
            public Map.Entry<Class<? extends B>, B> a(Map.Entry<Class<? extends B>, B> entry) {
                return MutableClassToInstanceMap.checkedEntry(entry);
            }
        }

        b() {
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Class<? extends B>, B>> iterator() {
            return new a(this, delegate().iterator());
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<Map.Entry<Class<? extends B>, B>> spliterator() {
            return s2.e(delegate().spliterator(), new Function() { // from class: com.google.common.collect.u6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Map.Entry access$100;
                    access$100 = MutableClassToInstanceMap.access$100((Map.Entry) obj);
                    return access$100;
                }
            });
        }

        @Override // com.google.common.collect.q3, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.y3, com.google.common.collect.q3, com.google.common.collect.w3
        public Set<Map.Entry<Class<? extends B>, B>> delegate() {
            return MutableClassToInstanceMap.this.delegate().entrySet();
        }
    }

    /* loaded from: classes2.dex */
    private static final class c<B> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Map<Class<? extends B>, B> f12827a;

        c(Map<Class<? extends B>, B> map) {
            this.f12827a = map;
        }

        Object readResolve() {
            return MutableClassToInstanceMap.create(this.f12827a);
        }
    }

    private MutableClassToInstanceMap(Map<Class<? extends B>, B> map) {
        this.delegate = (Map) com.google.common.base.o.s(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Map.Entry access$100(Map.Entry entry) {
        return checkedEntry(entry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <B, T extends B> T cast(Class<T> cls, B b10) {
        return (T) com.google.common.primitives.i.d(cls).cast(b10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <B> Map.Entry<Class<? extends B>, B> checkedEntry(Map.Entry<Class<? extends B>, B> entry) {
        return new a(entry);
    }

    public static <B> MutableClassToInstanceMap<B> create() {
        return new MutableClassToInstanceMap<>(new HashMap());
    }

    private Object writeReplace() {
        return new c(delegate());
    }

    @Override // com.google.common.collect.t3, java.util.Map
    public Set<Map.Entry<Class<? extends B>, B>> entrySet() {
        return new b();
    }

    public <T extends B> T getInstance(Class<T> cls) {
        return (T) cast(cls, get(cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((Class<? extends Class<? extends B>>) obj, (Class<? extends B>) obj2);
    }

    @Override // com.google.common.collect.t3, java.util.Map
    public void putAll(Map<? extends Class<? extends B>, ? extends B> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            cast((Class) entry.getKey(), entry.getValue());
        }
        super.putAll(linkedHashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends B> T putInstance(Class<T> cls, T t10) {
        return (T) cast(cls, put((Class<? extends Class<T>>) cls, (Class<T>) t10));
    }

    public static <B> MutableClassToInstanceMap<B> create(Map<Class<? extends B>, B> map) {
        return new MutableClassToInstanceMap<>(map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.t3, com.google.common.collect.w3
    public Map<Class<? extends B>, B> delegate() {
        return this.delegate;
    }

    public B put(Class<? extends B> cls, B b10) {
        return (B) super.put((MutableClassToInstanceMap<B>) cls, (Class<? extends B>) cast(cls, b10));
    }
}
