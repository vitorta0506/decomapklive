package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.Registry;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.integration.okhttp3.b;
import j0.g;
import java.io.InputStream;
@Deprecated
/* loaded from: classes.dex */
public class OkHttpGlideModule implements q0.b {
    @Override // q0.b
    public void a(@NonNull Context context, @NonNull d dVar) {
    }

    @Override // q0.b
    public void b(Context context, c cVar, Registry registry) {
        registry.r(g.class, InputStream.class, new b.a());
    }
}
