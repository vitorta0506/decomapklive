package com.squareup.picasso;

import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import com.facebook.share.internal.ShareInternalUtility;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.u;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class j extends g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Context context) {
        super(context);
    }

    static int k(Uri uri) throws IOException {
        int attributeInt = new ExifInterface(uri.getPath()).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
        if (attributeInt != 3) {
            if (attributeInt != 6) {
                return attributeInt != 8 ? 0 : 270;
            }
            return 90;
        }
        return 180;
    }

    @Override // com.squareup.picasso.g, com.squareup.picasso.u
    public boolean c(s sVar) {
        return ShareInternalUtility.STAGING_PARAM.equals(sVar.f29997d.getScheme());
    }

    @Override // com.squareup.picasso.g, com.squareup.picasso.u
    public u.a f(s sVar, int i9) throws IOException {
        return new u.a(null, j(sVar), Picasso.LoadedFrom.DISK, k(sVar.f29997d));
    }
}
