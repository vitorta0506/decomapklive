package e0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
import v0.j;
/* loaded from: classes.dex */
public final class d<T> {

    /* renamed from: e  reason: collision with root package name */
    private static final b<Object> f38309e = new a();

    /* renamed from: a  reason: collision with root package name */
    private final T f38310a;

    /* renamed from: b  reason: collision with root package name */
    private final b<T> f38311b;

    /* renamed from: c  reason: collision with root package name */
    private final String f38312c;

    /* renamed from: d  reason: collision with root package name */
    private volatile byte[] f38313d;

    /* loaded from: classes.dex */
    class a implements b<Object> {
        a() {
        }

        @Override // e0.d.b
        public void a(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    }

    /* loaded from: classes.dex */
    public interface b<T> {
        void a(@NonNull byte[] bArr, @NonNull T t10, @NonNull MessageDigest messageDigest);
    }

    private d(@NonNull String str, @Nullable T t10, @NonNull b<T> bVar) {
        this.f38312c = j.b(str);
        this.f38310a = t10;
        this.f38311b = (b) j.d(bVar);
    }

    @NonNull
    public static <T> d<T> a(@NonNull String str, @Nullable T t10, @NonNull b<T> bVar) {
        return new d<>(str, t10, bVar);
    }

    @NonNull
    private static <T> b<T> b() {
        return (b<T>) f38309e;
    }

    @NonNull
    private byte[] d() {
        if (this.f38313d == null) {
            this.f38313d = this.f38312c.getBytes(e0.b.f38307a);
        }
        return this.f38313d;
    }

    @NonNull
    public static <T> d<T> e(@NonNull String str) {
        return new d<>(str, null, b());
    }

    @NonNull
    public static <T> d<T> f(@NonNull String str, @NonNull T t10) {
        return new d<>(str, t10, b());
    }

    @Nullable
    public T c() {
        return this.f38310a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f38312c.equals(((d) obj).f38312c);
        }
        return false;
    }

    public void g(@NonNull T t10, @NonNull MessageDigest messageDigest) {
        this.f38311b.a(d(), t10, messageDigest);
    }

    public int hashCode() {
        return this.f38312c.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f38312c + "'}";
    }
}
