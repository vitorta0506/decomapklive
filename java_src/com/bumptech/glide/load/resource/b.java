package com.bumptech.glide.load.resource;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import v0.j;
/* loaded from: classes.dex */
public class b<T> implements u<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final T f4476a;

    public b(@NonNull T t10) {
        this.f4476a = (T) j.d(t10);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<T> a() {
        return (Class<T>) this.f4476a.getClass();
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public final T get() {
        return this.f4476a;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final int getSize() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
    }
}
