package com.squareup.picasso;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.facebook.share.internal.ShareInternalUtility;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.u;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class b extends u {

    /* renamed from: b  reason: collision with root package name */
    private static final int f29899b = 22;

    /* renamed from: a  reason: collision with root package name */
    private final AssetManager f29900a;

    public b(Context context) {
        this.f29900a = context.getAssets();
    }

    static String j(s sVar) {
        return sVar.f29997d.toString().substring(f29899b);
    }

    @Override // com.squareup.picasso.u
    public boolean c(s sVar) {
        Uri uri = sVar.f29997d;
        return ShareInternalUtility.STAGING_PARAM.equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // com.squareup.picasso.u
    public u.a f(s sVar, int i9) throws IOException {
        return new u.a(this.f29900a.open(j(sVar)), Picasso.LoadedFrom.DISK);
    }
}
