package cn.jpush.android.ui;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.jpush.android.d.d;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import com.facebook.internal.security.CertificateUtil;
import java.util.Locale;
import java.util.PriorityQueue;
import java.util.Queue;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public class a extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private final d f3339a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f3340b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3341c = false;

    /* renamed from: d  reason: collision with root package name */
    private String f3342d = "";

    /* renamed from: f  reason: collision with root package name */
    private boolean f3344f = false;

    /* renamed from: e  reason: collision with root package name */
    private Queue<String> f3343e = new PriorityQueue();

    public a(d dVar, Context context) {
        this.f3339a = dVar;
        this.f3340b = context;
    }

    private void a(String str, int i9, int i10) {
        d dVar;
        String d10;
        try {
            if (!this.f3344f || (dVar = this.f3339a) == null || TextUtils.isEmpty(dVar.f3006bb)) {
                return;
            }
            String str2 = this.f3339a.f3017c;
            if (TextUtils.isEmpty(str2)) {
                d10 = "";
            } else {
                d10 = cn.jpush.android.af.a.d(str2 + i10 + i9);
            }
            if (TextUtils.isEmpty(d10) || this.f3343e.contains(d10)) {
                return;
            }
            this.f3343e.add(d10);
            cn.jpush.android.helper.c.a(str2, i9, String.format(Locale.ENGLISH, "{\"url\":\"%s\", \"err_code\":\"%d\"}", str, Integer.valueOf(i10)), this.f3340b);
        } catch (Throwable unused) {
            Logger.w("JPushWebViewClient", "report code failed");
        }
    }

    private boolean a(String str) {
        boolean z10 = false;
        try {
            Intent parseUri = str.startsWith("android-app://") ? Build.VERSION.SDK_INT >= 22 ? Intent.parseUri(str, 2) : null : Intent.parseUri(str, 1);
            Context context = this.f3340b;
            if (context != null && parseUri != null) {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && packageManager.resolveActivity(parseUri, 0) == null) {
                    Logger.w("JPushWebViewClient", "open deeplink intent can be not resolved, url: " + str);
                    return true;
                }
                parseUri.addCategory("android.intent.category.BROWSABLE");
                if (!str.startsWith("android-app://")) {
                    parseUri.setComponent(null);
                }
                Intent parseUri2 = Intent.parseUri(str, 0);
                parseUri2.setFlags(268435456);
                this.f3340b.startActivity(parseUri2);
                Logger.d("JPushWebViewClient", "h5 open deeplink success, url: " + str);
            }
            z10 = true;
        } catch (Throwable th2) {
            Logger.w("JPushWebViewClient", "[openDeeplink] Bad URI " + str + ": " + th2.getMessage());
        }
        int i9 = TextUtils.isEmpty(this.f3339a.f3006bb) ? 976 : 1214;
        if (!z10) {
            i9 = TextUtils.isEmpty(this.f3339a.f3006bb) ? 977 : 1215;
        }
        cn.jpush.android.helper.c.a(this.f3339a.f3017c, i9, this.f3340b);
        return z10;
    }

    public String a() {
        return this.f3342d;
    }

    public void a(boolean z10) {
        this.f3344f = z10;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f3342d = str;
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        a(str, 1312, 0);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i9, String str, String str2) {
        super.onReceivedError(webView, i9, str, str2);
        a(str2, 1314, i9);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (Build.VERSION.SDK_INT >= 23) {
            a(webResourceRequest.getUrl().toString(), 1314, webResourceError.getErrorCode());
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        a(webResourceRequest.getUrl().toString(), 1314, 101);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        a(sslError.getUrl(), 1314, 102);
        Logger.ww("JPushWebViewClient", "onReceivedSslError stop show:" + webView.getUrl());
        sslErrorHandler.cancel();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        StringBuilder sb2;
        Context context = webView.getContext();
        Logger.i("JPushWebViewClient", "Url vaule is :" + str);
        try {
            webView.getSettings().setSavePassword(false);
            cn.jpush.android.af.a.a(webView);
            String format = String.format(Locale.ENGLISH, "{\"url\":\"%s\"}", str);
            if (str.endsWith(".mp3")) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(Uri.parse(str), "audio/*");
                webView.getContext().startActivity(intent);
                return true;
            }
            if (!str.endsWith(FileUtils.PIC_POSTFIX_MP4) && !str.endsWith(".3gp")) {
                if (str.endsWith(".apk")) {
                    Logger.dd("JPushWebViewClient", "google play not allowed");
                    return true;
                }
                int i9 = 1016;
                if (str.startsWith("http")) {
                    if (!TextUtils.isEmpty(this.f3339a.f3006bb)) {
                        i9 = 1252;
                    }
                    cn.jpush.android.helper.c.a(this.f3339a.f3017c, i9, format, this.f3340b);
                    return false;
                } else if (str.startsWith("mailto")) {
                    if (str.lastIndexOf("direct=") < 0 && !str.startsWith("mailto")) {
                        if (str.indexOf("?") > 0) {
                            sb2 = new StringBuilder();
                            sb2.append(str);
                            sb2.append("&direct=false");
                        } else {
                            sb2 = new StringBuilder();
                            sb2.append(str);
                            sb2.append("?direct=false");
                        }
                        str = sb2.toString();
                        str.lastIndexOf("direct=");
                    }
                    int indexOf = str.indexOf("?");
                    String substring = str.substring(0, indexOf);
                    String substring2 = str.substring(indexOf);
                    Logger.v("JPushWebViewClient", "Uri: " + substring);
                    Logger.v("JPushWebViewClient", "QueryString: " + substring2);
                    Intent intent2 = null;
                    if (substring.startsWith("mailto")) {
                        String[] split = substring.split(CertificateUtil.DELIMITER);
                        if (split.length == 2) {
                            int indexOf2 = substring2.indexOf("&content=");
                            String substring3 = substring2.substring(substring2.indexOf("title=") + 6, indexOf2);
                            String substring4 = substring2.substring(indexOf2 + 9);
                            String[] strArr = {split[1]};
                            Intent intent3 = new Intent("android.intent.action.SEND");
                            intent3.setType("plain/text");
                            intent3.putExtra("android.intent.extra.EMAIL", strArr);
                            intent3.putExtra("android.intent.extra.SUBJECT", substring3);
                            intent3.putExtra("android.intent.extra.TEXT", substring4);
                            intent2 = intent3;
                        }
                    }
                    if (intent2 != null) {
                        context.startActivity(intent2);
                    }
                    cn.jpush.android.helper.c.a(this.f3339a.f3017c, 1016, format, JPushConstants.mApplicationContext);
                    return true;
                } else {
                    return a(str);
                }
            }
            Intent intent4 = new Intent("android.intent.action.VIEW");
            intent4.setDataAndType(Uri.parse(str), "video/*");
            webView.getContext().startActivity(intent4);
            return true;
        } catch (Throwable unused) {
            Logger.e("JPushWebViewClient", "Invalid url");
            return true;
        }
    }
}
