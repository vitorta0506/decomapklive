package com.guochao.faceshow.aaspring.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.util.LruCache;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import java.io.File;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class NinePatchCache {
    private static NinePatchCache sNinePatchCache;
    private LruCache<String, Bitmap> mLruCache = new LruCache<>(10);

    /* loaded from: classes3.dex */
    private static class FileTarget extends s0.c<File> {
        WeakReference<NinePatchCallback> mNinePatchCallbackWeakReference;
        private String mUrl;

        public FileTarget(NinePatchCallback ninePatchCallback, String str) {
            this.mNinePatchCallbackWeakReference = new WeakReference<>(ninePatchCallback);
            this.mUrl = str;
        }

        @Override // s0.k
        public void onLoadCleared(@Nullable Drawable drawable) {
            WeakReference<NinePatchCallback> weakReference = this.mNinePatchCallbackWeakReference;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.mNinePatchCallbackWeakReference.get().onFail(-1, "");
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((File) obj, (t0.f<? super File>) fVar);
        }

        public void onResourceReady(@NonNull File file, @Nullable t0.f<? super File> fVar) {
            WeakReference<NinePatchCallback> weakReference = this.mNinePatchCallbackWeakReference;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            NinePatchCallback ninePatchCallback = this.mNinePatchCallbackWeakReference.get();
            Bitmap bitmap = (Bitmap) NinePatchCache.getInstance().mLruCache.get(this.mUrl);
            if (bitmap == null) {
                bitmap = BitmapFactory.decodeFile(file.getAbsolutePath());
                if (this.mUrl != null && bitmap != null) {
                    NinePatchCache.getInstance().mLruCache.put(this.mUrl, bitmap);
                }
            }
            ninePatchCallback.onGetBitmap(this.mUrl, bitmap);
        }
    }

    /* loaded from: classes3.dex */
    public interface NinePatchCallback {
        void onFail(int i9, String str);

        void onGetBitmap(String str, Bitmap bitmap);
    }

    public static NinePatchCache getInstance() {
        if (sNinePatchCache == null) {
            synchronized (NinePatchCache.class) {
                if (sNinePatchCache == null) {
                    sNinePatchCache = new NinePatchCache();
                }
            }
        }
        return sNinePatchCache;
    }

    public void getNinePatch(String str, NinePatchCallback ninePatchCallback) {
        Bitmap bitmap = this.mLruCache.get(str);
        if (bitmap != null) {
            ninePatchCallback.onGetBitmap(str, bitmap);
        } else {
            ic.a.b(BaseApplication.getInstance()).d().Z0(str).M0(new FileTarget(ninePatchCallback, str));
        }
    }
}
