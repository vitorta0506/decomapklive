package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.Registry;
import com.bumptech.glide.integration.okhttp3.b;
import j0.g;
import java.io.InputStream;
import q0.c;
/* loaded from: classes.dex */
public final class a extends c {
    @Override // q0.c
    public void a(@NonNull Context context, @NonNull com.bumptech.glide.c cVar, @NonNull Registry registry) {
        registry.r(g.class, InputStream.class, new b.a());
    }
}
