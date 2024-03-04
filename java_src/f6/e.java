package f6;

import android.util.Base64;
import android.util.JsonWriter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import d6.f;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
/* loaded from: classes2.dex */
final class e implements d6.d, f {

    /* renamed from: a  reason: collision with root package name */
    private e f39633a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f39634b = true;

    /* renamed from: c  reason: collision with root package name */
    private final JsonWriter f39635c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<Class<?>, d6.c<?>> f39636d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<Class<?>, d6.e<?>> f39637e;

    /* renamed from: f  reason: collision with root package name */
    private final d6.c<Object> f39638f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f39639g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull Writer writer, @NonNull Map<Class<?>, d6.c<?>> map, @NonNull Map<Class<?>, d6.e<?>> map2, d6.c<Object> cVar, boolean z10) {
        this.f39635c = new JsonWriter(writer);
        this.f39636d = map;
        this.f39637e = map2;
        this.f39638f = cVar;
        this.f39639g = z10;
    }

    private boolean o(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    private e r(@NonNull String str, @Nullable Object obj) throws IOException, EncodingException {
        t();
        this.f39635c.name(str);
        if (obj == null) {
            this.f39635c.nullValue();
            return this;
        }
        return h(obj, false);
    }

    private e s(@NonNull String str, @Nullable Object obj) throws IOException, EncodingException {
        if (obj == null) {
            return this;
        }
        t();
        this.f39635c.name(str);
        return h(obj, false);
    }

    private void t() throws IOException {
        if (this.f39634b) {
            e eVar = this.f39633a;
            if (eVar != null) {
                eVar.t();
                this.f39633a.f39634b = false;
                this.f39633a = null;
                this.f39635c.endObject();
                return;
            }
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }

    @Override // d6.d
    @NonNull
    public d6.d b(@NonNull d6.b bVar, long j10) throws IOException {
        return k(bVar.b(), j10);
    }

    @Override // d6.d
    @NonNull
    public d6.d c(@NonNull d6.b bVar, int i9) throws IOException {
        return j(bVar.b(), i9);
    }

    @Override // d6.d
    @NonNull
    public d6.d d(@NonNull d6.b bVar, @Nullable Object obj) throws IOException {
        return l(bVar.b(), obj);
    }

    @NonNull
    public e f(int i9) throws IOException {
        t();
        this.f39635c.value(i9);
        return this;
    }

    @NonNull
    public e g(long j10) throws IOException {
        t();
        this.f39635c.value(j10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public e h(@Nullable Object obj, boolean z10) throws IOException {
        int[] iArr;
        int i9 = 0;
        if (z10 && o(obj)) {
            Object[] objArr = new Object[1];
            objArr[0] = obj == null ? null : obj.getClass();
            throw new EncodingException(String.format("%s cannot be encoded inline", objArr));
        } else if (obj == null) {
            this.f39635c.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.f39635c.value((Number) obj);
            return this;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                return n((byte[]) obj);
            }
            this.f39635c.beginArray();
            if (obj instanceof int[]) {
                int length = ((int[]) obj).length;
                while (i9 < length) {
                    this.f39635c.value(iArr[i9]);
                    i9++;
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                int length2 = jArr.length;
                while (i9 < length2) {
                    g(jArr[i9]);
                    i9++;
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                int length3 = dArr.length;
                while (i9 < length3) {
                    this.f39635c.value(dArr[i9]);
                    i9++;
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                int length4 = zArr.length;
                while (i9 < length4) {
                    this.f39635c.value(zArr[i9]);
                    i9++;
                }
            } else if (obj instanceof Number[]) {
                for (Number number : (Number[]) obj) {
                    h(number, false);
                }
            } else {
                for (Object obj2 : (Object[]) obj) {
                    h(obj2, false);
                }
            }
            this.f39635c.endArray();
            return this;
        } else if (obj instanceof Collection) {
            this.f39635c.beginArray();
            for (Object obj3 : (Collection) obj) {
                h(obj3, false);
            }
            this.f39635c.endArray();
            return this;
        } else if (obj instanceof Map) {
            this.f39635c.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    l((String) key, entry.getValue());
                } catch (ClassCastException e10) {
                    throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e10);
                }
            }
            this.f39635c.endObject();
            return this;
        } else {
            d6.c<?> cVar = this.f39636d.get(obj.getClass());
            if (cVar != null) {
                return q(cVar, obj, z10);
            }
            d6.e<?> eVar = this.f39637e.get(obj.getClass());
            if (eVar != null) {
                eVar.a(obj, this);
                return this;
            } else if (obj instanceof Enum) {
                a(((Enum) obj).name());
                return this;
            } else {
                return q(this.f39638f, obj, z10);
            }
        }
    }

    @Override // d6.f
    @NonNull
    /* renamed from: i */
    public e a(@Nullable String str) throws IOException {
        t();
        this.f39635c.value(str);
        return this;
    }

    @NonNull
    public e j(@NonNull String str, int i9) throws IOException {
        t();
        this.f39635c.name(str);
        return f(i9);
    }

    @NonNull
    public e k(@NonNull String str, long j10) throws IOException {
        t();
        this.f39635c.name(str);
        return g(j10);
    }

    @NonNull
    public e l(@NonNull String str, @Nullable Object obj) throws IOException {
        if (this.f39639g) {
            return s(str, obj);
        }
        return r(str, obj);
    }

    @Override // d6.f
    @NonNull
    /* renamed from: m */
    public e e(boolean z10) throws IOException {
        t();
        this.f39635c.value(z10);
        return this;
    }

    @NonNull
    public e n(@Nullable byte[] bArr) throws IOException {
        t();
        if (bArr == null) {
            this.f39635c.nullValue();
        } else {
            this.f39635c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() throws IOException {
        t();
        this.f39635c.flush();
    }

    e q(d6.c<Object> cVar, Object obj, boolean z10) throws IOException {
        if (!z10) {
            this.f39635c.beginObject();
        }
        cVar.a(obj, this);
        if (!z10) {
            this.f39635c.endObject();
        }
        return this;
    }
}
