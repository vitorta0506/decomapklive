package com.bumptech.glide.load.resource.gif;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class d extends m0.c<GifDrawable> {
    public d(GifDrawable gifDrawable) {
        super(gifDrawable);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<GifDrawable> a() {
        return GifDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return ((GifDrawable) this.f54407a).i();
    }

    @Override // m0.c, com.bumptech.glide.load.engine.q
    public void initialize() {
        ((GifDrawable) this.f54407a).e().prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
        ((GifDrawable) this.f54407a).stop();
        ((GifDrawable) this.f54407a).k();
    }
}
