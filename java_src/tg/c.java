package tg;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import tg.e;
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final e<Object> f58177a = new b();

    /* loaded from: classes5.dex */
    private static final class b implements e<Object> {
        private b() {
        }

        @Override // java.util.Map
        /* renamed from: a */
        public Object put(Integer num, Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public void clear() {
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            return false;
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            return false;
        }

        @Override // tg.e
        public Iterable<e.a<Object>> entries() {
            return Collections.emptySet();
        }

        @Override // java.util.Map
        public Set<Map.Entry<Integer, Object>> entrySet() {
            return Collections.emptySet();
        }

        @Override // tg.e
        public Object get(int i9) {
            return null;
        }

        @Override // java.util.Map
        public Object get(Object obj) {
            return null;
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            return true;
        }

        @Override // java.util.Map
        public Set<Integer> keySet() {
            return Collections.emptySet();
        }

        @Override // tg.e
        public Object n0(int i9, Object obj) {
            throw new UnsupportedOperationException("put");
        }

        @Override // java.util.Map
        public void putAll(Map<? extends Integer, ?> map) {
            throw new UnsupportedOperationException();
        }

        @Override // tg.e
        public Object remove(int i9) {
            return null;
        }

        @Override // java.util.Map
        public Object remove(Object obj) {
            return null;
        }

        @Override // java.util.Map
        public int size() {
            return 0;
        }

        @Override // java.util.Map
        public Collection<Object> values() {
            return Collections.emptyList();
        }
    }

    public static <V> e<V> a() {
        return (e<V>) f58177a;
    }
}
