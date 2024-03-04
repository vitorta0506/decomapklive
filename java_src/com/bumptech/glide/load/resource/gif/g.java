package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
/* loaded from: classes.dex */
public final class g implements e0.f<c0.a, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final g0.d f4627a;

    public g(g0.d dVar) {
        this.f4627a = dVar;
    }

    @Override // e0.f
    /* renamed from: c */
    public u<Bitmap> b(@NonNull c0.a aVar, int i9, int i10, @NonNull e0.e eVar) {
        return com.bumptech.glide.load.resource.bitmap.e.c(aVar.a(), this.f4627a);
    }

    @Override // e0.f
    /* renamed from: d */
    public boolean a(@NonNull c0.a aVar, @NonNull e0.e eVar) {
        return true;
    }
}
