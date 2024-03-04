package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.EncodeStrategy;
/* loaded from: classes.dex */
public class c implements e0.g<Bitmap> {

    /* renamed from: b  reason: collision with root package name */
    public static final e0.d<Integer> f4502b = e0.d.f("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: c  reason: collision with root package name */
    public static final e0.d<Bitmap.CompressFormat> f4503c = e0.d.e("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final g0.b f4504a;

    public c(@NonNull g0.b bVar) {
        this.f4504a = bVar;
    }

    private Bitmap.CompressFormat d(Bitmap bitmap, e0.e eVar) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) eVar.a(f4503c);
        if (compressFormat != null) {
            return compressFormat;
        }
        if (bitmap.hasAlpha()) {
            return Bitmap.CompressFormat.PNG;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    @Override // e0.g
    @NonNull
    public EncodeStrategy b(@NonNull e0.e eVar) {
        return EncodeStrategy.TRANSFORMED;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
        if (r6 != null) goto L14;
     */
    @Override // e0.a
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(@androidx.annotation.NonNull com.bumptech.glide.load.engine.u<android.graphics.Bitmap> r9, @androidx.annotation.NonNull java.io.File r10, @androidx.annotation.NonNull e0.e r11) {
        /*
            r8 = this;
            java.lang.String r0 = "BitmapEncoder"
            java.lang.Object r9 = r9.get()
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            android.graphics.Bitmap$CompressFormat r1 = r8.d(r9, r11)
            int r2 = r9.getWidth()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            int r3 = r9.getHeight()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.String r4 = "encode: [%dx%d] %s"
            w0.b.d(r4, r2, r3, r1)
            long r2 = v0.f.b()     // Catch: java.lang.Throwable -> Lc0
            e0.d<java.lang.Integer> r4 = com.bumptech.glide.load.resource.bitmap.c.f4502b     // Catch: java.lang.Throwable -> Lc0
            java.lang.Object r4 = r11.a(r4)     // Catch: java.lang.Throwable -> Lc0
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.Throwable -> Lc0
            int r4 = r4.intValue()     // Catch: java.lang.Throwable -> Lc0
            r5 = 0
            r6 = 0
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L59
            r7.<init>(r10)     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L59
            g0.b r10 = r8.f4504a     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L54
            if (r10 == 0) goto L45
            com.bumptech.glide.load.data.c r10 = new com.bumptech.glide.load.data.c     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L54
            g0.b r6 = r8.f4504a     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L54
            r10.<init>(r7, r6)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L54
            r6 = r10
            goto L46
        L45:
            r6 = r7
        L46:
            r9.compress(r1, r4, r6)     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L59
            r6.close()     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L59
            r5 = 1
        L4d:
            r6.close()     // Catch: java.io.IOException -> L69 java.lang.Throwable -> Lc0
            goto L69
        L51:
            r9 = move-exception
            r6 = r7
            goto Lba
        L54:
            r10 = move-exception
            r6 = r7
            goto L5a
        L57:
            r9 = move-exception
            goto Lba
        L59:
            r10 = move-exception
        L5a:
            r4 = 3
            boolean r4 = android.util.Log.isLoggable(r0, r4)     // Catch: java.lang.Throwable -> L57
            if (r4 == 0) goto L66
            java.lang.String r4 = "Failed to encode Bitmap"
            android.util.Log.d(r0, r4, r10)     // Catch: java.lang.Throwable -> L57
        L66:
            if (r6 == 0) goto L69
            goto L4d
        L69:
            r10 = 2
            boolean r10 = android.util.Log.isLoggable(r0, r10)     // Catch: java.lang.Throwable -> Lc0
            if (r10 == 0) goto Lb6
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc0
            r10.<init>()     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r4 = "Compressed with type: "
            r10.append(r4)     // Catch: java.lang.Throwable -> Lc0
            r10.append(r1)     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r1 = " of size "
            r10.append(r1)     // Catch: java.lang.Throwable -> Lc0
            int r1 = v0.k.h(r9)     // Catch: java.lang.Throwable -> Lc0
            r10.append(r1)     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r1 = " in "
            r10.append(r1)     // Catch: java.lang.Throwable -> Lc0
            double r1 = v0.f.a(r2)     // Catch: java.lang.Throwable -> Lc0
            r10.append(r1)     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r1 = ", options format: "
            r10.append(r1)     // Catch: java.lang.Throwable -> Lc0
            e0.d<android.graphics.Bitmap$CompressFormat> r1 = com.bumptech.glide.load.resource.bitmap.c.f4503c     // Catch: java.lang.Throwable -> Lc0
            java.lang.Object r11 = r11.a(r1)     // Catch: java.lang.Throwable -> Lc0
            r10.append(r11)     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r11 = ", hasAlpha: "
            r10.append(r11)     // Catch: java.lang.Throwable -> Lc0
            boolean r9 = r9.hasAlpha()     // Catch: java.lang.Throwable -> Lc0
            r10.append(r9)     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r9 = r10.toString()     // Catch: java.lang.Throwable -> Lc0
            android.util.Log.v(r0, r9)     // Catch: java.lang.Throwable -> Lc0
        Lb6:
            w0.b.e()
            return r5
        Lba:
            if (r6 == 0) goto Lbf
            r6.close()     // Catch: java.io.IOException -> Lbf java.lang.Throwable -> Lc0
        Lbf:
            throw r9     // Catch: java.lang.Throwable -> Lc0
        Lc0:
            r9 = move-exception
            w0.b.e()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.c.a(com.bumptech.glide.load.engine.u, java.io.File, e0.e):boolean");
    }
}
