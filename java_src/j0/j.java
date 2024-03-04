package j0;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class j implements h {

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, List<i>> f52899c;

    /* renamed from: d  reason: collision with root package name */
    private volatile Map<String, String> f52900d;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: d  reason: collision with root package name */
        private static final String f52901d;

        /* renamed from: e  reason: collision with root package name */
        private static final Map<String, List<i>> f52902e;

        /* renamed from: a  reason: collision with root package name */
        private boolean f52903a = true;

        /* renamed from: b  reason: collision with root package name */
        private Map<String, List<i>> f52904b = f52902e;

        /* renamed from: c  reason: collision with root package name */
        private boolean f52905c = true;

        static {
            String b10 = b();
            f52901d = b10;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(b10)) {
                hashMap.put("User-Agent", Collections.singletonList(new b(b10)));
            }
            f52902e = Collections.unmodifiableMap(hashMap);
        }

        @VisibleForTesting
        static String b() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb2 = new StringBuilder(property.length());
            for (int i9 = 0; i9 < length; i9++) {
                char charAt = property.charAt(i9);
                if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                    sb2.append(charAt);
                } else {
                    sb2.append('?');
                }
            }
            return sb2.toString();
        }

        public j a() {
            this.f52903a = true;
            return new j(this.f52904b);
        }
    }

    /* loaded from: classes.dex */
    static final class b implements i {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final String f52906a;

        b(@NonNull String str) {
            this.f52906a = str;
        }

        @Override // j0.i
        public String a() {
            return this.f52906a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f52906a.equals(((b) obj).f52906a);
            }
            return false;
        }

        public int hashCode() {
            return this.f52906a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f52906a + "'}";
        }
    }

    j(Map<String, List<i>> map) {
        this.f52899c = Collections.unmodifiableMap(map);
    }

    @NonNull
    private String a(@NonNull List<i> list) {
        StringBuilder sb2 = new StringBuilder();
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            String a10 = list.get(i9).a();
            if (!TextUtils.isEmpty(a10)) {
                sb2.append(a10);
                if (i9 != list.size() - 1) {
                    sb2.append(',');
                }
            }
        }
        return sb2.toString();
    }

    private Map<String, String> b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<i>> entry : this.f52899c.entrySet()) {
            String a10 = a(entry.getValue());
            if (!TextUtils.isEmpty(a10)) {
                hashMap.put(entry.getKey(), a10);
            }
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f52899c.equals(((j) obj).f52899c);
        }
        return false;
    }

    @Override // j0.h
    public Map<String, String> getHeaders() {
        if (this.f52900d == null) {
            synchronized (this) {
                if (this.f52900d == null) {
                    this.f52900d = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.f52900d;
    }

    public int hashCode() {
        return this.f52899c.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f52899c + '}';
    }
}
