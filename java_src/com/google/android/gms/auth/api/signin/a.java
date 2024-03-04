package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.p;
import t3.l;
import t4.j;
/* loaded from: classes2.dex */
public final class a {
    @NonNull
    public static b a(@NonNull Activity activity, @NonNull GoogleSignInOptions googleSignInOptions) {
        return new b(activity, (GoogleSignInOptions) p.j(googleSignInOptions));
    }

    @NonNull
    public static b b(@NonNull Context context, @NonNull GoogleSignInOptions googleSignInOptions) {
        return new b(context, (GoogleSignInOptions) p.j(googleSignInOptions));
    }

    @NonNull
    public static t4.g<GoogleSignInAccount> c(@Nullable Intent intent) {
        s3.b d10 = l.d(intent);
        GoogleSignInAccount a10 = d10.a();
        if (d10.getStatus().R() && a10 != null) {
            return j.e(a10);
        }
        return j.d(com.google.android.gms.common.internal.b.a(d10.getStatus()));
    }
}
