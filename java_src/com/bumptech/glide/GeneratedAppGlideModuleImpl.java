package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.image.glide.FaceCastGlideModule;
import java.util.Collections;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {

    /* renamed from: a  reason: collision with root package name */
    private final FaceCastGlideModule f4128a = new FaceCastGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.image.glide.FaceCastGlideModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule");
        }
    }

    @Override // q0.c
    public void a(@NonNull Context context, @NonNull c cVar, @NonNull Registry registry) {
        new com.bumptech.glide.integration.okhttp3.a().a(context, cVar, registry);
        this.f4128a.a(context, cVar, registry);
    }

    @Override // q0.a
    public void b(@NonNull Context context, @NonNull d dVar) {
        this.f4128a.b(context, dVar);
    }

    @Override // q0.a
    public boolean c() {
        return this.f4128a.c();
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    @NonNull
    public Set<Class<?>> d() {
        return Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bumptech.glide.GeneratedAppGlideModule
    @NonNull
    /* renamed from: f */
    public a e() {
        return new a();
    }
}
