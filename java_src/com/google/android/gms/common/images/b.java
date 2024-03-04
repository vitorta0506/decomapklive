package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.gms.common.images.ImageManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2.dex */
final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f7655a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f7656b;

    /* renamed from: c  reason: collision with root package name */
    private final CountDownLatch f7657c;

    public b(ImageManager imageManager, @Nullable Uri uri, Bitmap bitmap, boolean z10, CountDownLatch countDownLatch) {
        this.f7655a = uri;
        this.f7656b = bitmap;
        this.f7657c = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        HashSet hashSet;
        ArrayList arrayList;
        com.google.android.gms.common.internal.c.a("OnBitmapLoadedRunnable must be executed in the main thread");
        Bitmap bitmap = this.f7656b;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) ImageManager.h(null).remove(this.f7655a);
        if (imageReceiver != null) {
            arrayList = imageReceiver.zac;
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                c cVar = (c) arrayList.get(i9);
                Bitmap bitmap2 = this.f7656b;
                if (bitmap2 != null && bitmap != null) {
                    cVar.c(ImageManager.a(null), bitmap2, false);
                } else {
                    ImageManager.f(null).put(this.f7655a, Long.valueOf(SystemClock.elapsedRealtime()));
                    cVar.b(ImageManager.a(null), ImageManager.c(null), false);
                }
                ImageManager.g(null).remove(cVar);
            }
        }
        this.f7657c.countDown();
        obj = ImageManager.f7650a;
        synchronized (obj) {
            hashSet = ImageManager.f7651b;
            hashSet.remove(this.f7655a);
        }
    }
}
