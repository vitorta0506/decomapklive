package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class b0 implements e0.f<Bitmap, Bitmap> {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements com.bumptech.glide.load.engine.u<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        private final Bitmap f4501a;

        a(@NonNull Bitmap bitmap) {
            this.f4501a = bitmap;
        }

        @Override // com.bumptech.glide.load.engine.u
        @NonNull
        public Class<Bitmap> a() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.engine.u
        @NonNull
        /* renamed from: b */
        public Bitmap get() {
            return this.f4501a;
        }

        @Override // com.bumptech.glide.load.engine.u
        public int getSize() {
            return v0.k.h(this.f4501a);
        }

        @Override // com.bumptech.glide.load.engine.u
        public void recycle() {
        }
    }

    @Override // e0.f
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull Bitmap bitmap, int i9, int i10, @NonNull e0.e eVar) {
        return new a(bitmap);
    }

    @Override // e0.f
    /* renamed from: d */
    public boolean a(@NonNull Bitmap bitmap, @NonNull e0.e eVar) {
        return true;
    }
}
