package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class h implements e0.f<ByteBuffer, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final m f4518a;

    public h(m mVar) {
        this.f4518a = mVar;
    }

    @Override // e0.f
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull ByteBuffer byteBuffer, int i9, int i10, @NonNull e0.e eVar) throws IOException {
        return this.f4518a.g(byteBuffer, i9, i10, eVar);
    }

    @Override // e0.f
    /* renamed from: d */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull e0.e eVar) {
        return this.f4518a.q(byteBuffer);
    }
}
