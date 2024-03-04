package com.image.glide;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.Registry;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.integration.okhttp3.b;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import ic.e;
import j0.g;
import java.io.InputStream;
import okhttp3.OkHttpClient;
import q0.a;
/* loaded from: classes4.dex */
public class FaceCastGlideModule extends a {
    @Override // q0.c
    public void a(@NonNull Context context, @NonNull c cVar, @NonNull Registry registry) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.addInterceptor(new e());
        registry.r(g.class, InputStream.class, new b.a(builder.build()));
    }

    @Override // q0.a
    public void b(@NonNull Context context, @NonNull d dVar) {
        dVar.b(new h0.d(FilePathProvider.getGlideCacheDirV2(context), 83886080L));
    }
}
