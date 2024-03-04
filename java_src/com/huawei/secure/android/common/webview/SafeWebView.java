package com.huawei.secure.android.common.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SafeBrowsingResponse;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.huawei.secure.android.common.webview.WebViewLoadCallBack;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes4.dex */
public class SafeWebView extends WebView {

    /* renamed from: a  reason: collision with root package name */
    private String f27901a;

    /* renamed from: b  reason: collision with root package name */
    private String[] f27902b;

    /* renamed from: c  reason: collision with root package name */
    private String[] f27903c;

    /* renamed from: d  reason: collision with root package name */
    private String[] f27904d;

    /* renamed from: e  reason: collision with root package name */
    private WebViewLoadCallBack f27905e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class b extends WebViewClient {

        /* renamed from: a  reason: collision with root package name */
        private WebViewClient f27906a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f27907b;

        @Override // android.webkit.WebViewClient
        public void doUpdateVisitedHistory(WebView webView, String str, boolean z10) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.doUpdateVisitedHistory(webView, str, z10);
            } else {
                super.doUpdateVisitedHistory(webView, str, z10);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onFormResubmission(WebView webView, Message message, Message message2) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onFormResubmission(webView, message, message2);
            } else {
                super.onFormResubmission(webView, message, message2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onLoadResource(webView, str);
            } else {
                super.onLoadResource(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageCommitVisible(WebView webView, String str) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onPageCommitVisible(webView, str);
            } else {
                super.onPageCommitVisible(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onPageFinished(webView, str);
            } else {
                super.onPageFinished(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null && !this.f27907b) {
                webViewClient.onPageStarted(webView, str, bitmap);
            } else if (!SafeWebView.this.c(str)) {
                SafeWebView.this.d(webView, str);
            } else {
                super.onPageStarted(webView, str, bitmap);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
            } else {
                super.onReceivedClientCertRequest(webView, clientCertRequest);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i9, String str, String str2) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onReceivedError(webView, i9, str, str2);
            } else {
                super.onReceivedError(webView, i9, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            } else {
                super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            } else {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
            } else {
                super.onReceivedLoginRequest(webView, str, str2, str3);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
            } else {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                return webViewClient.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        @Override // android.webkit.WebViewClient
        public void onSafeBrowsingHit(WebView webView, WebResourceRequest webResourceRequest, int i9, SafeBrowsingResponse safeBrowsingResponse) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onSafeBrowsingHit(webView, webResourceRequest, i9, safeBrowsingResponse);
            } else {
                super.onSafeBrowsingHit(webView, webResourceRequest, i9, safeBrowsingResponse);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onScaleChanged(WebView webView, float f10, float f11) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onScaleChanged(webView, f10, f11);
            } else {
                super.onScaleChanged(webView, f10, f11);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onTooManyRedirects(WebView webView, Message message, Message message2) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onTooManyRedirects(webView, message, message2);
            } else {
                super.onTooManyRedirects(webView, message, message2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onUnhandledKeyEvent(webView, keyEvent);
            } else {
                super.onUnhandledKeyEvent(webView, keyEvent);
            }
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                return webViewClient.shouldInterceptRequest(webView, webResourceRequest);
            }
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                return webViewClient.shouldOverrideKeyEvent(webView, keyEvent);
            }
            return super.shouldOverrideKeyEvent(webView, keyEvent);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                return webViewClient.shouldOverrideUrlLoading(webView, str);
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }

        private b(WebViewClient webViewClient, boolean z10) {
            this.f27906a = webViewClient;
            this.f27907b = z10;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
            } else {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                return webViewClient.shouldInterceptRequest(webView, str);
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebViewClient webViewClient = this.f27906a;
            if (webViewClient != null) {
                return webViewClient.shouldOverrideUrlLoading(webView, webResourceRequest);
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    public SafeWebView(Context context) {
        super(context);
        a();
    }

    private void a() {
        gc.a.f(this);
        setWebViewClient(null);
    }

    private boolean b(String str) {
        return URLUtil.isHttpUrl(str);
    }

    public boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            fc.b.d("SafeWebView", "url is null");
            return false;
        } else if (URLUtil.isNetworkUrl(str)) {
            String[] whitelistWithPath = getWhitelistWithPath();
            String[] whitelistNotMatchSubDomain = getWhitelistNotMatchSubDomain();
            String[] whitelist = getWhitelist();
            if (whitelistWithPath != null && whitelistWithPath.length != 0) {
                return gc.b.c(str, whitelistWithPath);
            }
            if (whitelistNotMatchSubDomain != null && whitelistNotMatchSubDomain.length != 0) {
                return gc.b.h(str, whitelistNotMatchSubDomain);
            }
            return gc.b.e(str, whitelist);
        } else {
            return true;
        }
    }

    public final void d(WebView webView, String str) {
        fc.b.e("SafeWebView", "onCheckError url is not in white list ", str);
        webView.stopLoading();
        String defaultErrorPage = getDefaultErrorPage();
        if (!TextUtils.isEmpty(defaultErrorPage)) {
            webView.loadUrl(defaultErrorPage);
        } else if (getWebViewLoadCallBack() != null) {
            Log.e("SafeWebView", "onPageStarted WebViewLoadCallBack");
            getWebViewLoadCallBack().a(str, WebViewLoadCallBack.ErrorCode.URL_NOT_IN_WHITE_LIST);
        }
    }

    public String getDefaultErrorPage() {
        return this.f27901a;
    }

    public WebViewLoadCallBack getWebViewLoadCallBack() {
        return this.f27905e;
    }

    @Deprecated
    public String[] getWhitelist() {
        String[] strArr = this.f27902b;
        if (strArr == null) {
            return null;
        }
        return (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public String[] getWhitelistNotMatchSubDomain() {
        String[] strArr = this.f27903c;
        if (strArr == null) {
            return null;
        }
        return (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    @Deprecated
    public String[] getWhitelistNotMathcSubDomain() {
        String[] strArr = this.f27903c;
        if (strArr == null) {
            return null;
        }
        return (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public String[] getWhitelistWithPath() {
        String[] strArr = this.f27904d;
        if (strArr == null) {
            return null;
        }
        return (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (b(str)) {
            Log.e("SafeWebView", "loadDataWithBaseURL: http url , not safe");
            if (!TextUtils.isEmpty(this.f27901a)) {
                super.loadDataWithBaseURL(this.f27901a, str2, str3, str4, str5);
                return;
            } else if (getWebViewLoadCallBack() != null) {
                Log.e("SafeWebView", "WebViewLoadCallBack");
                getWebViewLoadCallBack().a(str, WebViewLoadCallBack.ErrorCode.HTTP_URL);
                return;
            } else {
                return;
            }
        }
        super.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (b(str)) {
            Log.e("SafeWebView", "loadUrl: http url , not safe");
            if (!TextUtils.isEmpty(this.f27901a)) {
                super.loadUrl(this.f27901a);
                return;
            } else if (getWebViewLoadCallBack() != null) {
                Log.e("SafeWebView", "WebViewLoadCallBack");
                getWebViewLoadCallBack().a(str, WebViewLoadCallBack.ErrorCode.HTTP_URL);
                return;
            } else {
                return;
            }
        }
        super.loadUrl(str);
    }

    @Override // android.webkit.WebView
    public void postUrl(String str, byte[] bArr) {
        if (b(str)) {
            Log.e("SafeWebView", "postUrl: http url , not safe");
            if (!TextUtils.isEmpty(this.f27901a)) {
                super.postUrl(this.f27901a, bArr);
                return;
            } else if (getWebViewLoadCallBack() != null) {
                Log.e("SafeWebView", "WebViewLoadCallBack");
                getWebViewLoadCallBack().a(str, WebViewLoadCallBack.ErrorCode.HTTP_URL);
                return;
            } else {
                return;
            }
        }
        super.postUrl(str, bArr);
    }

    public void setDefaultErrorPage(String str) {
        this.f27901a = str;
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(new b(webViewClient, true));
    }

    public void setWebViewLoadCallBack(WebViewLoadCallBack webViewLoadCallBack) {
        this.f27905e = webViewLoadCallBack;
    }

    @Deprecated
    public void setWhitelist(String[] strArr) {
        this.f27902b = strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public void setWhitelistNotMatchSubDomain(String[] strArr) {
        this.f27903c = strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    @Deprecated
    public void setWhitelistNotMathcSubDomain(String[] strArr) {
        this.f27903c = strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public void setWhitelistWithPath(String[] strArr) {
        this.f27904d = strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public SafeWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public SafeWebView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a();
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        if (b(str)) {
            Log.e("SafeWebView", "loadUrl: http url , not safe");
            if (!TextUtils.isEmpty(this.f27901a)) {
                super.loadUrl(this.f27901a, map);
                return;
            } else if (getWebViewLoadCallBack() != null) {
                Log.e("SafeWebView", "WebViewLoadCallBack");
                getWebViewLoadCallBack().a(str, WebViewLoadCallBack.ErrorCode.HTTP_URL);
                return;
            } else {
                return;
            }
        }
        super.loadUrl(str, map);
    }
}
