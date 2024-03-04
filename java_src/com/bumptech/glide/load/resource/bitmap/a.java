package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.IOException;
/* loaded from: classes.dex */
public class a<DataType> implements e0.f<DataType, BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final e0.f<DataType, Bitmap> f4491a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f4492b;

    public a(@NonNull Resources resources, @NonNull e0.f<DataType, Bitmap> fVar) {
        this.f4492b = (Resources) v0.j.d(resources);
        this.f4491a = (e0.f) v0.j.d(fVar);
    }

    @Override // e0.f
    public boolean a(@NonNull DataType datatype, @NonNull e0.e eVar) throws IOException {
        return this.f4491a.a(datatype, eVar);
    }

    @Override // e0.f
    public com.bumptech.glide.load.engine.u<BitmapDrawable> b(@NonNull DataType datatype, int i9, int i10, @NonNull e0.e eVar) throws IOException {
        return u.c(this.f4492b, this.f4491a.b(datatype, i9, i10, eVar));
    }
}
