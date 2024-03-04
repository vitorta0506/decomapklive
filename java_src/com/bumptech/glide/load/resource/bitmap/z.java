package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.m;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class z implements e0.f<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final m f4575a;

    /* renamed from: b  reason: collision with root package name */
    private final g0.b f4576b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a implements m.b {

        /* renamed from: a  reason: collision with root package name */
        private final w f4577a;

        /* renamed from: b  reason: collision with root package name */
        private final v0.c f4578b;

        a(w wVar, v0.c cVar) {
            this.f4577a = wVar;
            this.f4578b = cVar;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.m.b
        public void a(g0.d dVar, Bitmap bitmap) throws IOException {
            IOException a10 = this.f4578b.a();
            if (a10 != null) {
                if (bitmap != null) {
                    dVar.c(bitmap);
                }
                throw a10;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.m.b
        public void b() {
            this.f4577a.c();
        }
    }

    public z(m mVar, g0.b bVar) {
        this.f4575a = mVar;
        this.f4576b = bVar;
    }

    @Override // e0.f
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull InputStream inputStream, int i9, int i10, @NonNull e0.e eVar) throws IOException {
        w wVar;
        boolean z10;
        if (inputStream instanceof w) {
            wVar = (w) inputStream;
            z10 = false;
        } else {
            wVar = new w(inputStream, this.f4576b);
            z10 = true;
        }
        v0.c b10 = v0.c.b(wVar);
        try {
            return this.f4575a.f(new v0.h(b10), i9, i10, eVar, new a(wVar, b10));
        } finally {
            b10.c();
            if (z10) {
                wVar.e();
            }
        }
    }

    @Override // e0.f
    /* renamed from: d */
    public boolean a(@NonNull InputStream inputStream, @NonNull e0.e eVar) {
        return this.f4575a.p(inputStream);
    }
}
