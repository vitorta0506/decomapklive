package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
/* loaded from: classes2.dex */
public final class a3 {

    /* renamed from: a  reason: collision with root package name */
    private static final a3 f8484a = new a3();

    private a3() {
    }

    public static final File a(Uri uri) throws zzeu {
        if (uri.getScheme().equals(ShareInternalUtility.STAGING_PARAM)) {
            if (TextUtils.isEmpty(uri.getQuery())) {
                if (TextUtils.isEmpty(uri.getAuthority())) {
                    return new File(uri.getPath());
                }
                throw new zzeu("Did not expect uri to have authority");
            }
            throw new zzeu("Did not expect uri to have query");
        }
        throw new zzeu("Scheme must be 'file'");
    }
}
