package com.twitter.sdk.android.core.identity;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.facebook.AccessToken;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.identity.f;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import com.twitter.sdk.android.core.l;
/* loaded from: classes4.dex */
class c implements f.a {

    /* renamed from: a  reason: collision with root package name */
    final InterfaceC0357c f35135a;

    /* renamed from: b  reason: collision with root package name */
    TwitterAuthToken f35136b;

    /* renamed from: c  reason: collision with root package name */
    private final ProgressBar f35137c;

    /* renamed from: d  reason: collision with root package name */
    private final WebView f35138d;

    /* renamed from: e  reason: collision with root package name */
    private final TwitterAuthConfig f35139e;

    /* renamed from: f  reason: collision with root package name */
    private final OAuth1aService f35140f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends com.twitter.sdk.android.core.b<OAuthResponse> {
        a() {
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Failed to get request token", twitterException);
            c.this.h(1, new TwitterAuthException("Failed to get request token"));
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<OAuthResponse> iVar) {
            c cVar = c.this;
            cVar.f35136b = iVar.f35121a.authToken;
            String i9 = cVar.f35140f.i(c.this.f35136b);
            l.g().d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Redirecting user to web view to complete authorization flow");
            c cVar2 = c.this;
            cVar2.m(cVar2.f35138d, new f(c.this.f35140f.g(c.this.f35139e), c.this), i9, new e());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends com.twitter.sdk.android.core.b<OAuthResponse> {
        b() {
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Failed to get access token", twitterException);
            c.this.h(1, new TwitterAuthException("Failed to get access token"));
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<OAuthResponse> iVar) {
            Intent intent = new Intent();
            OAuthResponse oAuthResponse = iVar.f35121a;
            intent.putExtra("screen_name", oAuthResponse.userName);
            intent.putExtra(AccessToken.USER_ID_KEY, oAuthResponse.userId);
            intent.putExtra("tk", oAuthResponse.authToken.token);
            intent.putExtra(TimeDisplaySetting.TIME_DISPLAY_SETTING, oAuthResponse.authToken.secret);
            c.this.f35135a.a(-1, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.core.identity.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0357c {
        void a(int i9, Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(ProgressBar progressBar, WebView webView, TwitterAuthConfig twitterAuthConfig, OAuth1aService oAuth1aService, InterfaceC0357c interfaceC0357c) {
        this.f35137c = progressBar;
        this.f35138d = webView;
        this.f35139e = twitterAuthConfig;
        this.f35140f = oAuth1aService;
        this.f35135a = interfaceC0357c;
    }

    private void f() {
        this.f35137c.setVisibility(8);
    }

    private void g() {
        this.f35138d.stopLoading();
        f();
    }

    private void i(i iVar) {
        l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "OAuth web view completed with an error", iVar);
        h(1, new TwitterAuthException("OAuth web view completed with an error"));
    }

    private void j(Bundle bundle) {
        String string;
        l.g().d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "OAuth web view completed successfully");
        if (bundle != null && (string = bundle.getString("oauth_verifier")) != null) {
            l.g().d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Converting the request token to an access token.");
            this.f35140f.m(k(), this.f35136b, string);
            return;
        }
        com.twitter.sdk.android.core.g g10 = l.g();
        g10.e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Failed to get authorization, bundle incomplete " + bundle, null);
        h(1, new TwitterAuthException("Failed to get authorization, bundle incomplete"));
    }

    @Override // com.twitter.sdk.android.core.identity.f.a
    public void a(i iVar) {
        i(iVar);
        g();
    }

    @Override // com.twitter.sdk.android.core.identity.f.a
    public void b(Bundle bundle) {
        j(bundle);
        g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h(int i9, TwitterAuthException twitterAuthException) {
        Intent intent = new Intent();
        intent.putExtra("auth_error", twitterAuthException);
        this.f35135a.a(i9, intent);
    }

    com.twitter.sdk.android.core.b<OAuthResponse> k() {
        return new b();
    }

    com.twitter.sdk.android.core.b<OAuthResponse> l() {
        return new a();
    }

    void m(WebView webView, WebViewClient webViewClient, String str, WebChromeClient webChromeClient) {
        WebSettings settings = webView.getSettings();
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(false);
        settings.setSaveFormData(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setWebViewClient(webViewClient);
        webView.loadUrl(str);
        webView.setVisibility(4);
        webView.setWebChromeClient(webChromeClient);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        l.g().d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Obtaining request token to start the sign in flow");
        this.f35140f.n(l());
    }

    @Override // com.twitter.sdk.android.core.identity.f.a
    public void onPageFinished(WebView webView, String str) {
        f();
        webView.setVisibility(0);
    }
}
