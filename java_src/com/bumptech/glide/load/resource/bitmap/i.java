package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.nio.ByteBuffer;
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class i implements e0.f<ByteBuffer, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final d f4519a = new d();

    @Override // e0.f
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull ByteBuffer byteBuffer, int i9, int i10, @NonNull e0.e eVar) throws IOException {
        return this.f4519a.b(ImageDecoder.createSource(byteBuffer), i9, i10, eVar);
    }

    @Override // e0.f
    /* renamed from: d */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull e0.e eVar) throws IOException {
        return true;
    }
}
