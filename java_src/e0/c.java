package e0;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes.dex */
public class c<T> implements h<T> {

    /* renamed from: b  reason: collision with root package name */
    private final Collection<? extends h<T>> f38308b;

    @SafeVarargs
    public c(@NonNull h<T>... hVarArr) {
        if (hVarArr.length != 0) {
            this.f38308b = Arrays.asList(hVarArr);
            return;
        }
        throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof c) {
            return this.f38308b.equals(((c) obj).f38308b);
        }
        return false;
    }

    @Override // e0.b
    public int hashCode() {
        return this.f38308b.hashCode();
    }

    @Override // e0.h
    @NonNull
    public u<T> transform(@NonNull Context context, @NonNull u<T> uVar, int i9, int i10) {
        u<T> uVar2 = uVar;
        for (h<T> hVar : this.f38308b) {
            u<T> transform = hVar.transform(context, uVar2, i9, i10);
            if (uVar2 != null && !uVar2.equals(uVar) && !uVar2.equals(transform)) {
                uVar2.recycle();
            }
            uVar2 = transform;
        }
        return uVar2;
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        for (h<T> hVar : this.f38308b) {
            hVar.updateDiskCacheKey(messageDigest);
        }
    }
}
