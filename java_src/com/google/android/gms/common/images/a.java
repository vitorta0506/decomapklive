package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2.dex */
final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f7653a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final ParcelFileDescriptor f7654b;

    public a(ImageManager imageManager, @Nullable Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.f7653a = uri;
        this.f7654b = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmap;
        Bitmap bitmap2;
        boolean z10;
        com.google.android.gms.common.internal.c.b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        ParcelFileDescriptor parcelFileDescriptor = this.f7654b;
        boolean z11 = false;
        if (parcelFileDescriptor != null) {
            try {
                bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError e10) {
                Log.e("ImageManager", "OOM while loading bitmap for uri: ".concat(String.valueOf(this.f7653a)), e10);
                bitmap = null;
                z11 = true;
            }
            try {
                this.f7654b.close();
            } catch (IOException e11) {
                Log.e("ImageManager", "closed failed", e11);
            }
            bitmap2 = bitmap;
            z10 = z11;
        } else {
            bitmap2 = null;
            z10 = false;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager.b(null).post(new b(null, this.f7653a, bitmap2, z10, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            Log.w("ImageManager", "Latch interrupted while posting ".concat(String.valueOf(this.f7653a)));
        }
    }
}
