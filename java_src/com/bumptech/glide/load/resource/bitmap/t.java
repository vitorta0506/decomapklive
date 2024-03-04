package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.io.InputStream;
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class t implements e0.f<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final d f4561a = new d();

    @Override // e0.f
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull InputStream inputStream, int i9, int i10, @NonNull e0.e eVar) throws IOException {
        return this.f4561a.b(ImageDecoder.createSource(v0.a.b(inputStream)), i9, i10, eVar);
    }

    @Override // e0.f
    /* renamed from: d */
    public boolean a(@NonNull InputStream inputStream, @NonNull e0.e eVar) throws IOException {
        return true;
    }
}
