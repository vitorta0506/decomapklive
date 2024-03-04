package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public interface u<Z> {
    @NonNull
    Class<Z> a();

    @NonNull
    Z get();

    int getSize();

    void recycle();
}
