package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.R$id;
import com.twitter.sdk.android.core.R$layout;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.identity.c;
import com.twitter.sdk.android.core.internal.j;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.q;
/* loaded from: classes4.dex */
public class OAuthActivity extends Activity implements c.InterfaceC0357c {

    /* renamed from: a  reason: collision with root package name */
    c f35123a;

    /* renamed from: b  reason: collision with root package name */
    private ProgressBar f35124b;

    /* renamed from: c  reason: collision with root package name */
    private WebView f35125c;

    @Override // com.twitter.sdk.android.core.identity.c.InterfaceC0357c
    public void a(int i9, Intent intent) {
        setResult(i9, intent);
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f35123a.h(0, new TwitterAuthException("Authorization failed, request was canceled."));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.tw__activity_oauth);
        this.f35124b = (ProgressBar) findViewById(R$id.tw__spinner);
        this.f35125c = (WebView) findViewById(R$id.tw__web_view);
        this.f35124b.setVisibility(bundle != null ? bundle.getBoolean("progress", false) : true ? 0 : 8);
        c cVar = new c(this.f35124b, this.f35125c, (TwitterAuthConfig) getIntent().getParcelableExtra("auth_config"), new OAuth1aService(q.k(), new j()), this);
        this.f35123a = cVar;
        cVar.n();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (this.f35124b.getVisibility() == 0) {
            bundle.putBoolean("progress", true);
        }
        super.onSaveInstanceState(bundle);
    }
}
