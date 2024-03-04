package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.EncodeStrategy;
import java.io.File;
/* loaded from: classes.dex */
public class b implements e0.g<BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final g0.d f4499a;

    /* renamed from: b  reason: collision with root package name */
    private final e0.g<Bitmap> f4500b;

    public b(g0.d dVar, e0.g<Bitmap> gVar) {
        this.f4499a = dVar;
        this.f4500b = gVar;
    }

    @Override // e0.g
    @NonNull
    public EncodeStrategy b(@NonNull e0.e eVar) {
        return this.f4500b.b(eVar);
    }

    @Override // e0.a
    /* renamed from: c */
    public boolean a(@NonNull com.bumptech.glide.load.engine.u<BitmapDrawable> uVar, @NonNull File file, @NonNull e0.e eVar) {
        return this.f4500b.a(new e(uVar.get().getBitmap(), this.f4499a), file, eVar);
    }
}
