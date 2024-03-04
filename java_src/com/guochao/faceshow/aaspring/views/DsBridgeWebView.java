package com.guochao.faceshow.aaspring.views;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.webkit.ClientCertRequest;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.GeolocationPermissions;
import android.webkit.HttpAuthHandler;
import android.webkit.JavascriptInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SafeBrowsingResponse;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.lib_base.R$drawable;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import wendu.dsbridge.DWebView;
/* loaded from: classes3.dex */
public class DsBridgeWebView extends WebView {

    /* renamed from: r  reason: collision with root package name */
    private static boolean f23597r = false;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f23598a;

    /* renamed from: b  reason: collision with root package name */
    private String f23599b;

    /* renamed from: c  reason: collision with root package name */
    int f23600c;

    /* renamed from: d  reason: collision with root package name */
    WebChromeClient f23601d;

    /* renamed from: e  reason: collision with root package name */
    private String f23602e;

    /* renamed from: f  reason: collision with root package name */
    WebViewClient f23603f;

    /* renamed from: g  reason: collision with root package name */
    e f23604g;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f23605h;

    /* renamed from: i  reason: collision with root package name */
    private DWebView.c f23606i;

    /* renamed from: j  reason: collision with root package name */
    private ArrayList<d> f23607j;

    /* renamed from: k  reason: collision with root package name */
    Map<Integer, wendu.dsbridge.b> f23608k;

    /* renamed from: l  reason: collision with root package name */
    ClipDrawable f23609l;

    /* renamed from: m  reason: collision with root package name */
    private WebViewClient f23610m;

    /* renamed from: n  reason: collision with root package name */
    int f23611n;

    /* renamed from: o  reason: collision with root package name */
    private WebChromeClient f23612o;

    /* renamed from: p  reason: collision with root package name */
    ObjectAnimator f23613p;

    /* renamed from: q  reason: collision with root package name */
    private int f23614q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends Property<DsBridgeWebView, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(DsBridgeWebView dsBridgeWebView) {
            return Float.valueOf(DsBridgeWebView.this.f23614q);
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(DsBridgeWebView dsBridgeWebView, Float f10) {
            DsBridgeWebView.this.f23614q = f10.intValue();
            DsBridgeWebView.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public String f23629a;

        /* renamed from: b  reason: collision with root package name */
        public int f23630b;

        /* renamed from: c  reason: collision with root package name */
        public String f23631c;

        public String toString() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(PushConstants.MZ_PUSH_MESSAGE_METHOD, this.f23631c);
                jSONObject.put("callbackId", this.f23630b);
                jSONObject.put("data", this.f23629a);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            return jSONObject.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class e extends Handler {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<Context> f23632a;

        /* renamed from: b  reason: collision with root package name */
        WeakReference<DsBridgeWebView> f23633b;

        e(Context context, DsBridgeWebView dsBridgeWebView) {
            this.f23632a = new WeakReference<>(context);
            this.f23633b = new WeakReference<>(dsBridgeWebView);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Context context = this.f23632a.get();
            DsBridgeWebView dsBridgeWebView = this.f23633b.get();
            if (context == null || dsBridgeWebView == null) {
                return;
            }
            int i9 = message.what;
            if (i9 == 1) {
                dsBridgeWebView.a((String) message.obj);
            } else if (i9 == 2) {
                dsBridgeWebView.w((String) message.obj);
            } else if (i9 == 3) {
                f fVar = (f) message.obj;
                dsBridgeWebView.x(fVar.f23634a, fVar.f23635b);
            } else if (i9 == 4) {
                if ((dsBridgeWebView.f23606i == null || dsBridgeWebView.f23606i.onClose()) && (context instanceof Activity)) {
                    ((Activity) context).onBackPressed();
                }
            } else if (i9 != 5) {
            } else {
                int i10 = message.arg1;
                wendu.dsbridge.b bVar = dsBridgeWebView.f23608k.get(Integer.valueOf(i10));
                if (bVar != null) {
                    if (DsBridgeWebView.f23597r) {
                        bVar.onValue(message.obj);
                    } else {
                        try {
                            bVar.onValue(message.obj);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    if (message.arg2 == 1) {
                        dsBridgeWebView.f23608k.remove(Integer.valueOf(i10));
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    static class f {

        /* renamed from: a  reason: collision with root package name */
        String f23634a;

        /* renamed from: b  reason: collision with root package name */
        Map<String, String> f23635b;

        f(String str, Map<String, String> map) {
            this.f23634a = str;
            this.f23635b = map;
        }
    }

    public DsBridgeWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23598a = new HashMap();
        this.f23600c = 0;
        this.f23604g = null;
        this.f23605h = true;
        this.f23606i = null;
        this.f23607j = new ArrayList<>();
        this.f23608k = new HashMap();
        this.f23610m = new a();
        this.f23612o = new b();
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        super.evaluateJavascript(str, null);
    }

    @Keep
    private void addInternalJavascriptObject() {
        o(new Object() { // from class: com.guochao.faceshow.aaspring.views.DsBridgeWebView.2
            @JavascriptInterface
            @Keep
            public String closePage(Object obj) throws JSONException {
                Message message = new Message();
                message.what = 4;
                DsBridgeWebView.this.f23604g.sendMessage(message);
                return null;
            }

            @JavascriptInterface
            @Keep
            public void disableJavascriptDialogBlock(Object obj) throws JSONException {
                DsBridgeWebView.this.f23605h = !((JSONObject) obj).getBoolean("disable");
            }

            @JavascriptInterface
            @Keep
            public void dsinit(Object obj) {
                DsBridgeWebView.this.r();
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
            @android.webkit.JavascriptInterface
            @androidx.annotation.Keep
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean hasNativeMethod(java.lang.Object r10) throws org.json.JSONException {
                /*
                    r9 = this;
                    java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
                    org.json.JSONObject r10 = (org.json.JSONObject) r10
                    java.lang.String r1 = "name"
                    java.lang.String r1 = r10.getString(r1)
                    java.lang.String r1 = r1.trim()
                    java.lang.String r2 = "type"
                    java.lang.String r10 = r10.getString(r2)
                    java.lang.String r10 = r10.trim()
                    com.guochao.faceshow.aaspring.views.DsBridgeWebView r2 = com.guochao.faceshow.aaspring.views.DsBridgeWebView.this
                    java.lang.String[] r1 = com.guochao.faceshow.aaspring.views.DsBridgeWebView.e(r2, r1)
                    com.guochao.faceshow.aaspring.views.DsBridgeWebView r2 = com.guochao.faceshow.aaspring.views.DsBridgeWebView.this
                    java.util.Map r2 = com.guochao.faceshow.aaspring.views.DsBridgeWebView.f(r2)
                    r3 = 0
                    r4 = r1[r3]
                    java.lang.Object r2 = r2.get(r4)
                    if (r2 == 0) goto L78
                    java.lang.Class r2 = r2.getClass()
                    r4 = 0
                    r5 = 1
                    r6 = r1[r5]     // Catch: java.lang.Exception -> L44
                    r7 = 2
                    java.lang.Class[] r7 = new java.lang.Class[r7]     // Catch: java.lang.Exception -> L44
                    r7[r3] = r0     // Catch: java.lang.Exception -> L44
                    java.lang.Class<wendu.dsbridge.a> r8 = wendu.dsbridge.a.class
                    r7[r5] = r8     // Catch: java.lang.Exception -> L44
                    java.lang.reflect.Method r4 = r2.getDeclaredMethod(r6, r7)     // Catch: java.lang.Exception -> L44
                    r0 = 1
                    goto L4f
                L44:
                    r1 = r1[r5]     // Catch: java.lang.Exception -> L4e
                    java.lang.Class[] r6 = new java.lang.Class[r5]     // Catch: java.lang.Exception -> L4e
                    r6[r3] = r0     // Catch: java.lang.Exception -> L4e
                    java.lang.reflect.Method r4 = r2.getDeclaredMethod(r1, r6)     // Catch: java.lang.Exception -> L4e
                L4e:
                    r0 = 0
                L4f:
                    if (r4 == 0) goto L78
                    java.lang.Class<android.webkit.JavascriptInterface> r1 = android.webkit.JavascriptInterface.class
                    java.lang.annotation.Annotation r1 = r4.getAnnotation(r1)
                    android.webkit.JavascriptInterface r1 = (android.webkit.JavascriptInterface) r1
                    if (r1 == 0) goto L78
                    java.lang.String r1 = "all"
                    boolean r1 = r1.equals(r10)
                    if (r1 != 0) goto L77
                    if (r0 == 0) goto L6d
                    java.lang.String r1 = "asyn"
                    boolean r1 = r1.equals(r10)
                    if (r1 != 0) goto L77
                L6d:
                    if (r0 != 0) goto L78
                    java.lang.String r0 = "syn"
                    boolean r10 = r0.equals(r10)
                    if (r10 == 0) goto L78
                L77:
                    return r5
                L78:
                    return r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.DsBridgeWebView.AnonymousClass2.hasNativeMethod(java.lang.Object):boolean");
            }

            @JavascriptInterface
            @Keep
            public void returnValue(Object obj) throws JSONException {
                JSONObject jSONObject = (JSONObject) obj;
                Message message = new Message();
                message.what = 5;
                message.arg1 = jSONObject.getInt("id");
                message.arg2 = jSONObject.getBoolean("complete") ? 1 : 0;
                if (jSONObject.has("data")) {
                    message.obj = jSONObject.get("data");
                }
                DsBridgeWebView.this.f23604g.sendMessage(message);
            }
        }, "_dsb");
    }

    private void q(d dVar) {
        s(String.format("window._handleMessageFromNative(%s)", dVar.toString()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void r() {
        Iterator<d> it = this.f23607j.iterator();
        while (it.hasNext()) {
            q(it.next());
        }
        this.f23607j = null;
    }

    public static void setWebContentsDebuggingEnabled(boolean z10) {
        WebView.setWebContentsDebuggingEnabled(z10);
        f23597r = z10;
    }

    public static boolean t(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("facecast.live");
        arrayList.add("facecast.xyz");
        arrayList.add("buzzcast.info");
        arrayList.add("gchao.com");
        arrayList.add("gchao.cn");
        arrayList.add("fwqlt.com");
        arrayList.add("vvvps.com");
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            if (str.endsWith((String) arrayList.get(i9))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] u(String str) {
        String str2;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            str2 = str.substring(0, lastIndexOf);
            str = str.substring(lastIndexOf + 1);
        } else {
            str2 = "";
        }
        return new String[]{str2, str};
    }

    @Override // android.webkit.WebView
    public void clearCache(boolean z10) {
        super.clearCache(z10);
        CookieManager.getInstance().removeAllCookie();
        Context context = getContext();
        try {
            context.deleteDatabase("webview.db");
            context.deleteDatabase("webviewCache.db");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        File file = new File(this.f23599b);
        File file2 = new File(context.getCacheDir().getAbsolutePath() + "/webviewCache");
        if (file2.exists()) {
            p(file2);
        }
        if (file.exists()) {
            p(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Keep
    public void init() {
        this.f23609l = (ClipDrawable) ((LayerDrawable) ContextCompat.getDrawable(getContext(), R$drawable.web_view_progress)).getDrawable(0);
        this.f23604g = new e(getContext(), this);
        this.f23599b = getContext().getFilesDir().getAbsolutePath() + "/webcache";
        WebSettings settings = getSettings();
        settings.setDomStorageEnabled(true);
        CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
        settings.setMixedContentMode(0);
        settings.setAllowFileAccess(false);
        settings.setCacheMode(2);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportMultipleWindows(false);
        settings.setUseWideViewPort(true);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        settings.setSaveFormData(false);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setDatabaseEnabled(true);
        settings.setSupportZoom(true);
        super.setWebChromeClient(this.f23612o);
        super.setWebViewClient(this.f23610m);
        addInternalJavascriptObject();
        super.addJavascriptInterface(new Object() { // from class: com.guochao.faceshow.aaspring.views.DsBridgeWebView.1

            /* renamed from: com.guochao.faceshow.aaspring.views.DsBridgeWebView$1$a */
            /* loaded from: classes3.dex */
            class a implements wendu.dsbridge.a {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f23616a;

                a(String str) {
                    this.f23616a = str;
                }
            }

            private void a(String str) {
                Log.d("dsBridge", str);
                if (DsBridgeWebView.f23597r) {
                    DsBridgeWebView dsBridgeWebView = DsBridgeWebView.this;
                    dsBridgeWebView.s(String.format("alert('%s')", "DEBUG ERR MSG:\\n" + str.replaceAll("\\'", "\\\\'")));
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:24:0x0091  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x00af  */
            @android.webkit.JavascriptInterface
            @androidx.annotation.Keep
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.String call(java.lang.String r14, java.lang.String r15) throws org.json.JSONException {
                /*
                    Method dump skipped, instructions count: 302
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.DsBridgeWebView.AnonymousClass1.call(java.lang.String, java.lang.String):java.lang.String");
            }
        }, "_dsbridge");
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            w(str);
            return;
        }
        Message message = new Message();
        message.what = 2;
        message.obj = str;
        this.f23604g.sendMessage(message);
    }

    public void o(Object obj, String str) {
        if (str == null) {
            str = "";
        }
        if (obj != null) {
            this.f23598a.put(str, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.webkit.WebView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i9 = this.f23614q;
        if (i9 <= 0 || i9 >= 100) {
            return;
        }
        canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        this.f23609l.setLevel(this.f23614q * 100);
        this.f23609l.draw(canvas);
        canvas.restore();
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        ClipDrawable clipDrawable = this.f23609l;
        if (clipDrawable != null) {
            clipDrawable.setBounds(0, 0, i9, DensityUtil.dp2px(2.0f));
        }
    }

    public void p(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
            } else if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    p(file2);
                }
            }
            file.delete();
            return;
        }
        Log.e("Webview", "delete file no exists " + file.getAbsolutePath());
    }

    public void s(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            a(str);
            return;
        }
        Message message = new Message();
        message.what = 1;
        message.obj = str;
        this.f23604g.sendMessage(message);
    }

    public void setJavascriptCloseWindowListener(DWebView.c cVar) {
        this.f23606i = cVar;
    }

    @Override // android.webkit.WebView
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f23601d = webChromeClient;
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(@NonNull WebViewClient webViewClient) {
        this.f23603f = webViewClient;
    }

    public void v(int i9) {
        if (this.f23611n != i9) {
            ObjectAnimator objectAnimator = this.f23613p;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.f23613p = null;
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new c(Float.class, "progress"), this.f23614q, i9);
            this.f23613p = ofFloat;
            ofFloat.setDuration(80L);
            this.f23613p.setInterpolator(new DecelerateInterpolator());
            this.f23613p.start();
            this.f23611n = i9;
        }
    }

    protected void w(String str) {
        super.loadUrl(str);
    }

    protected void x(String str, Map<String, String> map) {
        super.loadUrl(str, map);
    }

    /* loaded from: classes3.dex */
    class a extends WebViewClient {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public void doUpdateVisitedHistory(WebView webView, String str, boolean z10) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.doUpdateVisitedHistory(webView, str, z10);
            } else {
                super.doUpdateVisitedHistory(webView, str, z10);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onFormResubmission(WebView webView, Message message, Message message2) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onFormResubmission(webView, message, message2);
            } else {
                super.onFormResubmission(webView, message, message2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onLoadResource(webView, str);
            } else {
                super.onLoadResource(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageCommitVisible(WebView webView, String str) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onPageCommitVisible(webView, str);
            } else {
                super.onPageCommitVisible(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            DsBridgeWebView.this.f23614q = 0;
            DsBridgeWebView.this.f23602e = str;
            DsBridgeWebView dsBridgeWebView = DsBridgeWebView.this;
            dsBridgeWebView.f23611n = 0;
            WebViewClient webViewClient = dsBridgeWebView.f23603f;
            if (webViewClient != null) {
                webViewClient.onPageFinished(webView, str);
            } else {
                super.onPageFinished(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DsBridgeWebView.this.f23602e = str;
            DsBridgeWebView.this.f23614q = 0;
            DsBridgeWebView dsBridgeWebView = DsBridgeWebView.this;
            dsBridgeWebView.f23611n = 0;
            WebViewClient webViewClient = dsBridgeWebView.f23603f;
            if (webViewClient != null) {
                webViewClient.onPageStarted(webView, str, bitmap);
            } else {
                super.onPageStarted(webView, str, bitmap);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
            } else {
                super.onReceivedClientCertRequest(webView, clientCertRequest);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i9, String str, String str2) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onReceivedError(webView, i9, str, str2);
            } else {
                super.onReceivedError(webView, i9, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            } else {
                super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            } else {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedLoginRequest(WebView webView, String str, @Nullable String str2, String str3) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
            } else {
                super.onReceivedLoginRequest(webView, str, str2, str3);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
            } else {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
            }
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(api = 26)
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                return webViewClient.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(api = 27)
        public void onSafeBrowsingHit(WebView webView, WebResourceRequest webResourceRequest, int i9, SafeBrowsingResponse safeBrowsingResponse) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onSafeBrowsingHit(webView, webResourceRequest, i9, safeBrowsingResponse);
            } else {
                super.onSafeBrowsingHit(webView, webResourceRequest, i9, safeBrowsingResponse);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onScaleChanged(WebView webView, float f10, float f11) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onScaleChanged(webView, f10, f11);
            } else {
                super.onScaleChanged(webView, f10, f11);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onTooManyRedirects(WebView webView, Message message, Message message2) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onTooManyRedirects(webView, message, message2);
            } else {
                super.onTooManyRedirects(webView, message, message2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onUnhandledKeyEvent(webView, keyEvent);
            } else {
                super.onUnhandledKeyEvent(webView, keyEvent);
            }
        }

        @Override // android.webkit.WebViewClient
        @Nullable
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                return webViewClient.shouldInterceptRequest(webView, str);
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                return webViewClient.shouldOverrideKeyEvent(webView, keyEvent);
            }
            return super.shouldOverrideKeyEvent(webView, keyEvent);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                return webViewClient.shouldOverrideUrlLoading(webView, str);
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
            } else {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        }

        @Override // android.webkit.WebViewClient
        @Nullable
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                return webViewClient.shouldInterceptRequest(webView, webResourceRequest);
            }
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(api = 24)
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebViewClient webViewClient = DsBridgeWebView.this.f23603f;
            if (webViewClient != null) {
                return webViewClient.shouldOverrideUrlLoading(webView, webResourceRequest);
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    /* loaded from: classes3.dex */
    class b extends WebChromeClient {

        /* loaded from: classes3.dex */
        class a implements DialogInterface.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsResult f23621a;

            a(JsResult jsResult) {
                this.f23621a = jsResult;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i9) {
                dialogInterface.dismiss();
                if (DsBridgeWebView.this.f23605h) {
                    this.f23621a.confirm();
                }
            }
        }

        /* renamed from: com.guochao.faceshow.aaspring.views.DsBridgeWebView$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class DialogInterface$OnClickListenerC0234b implements DialogInterface.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsResult f23623a;

            DialogInterface$OnClickListenerC0234b(JsResult jsResult) {
                this.f23623a = jsResult;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i9) {
                if (DsBridgeWebView.this.f23605h) {
                    if (i9 == -1) {
                        this.f23623a.confirm();
                    } else {
                        this.f23623a.cancel();
                    }
                }
            }
        }

        /* loaded from: classes3.dex */
        class c implements DialogInterface.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsPromptResult f23625a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ EditText f23626b;

            c(JsPromptResult jsPromptResult, EditText editText) {
                this.f23625a = jsPromptResult;
                this.f23626b = editText;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i9) {
                if (DsBridgeWebView.this.f23605h) {
                    if (i9 == -1) {
                        this.f23625a.confirm(this.f23626b.getText().toString());
                    } else {
                        this.f23625a.cancel();
                    }
                }
            }
        }

        b() {
        }

        @Override // android.webkit.WebChromeClient
        public Bitmap getDefaultVideoPoster() {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                return webChromeClient.getDefaultVideoPoster();
            }
            return super.getDefaultVideoPoster();
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                return webChromeClient.getVideoLoadingProgressView();
            }
            return super.getVideoLoadingProgressView();
        }

        @Override // android.webkit.WebChromeClient
        public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.getVisitedHistory(valueCallback);
            } else {
                super.getVisitedHistory(valueCallback);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onCloseWindow(WebView webView) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onCloseWindow(webView);
            } else {
                super.onCloseWindow(webView);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onConsoleMessage(String str, int i9, String str2) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onConsoleMessage(str, i9, str2);
            } else {
                super.onConsoleMessage(str, i9, str2);
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z10, boolean z11, Message message) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                return webChromeClient.onCreateWindow(webView, z10, z11, message);
            }
            return super.onCreateWindow(webView, z10, z11, message);
        }

        @Override // android.webkit.WebChromeClient
        public void onExceededDatabaseQuota(String str, String str2, long j10, long j11, long j12, WebStorage.QuotaUpdater quotaUpdater) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onExceededDatabaseQuota(str, str2, j10, j11, j12, quotaUpdater);
            } else {
                super.onExceededDatabaseQuota(str, str2, j10, j11, j12, quotaUpdater);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsHidePrompt() {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onGeolocationPermissionsHidePrompt();
            } else {
                super.onGeolocationPermissionsHidePrompt();
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onGeolocationPermissionsShowPrompt(str, callback);
            } else {
                super.onGeolocationPermissionsShowPrompt(str, callback);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onHideCustomView();
            } else {
                super.onHideCustomView();
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            if (!DsBridgeWebView.this.f23605h) {
                jsResult.confirm();
            }
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient == null || !webChromeClient.onJsAlert(webView, str, str2, jsResult)) {
                new AlertDialog.Builder(DsBridgeWebView.this.getContext()).setMessage(str2).setCancelable(false).setPositiveButton(17039370, new a(jsResult)).create().show();
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                return webChromeClient.onJsBeforeUnload(webView, str, str2, jsResult);
            }
            return super.onJsBeforeUnload(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            if (!DsBridgeWebView.this.f23605h) {
                jsResult.confirm();
            }
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient == null || !webChromeClient.onJsConfirm(webView, str, str2, jsResult)) {
                DialogInterface$OnClickListenerC0234b dialogInterface$OnClickListenerC0234b = new DialogInterface$OnClickListenerC0234b(jsResult);
                new AlertDialog.Builder(DsBridgeWebView.this.getContext()).setMessage(str2).setCancelable(false).setPositiveButton(17039370, dialogInterface$OnClickListenerC0234b).setNegativeButton(17039360, dialogInterface$OnClickListenerC0234b).show();
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            if (!DsBridgeWebView.this.f23605h) {
                jsPromptResult.confirm();
            }
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient == null || !webChromeClient.onJsPrompt(webView, str, str2, str3, jsPromptResult)) {
                EditText editText = new EditText(DsBridgeWebView.this.getContext());
                editText.setText(str3);
                if (str3 != null) {
                    editText.setSelection(str3.length());
                }
                float f10 = DsBridgeWebView.this.getContext().getResources().getDisplayMetrics().density;
                c cVar = new c(jsPromptResult, editText);
                new AlertDialog.Builder(DsBridgeWebView.this.getContext()).setTitle(str2).setView(editText).setCancelable(false).setPositiveButton(17039370, cVar).setNegativeButton(17039360, cVar).show();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                int i9 = (int) (16.0f * f10);
                layoutParams.setMargins(i9, 0, i9, 0);
                layoutParams.gravity = 1;
                editText.setLayoutParams(layoutParams);
                int i10 = (int) (15.0f * f10);
                editText.setPadding(i10 - ((int) (f10 * 5.0f)), i10, i10, i10);
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsTimeout() {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                return webChromeClient.onJsTimeout();
            }
            return super.onJsTimeout();
        }

        @Override // android.webkit.WebChromeClient
        public void onPermissionRequest(PermissionRequest permissionRequest) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onPermissionRequest(permissionRequest);
            } else {
                super.onPermissionRequest(permissionRequest);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onPermissionRequestCanceled(permissionRequest);
            } else {
                super.onPermissionRequestCanceled(permissionRequest);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i9) {
            DsBridgeWebView.this.v(i9);
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onProgressChanged(webView, i9);
            } else {
                super.onProgressChanged(webView, i9);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedIcon(WebView webView, Bitmap bitmap) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onReceivedIcon(webView, bitmap);
            } else {
                super.onReceivedIcon(webView, bitmap);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onReceivedTitle(webView, str);
            } else {
                super.onReceivedTitle(webView, str);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTouchIconUrl(WebView webView, String str, boolean z10) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onReceivedTouchIconUrl(webView, str, z10);
            } else {
                super.onReceivedTouchIconUrl(webView, str, z10);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onRequestFocus(WebView webView) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onRequestFocus(webView);
            } else {
                super.onRequestFocus(webView);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onShowCustomView(view, customViewCallback);
            } else {
                super.onShowCustomView(view, customViewCallback);
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                return webChromeClient.onShowFileChooser(webView, valueCallback, fileChooserParams);
            }
            return super.onShowFileChooser(webView, valueCallback, fileChooserParams);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                return webChromeClient.onConsoleMessage(consoleMessage);
            }
            return super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, int i9, WebChromeClient.CustomViewCallback customViewCallback) {
            WebChromeClient webChromeClient = DsBridgeWebView.this.f23601d;
            if (webChromeClient != null) {
                webChromeClient.onShowCustomView(view, i9, customViewCallback);
            } else {
                super.onShowCustomView(view, i9, customViewCallback);
            }
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        Message message = new Message();
        message.what = 3;
        message.obj = new f(str, map);
        this.f23604g.sendMessage(message);
    }

    public DsBridgeWebView(Context context) {
        super(context);
        this.f23598a = new HashMap();
        this.f23600c = 0;
        this.f23604g = null;
        this.f23605h = true;
        this.f23606i = null;
        this.f23607j = new ArrayList<>();
        this.f23608k = new HashMap();
        this.f23610m = new a();
        this.f23612o = new b();
        init();
    }
}
