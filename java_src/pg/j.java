package pg;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
/* loaded from: classes5.dex */
public final class j {

    /* loaded from: classes5.dex */
    static class a extends AbstractList<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f56872a;

        a(List list) {
            this.f56872a = list;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: c */
        public String get(int i9) {
            Object obj = this.f56872a.get(i9);
            if (obj != null) {
                return obj.toString();
            }
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f56872a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b implements Map.Entry<String, String> {

        /* renamed from: a  reason: collision with root package name */
        private final Map.Entry<CharSequence, CharSequence> f56873a;

        /* renamed from: b  reason: collision with root package name */
        private String f56874b;

        /* renamed from: c  reason: collision with root package name */
        private String f56875c;

        b(Map.Entry<CharSequence, CharSequence> entry) {
            this.f56873a = entry;
        }

        @Override // java.util.Map.Entry
        /* renamed from: a */
        public String getKey() {
            if (this.f56874b == null) {
                this.f56874b = this.f56873a.getKey().toString();
            }
            return this.f56874b;
        }

        @Override // java.util.Map.Entry
        /* renamed from: b */
        public String getValue() {
            if (this.f56875c == null && this.f56873a.getValue() != null) {
                this.f56875c = this.f56873a.getValue().toString();
            }
            return this.f56875c;
        }

        @Override // java.util.Map.Entry
        /* renamed from: c */
        public String setValue(String str) {
            String value = getValue();
            this.f56873a.setValue(str);
            return value;
        }

        public String toString() {
            return this.f56873a.toString();
        }
    }

    /* loaded from: classes5.dex */
    private static final class c implements Iterator<Map.Entry<String, String>> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<Map.Entry<CharSequence, CharSequence>> f56876a;

        c(Iterator<Map.Entry<CharSequence, CharSequence>> it) {
            this.f56876a = it;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<String, String> next() {
            return new b(this.f56876a.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f56876a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f56876a.remove();
        }
    }

    public static <K, V> List<String> a(i<K, V, ?> iVar, K k10) {
        return new a(iVar.d0(k10));
    }

    public static <K, V> String b(i<K, V, ?> iVar, K k10) {
        V v10 = iVar.get(k10);
        if (v10 != null) {
            return v10.toString();
        }
        return null;
    }

    public static Iterator<Map.Entry<String, String>> c(Iterable<Map.Entry<CharSequence, CharSequence>> iterable) {
        return new c(iterable.iterator());
    }

    public static <K, V> String d(Class<?> cls, Iterator<Map.Entry<K, V>> it, int i9) {
        String simpleName = cls.getSimpleName();
        if (i9 == 0) {
            return simpleName + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb2 = new StringBuilder(simpleName.length() + 2 + (i9 * 20));
        sb2.append(simpleName);
        sb2.append('[');
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            sb2.append(next.getKey());
            sb2.append(": ");
            sb2.append(next.getValue());
            sb2.append(", ");
        }
        sb2.setLength(sb2.length() - 2);
        sb2.append(']');
        return sb2.toString();
    }
}
