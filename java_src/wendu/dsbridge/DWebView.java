package wendu.dsbridge;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.GeolocationPermissions;
import android.webkit.JavascriptInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import androidx.appcompat.app.AlertDialog;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class DWebView extends WebView {

    /* renamed from: k  reason: collision with root package name */
    private static boolean f59470k = false;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f59471a;

    /* renamed from: b  reason: collision with root package name */
    private String f59472b;

    /* renamed from: c  reason: collision with root package name */
    int f59473c;

    /* renamed from: d  reason: collision with root package name */
    WebChromeClient f59474d;

    /* renamed from: e  reason: collision with root package name */
    d f59475e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f59476f;

    /* renamed from: g  reason: collision with root package name */
    private c f59477g;

    /* renamed from: h  reason: collision with root package name */
    private ArrayList<b> f59478h;

    /* renamed from: i  reason: collision with root package name */
    Map<Integer, wendu.dsbridge.b> f59479i;

    /* renamed from: j  reason: collision with root package name */
    private WebChromeClient f59480j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public String f59493a;

        /* renamed from: b  reason: collision with root package name */
        public int f59494b;

        /* renamed from: c  reason: collision with root package name */
        public String f59495c;

        public String toString() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(PushConstants.MZ_PUSH_MESSAGE_METHOD, this.f59495c);
                jSONObject.put("callbackId", this.f59494b);
                jSONObject.put("data", this.f59493a);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            return jSONObject.toString();
        }
    }

    /* loaded from: classes7.dex */
    public interface c {
        boolean onClose();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class d extends Handler {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<Activity> f59496a;

        d(Activity activity) {
            this.f59496a = new WeakReference<>(activity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.f59496a.get() != null) {
                int i9 = message.what;
                if (i9 == 1) {
                    DWebView.this.a((String) message.obj);
                } else if (i9 == 2) {
                    DWebView.super.loadUrl((String) message.obj);
                } else if (i9 == 3) {
                    e eVar = (e) message.obj;
                    DWebView.super.loadUrl(eVar.f59498a, eVar.f59499b);
                } else if (i9 == 4) {
                    if (DWebView.this.f59477g == null || DWebView.this.f59477g.onClose()) {
                        ((Activity) DWebView.this.getContext()).onBackPressed();
                    }
                } else if (i9 != 5) {
                } else {
                    int i10 = message.arg1;
                    wendu.dsbridge.b bVar = DWebView.this.f59479i.get(Integer.valueOf(i10));
                    if (bVar != null) {
                        if (DWebView.f59470k) {
                            bVar.onValue(message.obj);
                        } else {
                            try {
                                bVar.onValue(message.obj);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                        if (message.arg2 == 1) {
                            DWebView.this.f59479i.remove(Integer.valueOf(i10));
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes7.dex */
    class e {

        /* renamed from: a  reason: collision with root package name */
        String f59498a;

        /* renamed from: b  reason: collision with root package name */
        Map<String, String> f59499b;

        e(String str, Map<String, String> map) {
            this.f59498a = str;
            this.f59499b = map;
        }
    }

    public DWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f59471a = new HashMap();
        this.f59473c = 0;
        this.f59475e = null;
        this.f59476f = true;
        this.f59477g = null;
        this.f59478h = new ArrayList<>();
        this.f59479i = new HashMap();
        this.f59480j = new a();
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        super.evaluateJavascript(str, null);
    }

    @Keep
    private void addInternalJavascriptObject() {
        m(new Object() { // from class: wendu.dsbridge.DWebView.2
            @JavascriptInterface
            @Keep
            public String closePage(Object obj) throws JSONException {
                Message message = new Message();
                message.what = 4;
                DWebView.this.f59475e.sendMessage(message);
                return null;
            }

            @JavascriptInterface
            @Keep
            public void disableJavascriptDialogBlock(Object obj) throws JSONException {
                DWebView.this.f59476f = !((JSONObject) obj).getBoolean("disable");
            }

            @JavascriptInterface
            @Keep
            public void dsinit(Object obj) {
                DWebView.this.p();
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
                    wendu.dsbridge.DWebView r2 = wendu.dsbridge.DWebView.this
                    java.lang.String[] r1 = wendu.dsbridge.DWebView.g(r2, r1)
                    wendu.dsbridge.DWebView r2 = wendu.dsbridge.DWebView.this
                    java.util.Map r2 = wendu.dsbridge.DWebView.h(r2)
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
                throw new UnsupportedOperationException("Method not decompiled: wendu.dsbridge.DWebView.AnonymousClass2.hasNativeMethod(java.lang.Object):boolean");
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
                DWebView.this.f59475e.sendMessage(message);
            }
        }, "_dsb");
    }

    private void o(b bVar) {
        q(String.format("window._handleMessageFromNative(%s)", bVar.toString()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        Iterator<b> it = this.f59478h.iterator();
        while (it.hasNext()) {
            o(it.next());
        }
        this.f59478h = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] r(String str) {
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

    public static void setWebContentsDebuggingEnabled(boolean z10) {
        WebView.setWebContentsDebuggingEnabled(z10);
        f59470k = z10;
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
        File file = new File(this.f59472b);
        File file2 = new File(context.getCacheDir().getAbsolutePath() + "/webviewCache");
        if (file2.exists()) {
            n(file2);
        }
        if (file.exists()) {
            n(file);
        }
    }

    @Keep
    void init() {
        this.f59475e = new d((Activity) getContext());
        this.f59472b = getContext().getFilesDir().getAbsolutePath() + "/webcache";
        WebSettings settings = getSettings();
        settings.setDomStorageEnabled(true);
        CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
        settings.setMixedContentMode(0);
        settings.setAllowFileAccess(false);
        settings.setAppCacheEnabled(false);
        settings.setCacheMode(2);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportMultipleWindows(true);
        settings.setAppCachePath(this.f59472b);
        settings.setUseWideViewPort(true);
        super.setWebChromeClient(this.f59480j);
        addInternalJavascriptObject();
        super.addJavascriptInterface(new Object() { // from class: wendu.dsbridge.DWebView.1

            /* renamed from: wendu.dsbridge.DWebView$1$a */
            /* loaded from: classes7.dex */
            class a implements wendu.dsbridge.a {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f59482a;

                a(String str) {
                    this.f59482a = str;
                }
            }

            private void a(String str) {
                Log.d("dsBridge", str);
                if (DWebView.f59470k) {
                    DWebView dWebView = DWebView.this;
                    dWebView.q(String.format("alert('%s')", "DEBUG ERR MSG:\\n" + str.replaceAll("\\'", "\\\\'")));
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x006b  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0089  */
            @android.webkit.JavascriptInterface
            @androidx.annotation.Keep
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.String call(java.lang.String r14, java.lang.String r15) throws org.json.JSONException {
                /*
                    Method dump skipped, instructions count: 264
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: wendu.dsbridge.DWebView.AnonymousClass1.call(java.lang.String, java.lang.String):java.lang.String");
            }
        }, "_dsbridge");
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        Message message = new Message();
        message.what = 2;
        message.obj = str;
        this.f59475e.sendMessage(message);
    }

    public void m(Object obj, String str) {
        if (str == null) {
            str = "";
        }
        if (obj != null) {
            this.f59471a.put(str, obj);
        }
    }

    public void n(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
            } else if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    n(file2);
                }
            }
            file.delete();
            return;
        }
        Log.e("Webview", "delete file no exists " + file.getAbsolutePath());
    }

    public void q(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            a(str);
            return;
        }
        Message message = new Message();
        message.what = 1;
        message.obj = str;
        this.f59475e.sendMessage(message);
    }

    public void setJavascriptCloseWindowListener(c cVar) {
        this.f59477g = cVar;
    }

    @Override // android.webkit.WebView
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f59474d = webChromeClient;
    }

    /* loaded from: classes7.dex */
    class a extends WebChromeClient {

        /* renamed from: wendu.dsbridge.DWebView$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        class DialogInterface$OnClickListenerC0683a implements DialogInterface.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsResult f59486a;

            DialogInterface$OnClickListenerC0683a(JsResult jsResult) {
                this.f59486a = jsResult;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i9) {
                dialogInterface.dismiss();
                if (DWebView.this.f59476f) {
                    this.f59486a.confirm();
                }
            }
        }

        /* loaded from: classes7.dex */
        class b implements DialogInterface.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsResult f59488a;

            b(JsResult jsResult) {
                this.f59488a = jsResult;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i9) {
                if (DWebView.this.f59476f) {
                    if (i9 == -1) {
                        this.f59488a.confirm();
                    } else {
                        this.f59488a.cancel();
                    }
                }
            }
        }

        /* loaded from: classes7.dex */
        class c implements DialogInterface.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsPromptResult f59490a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ EditText f59491b;

            c(JsPromptResult jsPromptResult, EditText editText) {
                this.f59490a = jsPromptResult;
                this.f59491b = editText;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i9) {
                if (DWebView.this.f59476f) {
                    if (i9 == -1) {
                        this.f59490a.confirm(this.f59491b.getText().toString());
                    } else {
                        this.f59490a.cancel();
                    }
                }
            }
        }

        a() {
        }

        @Override // android.webkit.WebChromeClient
        public Bitmap getDefaultVideoPoster() {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                return webChromeClient.getDefaultVideoPoster();
            }
            return super.getDefaultVideoPoster();
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                return webChromeClient.getVideoLoadingProgressView();
            }
            return super.getVideoLoadingProgressView();
        }

        @Override // android.webkit.WebChromeClient
        public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.getVisitedHistory(valueCallback);
            } else {
                super.getVisitedHistory(valueCallback);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onCloseWindow(WebView webView) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onCloseWindow(webView);
            } else {
                super.onCloseWindow(webView);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onConsoleMessage(String str, int i9, String str2) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onConsoleMessage(str, i9, str2);
            } else {
                super.onConsoleMessage(str, i9, str2);
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z10, boolean z11, Message message) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                return webChromeClient.onCreateWindow(webView, z10, z11, message);
            }
            return super.onCreateWindow(webView, z10, z11, message);
        }

        @Override // android.webkit.WebChromeClient
        public void onExceededDatabaseQuota(String str, String str2, long j10, long j11, long j12, WebStorage.QuotaUpdater quotaUpdater) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onExceededDatabaseQuota(str, str2, j10, j11, j12, quotaUpdater);
            } else {
                super.onExceededDatabaseQuota(str, str2, j10, j11, j12, quotaUpdater);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsHidePrompt() {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onGeolocationPermissionsHidePrompt();
            } else {
                super.onGeolocationPermissionsHidePrompt();
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onGeolocationPermissionsShowPrompt(str, callback);
            } else {
                super.onGeolocationPermissionsShowPrompt(str, callback);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onHideCustomView();
            } else {
                super.onHideCustomView();
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            if (!DWebView.this.f59476f) {
                jsResult.confirm();
            }
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient == null || !webChromeClient.onJsAlert(webView, str, str2, jsResult)) {
                new AlertDialog.Builder(DWebView.this.getContext()).setMessage(str2).setCancelable(false).setPositiveButton(17039370, new DialogInterface$OnClickListenerC0683a(jsResult)).create().show();
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                return webChromeClient.onJsBeforeUnload(webView, str, str2, jsResult);
            }
            return super.onJsBeforeUnload(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            if (!DWebView.this.f59476f) {
                jsResult.confirm();
            }
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient == null || !webChromeClient.onJsConfirm(webView, str, str2, jsResult)) {
                b bVar = new b(jsResult);
                new AlertDialog.Builder(DWebView.this.getContext()).setMessage(str2).setCancelable(false).setPositiveButton(17039370, bVar).setNegativeButton(17039360, bVar).show();
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            if (!DWebView.this.f59476f) {
                jsPromptResult.confirm();
            }
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient == null || !webChromeClient.onJsPrompt(webView, str, str2, str3, jsPromptResult)) {
                EditText editText = new EditText(DWebView.this.getContext());
                editText.setText(str3);
                if (str3 != null) {
                    editText.setSelection(str3.length());
                }
                float f10 = DWebView.this.getContext().getResources().getDisplayMetrics().density;
                c cVar = new c(jsPromptResult, editText);
                new AlertDialog.Builder(DWebView.this.getContext()).setTitle(str2).setView(editText).setCancelable(false).setPositiveButton(17039370, cVar).setNegativeButton(17039360, cVar).show();
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
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                return webChromeClient.onJsTimeout();
            }
            return super.onJsTimeout();
        }

        @Override // android.webkit.WebChromeClient
        public void onPermissionRequest(PermissionRequest permissionRequest) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onPermissionRequest(permissionRequest);
            } else {
                super.onPermissionRequest(permissionRequest);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onPermissionRequestCanceled(permissionRequest);
            } else {
                super.onPermissionRequestCanceled(permissionRequest);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i9) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onProgressChanged(webView, i9);
            } else {
                super.onProgressChanged(webView, i9);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onReachedMaxAppCacheSize(long j10, long j11, WebStorage.QuotaUpdater quotaUpdater) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onReachedMaxAppCacheSize(j10, j11, quotaUpdater);
            }
            super.onReachedMaxAppCacheSize(j10, j11, quotaUpdater);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedIcon(WebView webView, Bitmap bitmap) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onReceivedIcon(webView, bitmap);
            } else {
                super.onReceivedIcon(webView, bitmap);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onReceivedTitle(webView, str);
            } else {
                super.onReceivedTitle(webView, str);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTouchIconUrl(WebView webView, String str, boolean z10) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onReceivedTouchIconUrl(webView, str, z10);
            } else {
                super.onReceivedTouchIconUrl(webView, str, z10);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onRequestFocus(WebView webView) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onRequestFocus(webView);
            } else {
                super.onRequestFocus(webView);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                webChromeClient.onShowCustomView(view, customViewCallback);
            } else {
                super.onShowCustomView(view, customViewCallback);
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                return webChromeClient.onShowFileChooser(webView, valueCallback, fileChooserParams);
            }
            return super.onShowFileChooser(webView, valueCallback, fileChooserParams);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
            if (webChromeClient != null) {
                return webChromeClient.onConsoleMessage(consoleMessage);
            }
            return super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, int i9, WebChromeClient.CustomViewCallback customViewCallback) {
            WebChromeClient webChromeClient = DWebView.this.f59474d;
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
        message.obj = new e(str, map);
        this.f59475e.sendMessage(message);
    }

    public DWebView(Context context) {
        super(context);
        this.f59471a = new HashMap();
        this.f59473c = 0;
        this.f59475e = null;
        this.f59476f = true;
        this.f59477g = null;
        this.f59478h = new ArrayList<>();
        this.f59479i = new HashMap();
        this.f59480j = new a();
        init();
    }
}
