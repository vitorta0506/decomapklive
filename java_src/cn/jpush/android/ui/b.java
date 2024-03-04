package cn.jpush.android.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Menu;
import android.webkit.WebSettings;
import android.webkit.WebView;
import cn.jpush.android.af.h;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.ProxyActivityAction;
import cn.jpush.android.webview.bridge.HostJsScope;
import cn.jpush.android.webview.bridge.d;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import java.io.File;
/* loaded from: classes.dex */
public class b extends ProxyActivityAction {

    /* renamed from: a  reason: collision with root package name */
    public static d f3345a;

    /* renamed from: b  reason: collision with root package name */
    private String f3346b;

    /* renamed from: c  reason: collision with root package name */
    private WebView f3347c;

    /* renamed from: d  reason: collision with root package name */
    private cn.jpush.android.d.d f3348d = null;

    private cn.jpush.android.d.d a(Activity activity, Intent intent) {
        cn.jpush.android.d.d a10 = cn.jpush.android.aa.c.a(activity.getApplicationContext(), activity.getIntent());
        if (a10 != null) {
            return a10;
        }
        Logger.dd("PopWinActivityImpl", "parse entity form plugin plateform");
        String uri = intent.getData() != null ? intent.getData().toString() : null;
        if (TextUtils.isEmpty(uri) && intent.getExtras() != null) {
            uri = intent.getExtras().getString("JMessageExtra");
        }
        return cn.jpush.android.ae.b.a(activity, uri, "");
    }

    private void a() {
        try {
            h.a(this.f3347c, "addJavascriptInterface", new Class[]{Object.class, String.class}, new Object[]{f3345a, "JPushWeb"});
        } catch (Throwable th2) {
            th2.printStackTrace();
            Logger.e("PopWinActivityImpl", "addJavascriptInterface failed:" + th2.toString());
        }
    }

    private void a(Activity activity) {
        if (activity.getIntent() != null) {
            try {
                cn.jpush.android.d.d a10 = a(activity, activity.getIntent());
                this.f3348d = a10;
                if (a10 != null) {
                    this.f3346b = a10.f3017c;
                    b(activity);
                    c(activity);
                    cn.jpush.android.k.a.a(activity);
                } else {
                    Logger.ww("PopWinActivityImpl", "Warning，null message entity! Close PopWinActivity!");
                    activity.finish();
                }
                return;
            } catch (Throwable th2) {
                Logger.ee("PopWinActivityImpl", "Extra data is not serializable!");
                th2.printStackTrace();
            }
        } else {
            Logger.ww("PopWinActivityImpl", "PopWinActivity get NULL intent!");
        }
        activity.finish();
    }

    private void b(Activity activity) {
        int identifier = activity.getResources().getIdentifier("jpush_popwin_layout", "layout", activity.getPackageName());
        if (identifier == 0) {
            Logger.ee("PopWinActivityImpl", "Please add layout resource jpush_popwin_layout.xml to res/layout !");
            activity.finish();
            return;
        }
        activity.setContentView(identifier);
        int identifier2 = activity.getResources().getIdentifier("wvPopwin", "id", activity.getPackageName());
        if (identifier2 == 0) {
            Logger.ee("PopWinActivityImpl", "Please use default code in jpush_popwin_layout.xml!");
            activity.finish();
            return;
        }
        WebView webView = (WebView) activity.findViewById(identifier2);
        this.f3347c = webView;
        if (webView == null) {
            Logger.ee("PopWinActivityImpl", "Can not get webView in layout file!");
            activity.finish();
            return;
        }
        webView.setScrollbarFadingEnabled(true);
        this.f3347c.setScrollBarStyle(TPMediaCodecProfileLevel.HEVCHighTierLevel62);
        WebSettings settings = this.f3347c.getSettings();
        settings.setAllowFileAccess(true);
        settings.setDomStorageEnabled(true);
        cn.jpush.android.af.a.a(settings);
        cn.jpush.android.af.a.a(this.f3347c);
        settings.setSavePassword(false);
        this.f3347c.setBackgroundColor(0);
        f3345a = new d(activity, this.f3348d);
        Logger.dd("PopWinActivityImpl", "Android sdk version greater than or equal to 17, Java—Js interact by annotation!");
        a();
        this.f3347c.setWebChromeClient(new cn.jpush.android.webview.bridge.a("JPushWeb", HostJsScope.class, null, null));
        this.f3347c.setWebViewClient(new a(this.f3348d, activity));
        HostJsScope.setWebViewHelper(f3345a);
    }

    private void c(Activity activity) {
        cn.jpush.android.d.d dVar = this.f3348d;
        String str = dVar.X;
        String str2 = dVar.V;
        Logger.d("PopWinActivityImpl", "showUrl = " + str2);
        if (TextUtils.isEmpty(str) || !new File(str.replace("file://", "")).exists()) {
            this.f3347c.loadUrl(str2);
        } else {
            this.f3347c.loadUrl(str);
        }
        cn.jpush.android.helper.c.a(this.f3346b, 1000, activity);
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onBackPressed(Activity activity) {
        cn.jpush.android.helper.c.a(this.f3346b, 1006, activity.getApplicationContext());
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onConfigurationChanged(Activity activity, Configuration configuration) {
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onCreate(Activity activity, Bundle bundle) {
        cn.jpush.android.af.a.e(activity);
        a(activity);
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public boolean onCreateOptionsMenu(Activity activity, Menu menu) {
        return false;
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onDestroy(Activity activity) {
        WebView webView = this.f3347c;
        if (webView != null) {
            webView.removeAllViews();
            this.f3347c.destroy();
            this.f3347c = null;
        }
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onEvent(Activity activity, String str, Bundle bundle) {
        if (TextUtils.isEmpty(str) || !str.equals("start_push_activity") || this.f3348d == null || this.f3347c == null) {
            return;
        }
        String string = bundle.getString("url");
        if (!TextUtils.isEmpty(string)) {
            this.f3348d.V = string;
            Intent intent = new Intent(activity, PushActivity.class);
            intent.putExtra("msg_data", this.f3348d.c());
            intent.putExtra(PushActivity.FROM_OTHER_WAY, true);
            intent.setFlags(335544320);
            activity.startActivity(intent);
        }
        activity.finish();
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public boolean onKeyDown(Activity activity, int i9, KeyEvent keyEvent) {
        return false;
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onNewIntent(Activity activity, Intent intent) {
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onPause(Activity activity) {
        WebView webView = this.f3347c;
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onRestart(Activity activity) {
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onResume(Activity activity) {
        WebView webView = this.f3347c;
        if (webView != null) {
            webView.onResume();
            HostJsScope.setWebViewHelper(f3345a);
        }
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onStart(Activity activity, Intent intent) {
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onStop(Activity activity) {
    }
}
