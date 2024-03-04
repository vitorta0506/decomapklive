package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import t0.c;
/* loaded from: classes.dex */
public final class g extends com.bumptech.glide.i<g, Bitmap> {
    @NonNull
    public static g i() {
        return new g().f();
    }

    @NonNull
    public g f() {
        return g(new c.a());
    }

    @NonNull
    public g g(@NonNull c.a aVar) {
        return h(aVar.a());
    }

    @NonNull
    public g h(@NonNull t0.g<Drawable> gVar) {
        return e(new t0.b(gVar));
    }
}
