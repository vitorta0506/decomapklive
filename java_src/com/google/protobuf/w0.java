package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3.dex */
public class w0 extends x0 {

    /* renamed from: f  reason: collision with root package name */
    private final o1 f15312f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b<K> implements Map.Entry<K, Object> {

        /* renamed from: a  reason: collision with root package name */
        private Map.Entry<K, w0> f15313a;

        public w0 a() {
            return this.f15313a.getValue();
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f15313a.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            w0 value = this.f15313a.getValue();
            if (value == null) {
                return null;
            }
            return value.g();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof o1) {
                return this.f15313a.getValue().e((o1) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }

        private b(Map.Entry<K, w0> entry) {
            this.f15313a = entry;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class c<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: a  reason: collision with root package name */
        private Iterator<Map.Entry<K, Object>> f15314a;

        public c(Iterator<Map.Entry<K, Object>> it) {
            this.f15314a = it;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f15314a.next();
            return next.getValue() instanceof w0 ? new b(next) : next;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15314a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f15314a.remove();
        }
    }

    public w0(o1 o1Var, f0 f0Var, ByteString byteString) {
        super(f0Var, byteString);
        this.f15312f = o1Var;
    }

    @Override // com.google.protobuf.x0
    public boolean equals(Object obj) {
        return g().equals(obj);
    }

    public o1 g() {
        return d(this.f15312f);
    }

    @Override // com.google.protobuf.x0
    public int hashCode() {
        return g().hashCode();
    }

    public String toString() {
        return g().toString();
    }
}
