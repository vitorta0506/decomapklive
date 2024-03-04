package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
/* loaded from: classes2.dex */
public final class r5 {
    public static Uri a(Uri uri, String str) {
        Uri.Builder buildUpon = uri.buildUpon();
        String valueOf = String.valueOf(uri.getPath());
        return buildUpon.path(str.length() != 0 ? valueOf.concat(str) : new String(valueOf)).build();
    }
}
