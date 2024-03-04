package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
import t3.m;
@KeepName
/* loaded from: classes2.dex */
public class SignInHubActivity extends FragmentActivity {

    /* renamed from: f */
    private static boolean f7383f = false;

    /* renamed from: a */
    private boolean f7384a = false;

    /* renamed from: b */
    private SignInConfiguration f7385b;

    /* renamed from: c */
    private boolean f7386c;

    /* renamed from: d */
    private int f7387d;

    /* renamed from: e */
    private Intent f7388e;

    private final void e0() {
        getSupportLoaderManager().initLoader(0, null, new b(this, null));
        f7383f = false;
    }

    private final void g0(int i9) {
        Status status = new Status(i9);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f7383f = false;
    }

    private final void i0(String str) {
        Intent intent = new Intent(str);
        if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
            intent.setPackage("com.google.android.gms");
        } else {
            intent.setPackage(getPackageName());
        }
        intent.putExtra("config", this.f7385b);
        try {
            startActivityForResult(intent, 40962);
        } catch (ActivityNotFoundException unused) {
            this.f7384a = true;
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            g0(17);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        if (this.f7384a) {
            return;
        }
        setResult(0);
        if (i9 != 40962) {
            return;
        }
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
            if (signInAccount != null && signInAccount.I() != null) {
                GoogleSignInAccount I = signInAccount.I();
                m a10 = m.a(this);
                GoogleSignInOptions I2 = this.f7385b.I();
                Objects.requireNonNull(I);
                a10.c(I2, I);
                intent.removeExtra("signInAccount");
                intent.putExtra("googleSignInAccount", I);
                this.f7386c = true;
                this.f7387d = i10;
                this.f7388e = intent;
                e0();
                return;
            } else if (intent.hasExtra("errorCode")) {
                int intExtra = intent.getIntExtra("errorCode", 8);
                if (intExtra == 13) {
                    intExtra = 12501;
                }
                g0(intExtra);
                return;
            }
        }
        g0(8);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        Objects.requireNonNull(action);
        if ("com.google.android.gms.auth.NO_IMPL".equals(action)) {
            g0(12500);
        } else if (!action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            Log.e("AuthSignInClient", "Unknown action: ".concat(String.valueOf(intent.getAction())));
            finish();
        } else {
            Bundle bundleExtra = intent.getBundleExtra("config");
            Objects.requireNonNull(bundleExtra);
            SignInConfiguration signInConfiguration = (SignInConfiguration) bundleExtra.getParcelable("config");
            if (signInConfiguration == null) {
                Log.e("AuthSignInClient", "Activity started with invalid configuration.");
                setResult(0);
                finish();
                return;
            }
            this.f7385b = signInConfiguration;
            if (bundle == null) {
                if (f7383f) {
                    setResult(0);
                    g0(12502);
                    return;
                }
                f7383f = true;
                i0(action);
                return;
            }
            boolean z10 = bundle.getBoolean("signingInGoogleApiClients");
            this.f7386c = z10;
            if (z10) {
                this.f7387d = bundle.getInt("signInResultCode");
                Intent intent2 = (Intent) bundle.getParcelable("signInResultData");
                Objects.requireNonNull(intent2);
                this.f7388e = intent2;
                e0();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        f7383f = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f7386c);
        if (this.f7386c) {
            bundle.putInt("signInResultCode", this.f7387d);
            bundle.putParcelable("signInResultData", this.f7388e);
        }
    }
}
