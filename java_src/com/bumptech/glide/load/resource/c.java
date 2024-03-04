package com.bumptech.glide.load.resource;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import e0.h;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public final class c<T> implements h<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final h<?> f4579b = new c();

    private c() {
    }

    @NonNull
    public static <T> c<T> a() {
        return (c) f4579b;
    }

    @Override // e0.h
    @NonNull
    public u<T> transform(@NonNull Context context, @NonNull u<T> uVar, int i9, int i10) {
        return uVar;
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
    }
}
