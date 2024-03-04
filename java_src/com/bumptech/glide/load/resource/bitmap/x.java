package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class x implements e0.f<Uri, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final m0.f f4571a;

    /* renamed from: b  reason: collision with root package name */
    private final g0.d f4572b;

    public x(m0.f fVar, g0.d dVar) {
        this.f4571a = fVar;
        this.f4572b = dVar;
    }

    @Override // e0.f
    @Nullable
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull Uri uri, int i9, int i10, @NonNull e0.e eVar) {
        com.bumptech.glide.load.engine.u<Drawable> b10 = this.f4571a.b(uri, i9, i10, eVar);
        if (b10 == null) {
            return null;
        }
        return n.a(this.f4572b, b10.get(), i9, i10);
    }

    @Override // e0.f
    /* renamed from: d */
    public boolean a(@NonNull Uri uri, @NonNull e0.e eVar) {
        return "android.resource".equals(uri.getScheme());
    }
}
