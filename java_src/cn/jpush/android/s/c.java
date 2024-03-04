package cn.jpush.android.s;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import cn.jpush.android.af.h;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.webview.bridge.HostJsScope;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    protected final cn.jpush.android.x.e f3255a;

    /* renamed from: b  reason: collision with root package name */
    protected a f3256b;

    /* renamed from: c  reason: collision with root package name */
    private final cn.jpush.android.w.c f3257c;

    /* renamed from: d  reason: collision with root package name */
    private WebView f3258d;

    /* renamed from: e  reason: collision with root package name */
    private cn.jpush.android.webview.bridge.d f3259e;

    /* loaded from: classes.dex */
    public interface a {
        void a(Context context, View view, Object obj);
    }

    public c(cn.jpush.android.w.c cVar, cn.jpush.android.x.e eVar) {
        this.f3257c = cVar;
        this.f3255a = eVar;
    }

    private void g() {
        try {
            h.a(this.f3258d, "addJavascriptInterface", new Class[]{Object.class, String.class}, new Object[]{this.f3259e, "JPushWeb"});
        } catch (Throwable th2) {
            th2.printStackTrace();
            Logger.e("InAppBindingWrapper", "addJavascriptInterface failed:" + th2.toString());
        }
    }

    public WindowManager.LayoutParams a(Context context, cn.jpush.android.w.c cVar, boolean z10, WindowManager windowManager, View view) {
        if (cVar != null && context != null) {
            try {
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(cVar.d(), cVar.e(), z10 ? Build.VERSION.SDK_INT >= 26 ? 2038 : 2003 : 1003, cVar.b() | 131072 | 32 | 8, -3);
                layoutParams.x = cVar.o();
                layoutParams.y = cVar.n();
                layoutParams.dimAmount = 0.3f;
                layoutParams.gravity = cVar.c();
                layoutParams.windowAnimations = 0;
                Logger.d("InAppBindingWrapper", "dialog view layout param, gravity: " + cVar.c() + ", margin_x: " + cVar.o() + ", margin_y: " + cVar.n());
                windowManager.addView(view, layoutParams);
                return layoutParams;
            } catch (Throwable th2) {
                Logger.w("InAppBindingWrapper", "[getLayoutParams] error." + th2.getMessage());
            }
        }
        windowManager.addView(view, null);
        return null;
    }

    public void a() {
        try {
            WebView webView = this.f3258d;
            if (webView != null) {
                ViewParent parent = webView.getParent();
                if (parent != null) {
                    Logger.d("InAppBindingWrapper", "webview parent view " + parent.toString());
                    ((ViewGroup) parent).removeView(this.f3258d);
                }
                this.f3258d.getSettings().setJavaScriptEnabled(false);
                this.f3258d.clearCache(true);
                this.f3258d.clearHistory();
                this.f3258d.clearView();
                this.f3258d.removeAllViews();
                this.f3258d.clearSslPreferences();
                this.f3258d.destroy();
                this.f3258d = null;
                Logger.d("InAppBindingWrapper", "webview release completed.");
            }
        } catch (Throwable th2) {
            Logger.w("InAppBindingWrapper", "web view destroy failed. error: " + th2.getMessage());
        }
    }

    public void a(Context context) {
        this.f3255a.f3530v = System.currentTimeMillis();
    }

    public void a(WindowManager windowManager, Context context) {
        a(context);
    }

    public void a(a aVar) {
        this.f3256b = aVar;
    }

    public View b() {
        return null;
    }

    public void b(Context context) {
    }

    public cn.jpush.android.x.e c() {
        return this.f3255a;
    }

    public boolean c(Context context) {
        return true;
    }

    public View d() {
        return this.f3258d;
    }

    public boolean d(Context context) {
        String str;
        if (context == null) {
            str = "unexpected error, context is null";
        } else {
            try {
                cn.jpush.android.x.e eVar = this.f3255a;
                if (eVar == null) {
                    Logger.w("InAppBindingWrapper", "unexpected error, message is null");
                    return false;
                }
                String r10 = eVar.r();
                if (TextUtils.isEmpty(r10)) {
                    Logger.w("InAppBindingWrapper", "in-app message web page url is empty, webview inflate failed.");
                    return false;
                }
                Logger.i("InAppBindingWrapper", "webview inflate, templateData: " + this.f3255a.s());
                if (this.f3258d == null) {
                    WebView webView = new WebView(context);
                    this.f3258d = webView;
                    webView.setBackgroundColor(context.getResources().getColor(17170445));
                    Logger.d("InAppBindingWrapper", "create web view xxxxx");
                }
                this.f3258d.setHorizontalScrollBarEnabled(false);
                this.f3258d.setVerticalScrollBarEnabled(false);
                this.f3258d.setScrollbarFadingEnabled(true);
                this.f3258d.setScrollBarStyle(TPMediaCodecProfileLevel.HEVCHighTierLevel62);
                WebSettings settings = this.f3258d.getSettings();
                settings.setAllowFileAccess(true);
                cn.jpush.android.af.a.a(settings);
                cn.jpush.android.af.a.a(this.f3258d);
                cn.jpush.android.d.d u10 = this.f3255a.u();
                cn.jpush.android.webview.bridge.d dVar = new cn.jpush.android.webview.bridge.d(null, u10);
                this.f3259e = dVar;
                dVar.a(this.f3255a);
                Logger.dd("InAppBindingWrapper", "Android sdk version greater than or equal to 17, Java—Js interact by annotation!");
                g();
                this.f3258d.setWebChromeClient(new cn.jpush.android.webview.bridge.a("JPushWeb", HostJsScope.class, null, null));
                this.f3258d.setWebViewClient(new cn.jpush.android.ui.a(u10, context));
                HostJsScope.setWebViewHelper(this.f3259e);
                this.f3258d.loadUrl(r10);
                Logger.d("InAppBindingWrapper", "in-app message webview load url completed. visibility: " + this.f3258d.getVisibility() + ", url: " + r10);
                return true;
            } catch (Throwable th2) {
                str = "webview inflate failed. " + th2.getMessage();
            }
        }
        Logger.w("InAppBindingWrapper", str);
        return false;
    }

    public cn.jpush.android.webview.bridge.d e() {
        return this.f3259e;
    }

    public cn.jpush.android.w.c f() {
        return this.f3257c;
    }
}
