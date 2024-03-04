package d6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f37943a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, Object> f37944b;

    /* renamed from: d6.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0374b {

        /* renamed from: a  reason: collision with root package name */
        private final String f37945a;

        /* renamed from: b  reason: collision with root package name */
        private Map<Class<?>, Object> f37946b = null;

        C0374b(String str) {
            this.f37945a = str;
        }

        @NonNull
        public b a() {
            Map unmodifiableMap;
            String str = this.f37945a;
            if (this.f37946b == null) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(new HashMap(this.f37946b));
            }
            return new b(str, unmodifiableMap);
        }

        @NonNull
        public <T extends Annotation> C0374b b(@NonNull T t10) {
            if (this.f37946b == null) {
                this.f37946b = new HashMap();
            }
            this.f37946b.put(t10.annotationType(), t10);
            return this;
        }
    }

    @NonNull
    public static C0374b a(@NonNull String str) {
        return new C0374b(str);
    }

    @NonNull
    public static b d(@NonNull String str) {
        return new b(str, Collections.emptyMap());
    }

    @NonNull
    public String b() {
        return this.f37943a;
    }

    @Nullable
    public <T extends Annotation> T c(@NonNull Class<T> cls) {
        return (T) this.f37944b.get(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return this.f37943a.equals(bVar.f37943a) && this.f37944b.equals(bVar.f37944b);
        }
        return false;
    }

    public int hashCode() {
        return (this.f37943a.hashCode() * 31) + this.f37944b.hashCode();
    }

    @NonNull
    public String toString() {
        return "FieldDescriptor{name=" + this.f37943a + ", properties=" + this.f37944b.values() + "}";
    }

    private b(String str, Map<Class<?>, Object> map) {
        this.f37943a = str;
        this.f37944b = map;
    }
}
