package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.IOException;
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class d implements e0.f<ImageDecoder.Source, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final g0.d f4515a = new g0.e();

    @Override // e0.f
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull ImageDecoder.Source source, int i9, int i10, @NonNull e0.e eVar) throws IOException {
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, new com.bumptech.glide.load.resource.a(i9, i10, eVar));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + decodeBitmap.getWidth() + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + decodeBitmap.getHeight() + "] for [" + i9 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i10 + "]");
        }
        return new e(decodeBitmap, this.f4515a);
    }

    @Override // e0.f
    /* renamed from: d */
    public boolean a(@NonNull ImageDecoder.Source source, @NonNull e0.e eVar) throws IOException {
        return true;
    }
}
