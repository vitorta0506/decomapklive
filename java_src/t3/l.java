package t3;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final z3.a f58019a = new z3.a("GoogleSignInCommon", new String[0]);

    public static Intent a(Context context, GoogleSignInOptions googleSignInOptions) {
        f58019a.a("getFallbackSignInIntent()", new Object[0]);
        Intent c10 = c(context, googleSignInOptions);
        c10.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
        return c10;
    }

    public static Intent b(Context context, GoogleSignInOptions googleSignInOptions) {
        f58019a.a("getNoImplementationSignInIntent()", new Object[0]);
        Intent c10 = c(context, googleSignInOptions);
        c10.setAction("com.google.android.gms.auth.NO_IMPL");
        return c10;
    }

    public static Intent c(Context context, GoogleSignInOptions googleSignInOptions) {
        f58019a.a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    @Nullable
    public static s3.b d(@Nullable Intent intent) {
        if (intent == null) {
            return new s3.b(null, Status.RESULT_INTERNAL_ERROR);
        }
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        if (googleSignInAccount == null) {
            if (status == null) {
                status = Status.RESULT_INTERNAL_ERROR;
            }
            return new s3.b(null, status);
        }
        return new s3.b(googleSignInAccount, Status.RESULT_SUCCESS);
    }

    public static com.google.android.gms.common.api.f e(com.google.android.gms.common.api.d dVar, Context context, boolean z10) {
        f58019a.a("Revoking access", new Object[0]);
        String e10 = b.b(context).e();
        g(context);
        if (z10) {
            return d.b(e10);
        }
        return dVar.a(new j(dVar));
    }

    public static com.google.android.gms.common.api.f f(com.google.android.gms.common.api.d dVar, Context context, boolean z10) {
        f58019a.a("Signing out", new Object[0]);
        g(context);
        if (z10) {
            return com.google.android.gms.common.api.g.b(Status.RESULT_SUCCESS, dVar);
        }
        return dVar.a(new h(dVar));
    }

    private static void g(Context context) {
        m.a(context).b();
        for (com.google.android.gms.common.api.d dVar : com.google.android.gms.common.api.d.b()) {
            dVar.e();
        }
        com.google.android.gms.common.api.internal.c.a();
    }
}
