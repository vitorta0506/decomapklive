package com.twitter.sdk.android.core.identity;

import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes4.dex */
class f extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private final String f35143a;

    /* renamed from: b  reason: collision with root package name */
    private final a f35144b;

    /* loaded from: classes4.dex */
    interface a {
        void a(i iVar);

        void b(Bundle bundle);

        void onPageFinished(WebView webView, String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, a aVar) {
        this.f35143a = str;
        this.f35144b = aVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f35144b.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i9, String str, String str2) {
        super.onReceivedError(webView, i9, str, str2);
        this.f35144b.a(new i(i9, str, str2));
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        this.f35144b.a(new i(sslError.getPrimaryError(), null, null));
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.f35143a)) {
            TreeMap<String, String> b10 = ve.f.b(URI.create(str), false);
            Bundle bundle = new Bundle(b10.size());
            for (Map.Entry<String, String> entry : b10.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue());
            }
            this.f35144b.b(bundle);
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
