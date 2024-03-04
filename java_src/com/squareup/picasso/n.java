package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import com.facebook.share.internal.ShareConstants;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.u;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class n extends g {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f29973b = {AdUnitActivity.EXTRA_ORIENTATION};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum a {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);
        

        /* renamed from: a  reason: collision with root package name */
        final int f29978a;

        /* renamed from: b  reason: collision with root package name */
        final int f29979b;

        /* renamed from: c  reason: collision with root package name */
        final int f29980c;

        a(int i9, int i10, int i11) {
            this.f29978a = i9;
            this.f29979b = i10;
            this.f29980c = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Context context) {
        super(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
        r1.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int k(android.content.ContentResolver r8, android.net.Uri r9) {
        /*
            r0 = 0
            r1 = 0
            java.lang.String[] r4 = com.squareup.picasso.n.f29973b     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L2b
            r5 = 0
            r6 = 0
            r7 = 0
            r2 = r8
            r3 = r9
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L2b
            if (r1 == 0) goto L1e
            boolean r8 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L2b
            if (r8 != 0) goto L16
            goto L1e
        L16:
            int r8 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L2b
            r1.close()
            return r8
        L1e:
            if (r1 == 0) goto L23
            r1.close()
        L23:
            return r0
        L24:
            r8 = move-exception
            if (r1 == 0) goto L2a
            r1.close()
        L2a:
            throw r8
        L2b:
            if (r1 == 0) goto L31
            r1.close()
        L31:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.n.k(android.content.ContentResolver, android.net.Uri):int");
    }

    static a l(int i9, int i10) {
        a aVar = a.MICRO;
        if (i9 > aVar.f29979b || i10 > aVar.f29980c) {
            a aVar2 = a.MINI;
            return (i9 > aVar2.f29979b || i10 > aVar2.f29980c) ? a.FULL : aVar2;
        }
        return aVar;
    }

    @Override // com.squareup.picasso.g, com.squareup.picasso.u
    public boolean c(s sVar) {
        Uri uri = sVar.f29997d;
        return "content".equals(uri.getScheme()) && ShareConstants.WEB_DIALOG_PARAM_MEDIA.equals(uri.getAuthority());
    }

    @Override // com.squareup.picasso.g, com.squareup.picasso.u
    public u.a f(s sVar, int i9) throws IOException {
        Bitmap thumbnail;
        ContentResolver contentResolver = this.f29936a.getContentResolver();
        int k10 = k(contentResolver, sVar.f29997d);
        String type = contentResolver.getType(sVar.f29997d);
        boolean z10 = type != null && type.startsWith("video/");
        if (sVar.c()) {
            a l10 = l(sVar.f30001h, sVar.f30002i);
            if (!z10 && l10 == a.FULL) {
                return new u.a(null, j(sVar), Picasso.LoadedFrom.DISK, k10);
            }
            long parseId = ContentUris.parseId(sVar.f29997d);
            BitmapFactory.Options d10 = u.d(sVar);
            d10.inJustDecodeBounds = true;
            u.a(sVar.f30001h, sVar.f30002i, l10.f29979b, l10.f29980c, d10, sVar);
            if (z10) {
                thumbnail = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, parseId, l10 == a.FULL ? 1 : l10.f29978a, d10);
            } else {
                thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, parseId, l10.f29978a, d10);
            }
            if (thumbnail != null) {
                return new u.a(thumbnail, null, Picasso.LoadedFrom.DISK, k10);
            }
        }
        return new u.a(null, j(sVar), Picasso.LoadedFrom.DISK, k10);
    }
}
