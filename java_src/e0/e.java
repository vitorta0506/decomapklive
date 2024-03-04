package e0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public final class e implements b {

    /* renamed from: b  reason: collision with root package name */
    private final ArrayMap<d<?>, Object> f38314b = new CachedHashCodeArrayMap();

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void d(@NonNull d<T> dVar, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        dVar.g(obj, messageDigest);
    }

    @Nullable
    public <T> T a(@NonNull d<T> dVar) {
        return this.f38314b.containsKey(dVar) ? (T) this.f38314b.get(dVar) : dVar.c();
    }

    public void b(@NonNull e eVar) {
        this.f38314b.putAll((SimpleArrayMap<? extends d<?>, ? extends Object>) eVar.f38314b);
    }

    @NonNull
    public <T> e c(@NonNull d<T> dVar, @NonNull T t10) {
        this.f38314b.put(dVar, t10);
        return this;
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.f38314b.equals(((e) obj).f38314b);
        }
        return false;
    }

    @Override // e0.b
    public int hashCode() {
        return this.f38314b.hashCode();
    }

    public String toString() {
        return "Options{values=" + this.f38314b + '}';
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        for (int i9 = 0; i9 < this.f38314b.size(); i9++) {
            d(this.f38314b.keyAt(i9), this.f38314b.valueAt(i9), messageDigest);
        }
    }
}
