package com.linecorp.linesdk.auth.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.linecorp.linesdk.R$layout;
import com.linecorp.linesdk.auth.LineAuthenticationConfig;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.auth.LineLoginResult;
import com.linecorp.linesdk.auth.internal.LineAuthenticationStatus;
/* loaded from: classes4.dex */
public class LineAuthenticationActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private boolean f28079a = false;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private LineAuthenticationStatus f28080b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private c f28081c;

    @NonNull
    private LineAuthenticationStatus a(@Nullable Bundle bundle) {
        if (bundle == null) {
            return new LineAuthenticationStatus();
        }
        LineAuthenticationStatus lineAuthenticationStatus = (LineAuthenticationStatus) bundle.getParcelable("authentication_status");
        return lineAuthenticationStatus == null ? new LineAuthenticationStatus() : lineAuthenticationStatus;
    }

    @NonNull
    public static Intent b(@NonNull Context context, @NonNull LineAuthenticationConfig lineAuthenticationConfig, @NonNull LineAuthenticationParams lineAuthenticationParams) {
        Intent intent = new Intent(context, LineAuthenticationActivity.class);
        intent.putExtra("authentication_config", lineAuthenticationConfig);
        intent.putExtra("authentication_params", lineAuthenticationParams);
        return intent;
    }

    @NonNull
    public static LineLoginResult c(@NonNull Intent intent) {
        LineLoginResult lineLoginResult = (LineLoginResult) intent.getParcelableExtra("authentication_result");
        return lineLoginResult == null ? LineLoginResult.m("Authentication result is not found.") : lineLoginResult;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public void d(@NonNull LineLoginResult lineLoginResult) {
        LineAuthenticationStatus lineAuthenticationStatus = this.f28080b;
        if (lineAuthenticationStatus == null) {
            finish();
        } else if ((lineAuthenticationStatus.h() != LineAuthenticationStatus.b.STARTED || this.f28079a) && this.f28080b.h() != LineAuthenticationStatus.b.INTENT_HANDLED) {
        } else {
            Intent intent = new Intent();
            intent.putExtra("authentication_result", lineLoginResult);
            setResult(-1, intent);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (this.f28080b.h() == LineAuthenticationStatus.b.STARTED) {
            this.f28081c.l(i9, i10, intent);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.linesdk_activity_lineauthentication);
        Intent intent = getIntent();
        Uri data = intent.getData();
        if (data != null && data.getScheme().equals("lineauth")) {
            c.m(intent);
            finish();
            return;
        }
        LineAuthenticationConfig lineAuthenticationConfig = (LineAuthenticationConfig) intent.getParcelableExtra("authentication_config");
        LineAuthenticationParams lineAuthenticationParams = (LineAuthenticationParams) intent.getParcelableExtra("authentication_params");
        if (lineAuthenticationConfig != null && lineAuthenticationParams != null) {
            LineAuthenticationStatus a10 = a(bundle);
            this.f28080b = a10;
            this.f28081c = new c(this, lineAuthenticationConfig, a10, lineAuthenticationParams);
            return;
        }
        d(LineLoginResult.m("The requested parameter is illegal."));
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.f28080b.h() == LineAuthenticationStatus.b.STARTED) {
            this.f28081c.k(intent);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f28080b.h() == LineAuthenticationStatus.b.INIT) {
            this.f28081c.n();
        } else if (this.f28080b.h() != LineAuthenticationStatus.b.INTENT_RECEIVED) {
            this.f28081c.j();
        }
        this.f28079a = false;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("authentication_status", this.f28080b);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.f28079a = true;
    }
}
