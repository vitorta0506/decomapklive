package cn.jpush.android.ui;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.jpush.android.af.e;
import cn.jpush.android.af.h;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.ProxyActivityAction;
import cn.jpush.android.webview.bridge.HostJsScope;
import cn.jpush.android.webview.bridge.d;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import java.io.File;
import java.util.Locale;
/* loaded from: classes.dex */
public class c extends ProxyActivityAction {

    /* renamed from: a  reason: collision with root package name */
    public static d f3349a;

    /* renamed from: d  reason: collision with root package name */
    private String f3352d;

    /* renamed from: f  reason: collision with root package name */
    private WebView f3354f;

    /* renamed from: g  reason: collision with root package name */
    private RelativeLayout f3355g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f3356h;

    /* renamed from: i  reason: collision with root package name */
    private ImageButton f3357i;

    /* renamed from: j  reason: collision with root package name */
    private ProgressBar f3358j;

    /* renamed from: k  reason: collision with root package name */
    private a f3359k;

    /* renamed from: b  reason: collision with root package name */
    private int f3350b = 0;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3351c = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3353e = false;

    /* renamed from: l  reason: collision with root package name */
    private View.OnClickListener f3360l = new View.OnClickListener() { // from class: cn.jpush.android.ui.c.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view != null) {
                try {
                    if (view.getContext() == null || !(view.getContext() instanceof Activity)) {
                        return;
                    }
                    ((Activity) view.getContext()).onBackPressed();
                } catch (Throwable unused) {
                }
            }
        }
    };

    private cn.jpush.android.d.d a(Activity activity, Intent intent) {
        cn.jpush.android.d.d a10 = cn.jpush.android.aa.c.a(activity, activity.getIntent());
        if (a10 != null) {
            return a10;
        }
        Logger.dd("PushActivityImpl", "parse entity form plugin plateform");
        String uri = intent.getData() != null ? intent.getData().toString() : null;
        if (TextUtils.isEmpty(uri) && intent.getExtras() != null) {
            uri = intent.getExtras().getString("JMessageExtra");
        }
        Logger.d("PushActivityImpl", "content:" + uri);
        return cn.jpush.android.ae.b.a(activity, uri, "");
    }

    private void a(Activity activity, cn.jpush.android.d.d dVar) {
        if (dVar == null) {
            Logger.ww("PushActivityImpl", "Null message entity! Close PushActivity!");
        } else if (dVar.f3031q == 0) {
            activity.setRequestedOrientation(1);
            b(activity, dVar);
            return;
        } else {
            Logger.w("PushActivityImpl", "Invalid msg type to show - " + dVar.f3031q);
            cn.jpush.android.aa.c.e(activity, dVar);
        }
        activity.finish();
    }

    private void b() {
        try {
            h.a(this.f3354f, "addJavascriptInterface", new Class[]{Object.class, String.class}, new Object[]{f3349a, "JPushWeb"});
        } catch (Throwable th2) {
            th2.printStackTrace();
            Logger.e("PushActivityImpl", "addJavascriptInterface failed:" + th2.toString());
        }
    }

    private void b(Activity activity) {
        if (activity.getIntent() != null) {
            try {
                this.f3351c = activity.getIntent().getBooleanExtra(PushActivity.FROM_OTHER_WAY, false);
                cn.jpush.android.d.d a10 = a(activity, activity.getIntent());
                if (a10 != null) {
                    this.f3352d = a10.f3017c;
                    this.f3353e = !TextUtils.isEmpty(a10.f3006bb);
                    a(activity, a10);
                    cn.jpush.android.k.a.a(activity);
                    if (this.f3353e) {
                        cn.jpush.android.helper.c.a(this.f3352d, 1311, String.format(Locale.ENGLISH, "{\"url\":\"%s\"}", a10.V), activity.getApplicationContext());
                    }
                } else {
                    Logger.ww("PushActivityImpl", "Warning，null message entity! Close PushActivity!");
                    activity.finish();
                }
                return;
            } catch (Throwable th2) {
                Logger.ee("PushActivityImpl", "Extra data is not serializable!");
                th2.printStackTrace();
            }
        } else {
            Logger.ww("PushActivityImpl", "PushActivity get NULL intent!");
        }
        activity.finish();
    }

    private void b(Activity activity, cn.jpush.android.d.d dVar) {
        String str;
        Logger.i("PushActivityImpl", "Action: processShow");
        if (dVar == null) {
            Logger.ww("PushActivityImpl", "Null message entity! Close PushActivity!");
        } else if (dVar.f2992aa != 0) {
            return;
        } else {
            this.f3350b = dVar.Y;
            int identifier = activity.getResources().getIdentifier("jpush_webview_layout", "layout", activity.getPackageName());
            if (identifier == 0) {
                str = "Please add layout resource jpush_webview_layout.xml to res/layout !";
            } else {
                activity.setContentView(identifier);
                String str2 = dVar.V;
                if (cn.jpush.android.af.a.c(str2)) {
                    String str3 = dVar.X;
                    if (dVar.f3032r) {
                        int identifier2 = activity.getResources().getIdentifier("actionbarLayoutId", "id", activity.getPackageName());
                        if (identifier2 == 0) {
                            str = "Please use default code in jpush_webview_layout.xml!";
                        } else {
                            View findViewById = activity.findViewById(identifier2);
                            if (findViewById != null) {
                                a(activity, findViewById, dVar);
                                if (TextUtils.isEmpty(str3) || !new File(str3.replace("file://", "")).exists() || this.f3351c) {
                                    this.f3354f.loadUrl(str2);
                                } else {
                                    this.f3354f.loadUrl(str3);
                                }
                            }
                        }
                    }
                    if (this.f3351c || this.f3353e) {
                        return;
                    }
                    cn.jpush.android.helper.c.a(this.f3352d, 1000, activity.getApplicationContext());
                    return;
                }
                cn.jpush.android.aa.c.e(activity, dVar);
            }
            Logger.ee("PushActivityImpl", str);
        }
        activity.finish();
    }

    private void c(Activity activity) {
        try {
            WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
            attributes.flags &= -1025;
            activity.getWindow().setAttributes(attributes);
            activity.getWindow().clearFlags(512);
        } catch (Throwable unused) {
            Logger.w("PushActivityImpl", "quitFullScreen errno");
        }
    }

    public void a() {
        try {
            RelativeLayout relativeLayout = this.f3355g;
            if (relativeLayout == null || relativeLayout.getVisibility() != 8) {
                return;
            }
            this.f3355g.setVisibility(0);
            c((Activity) this.f3355g.getContext());
            this.f3357i.setOnClickListener(this.f3360l);
            WebView webView = this.f3354f;
            if (webView != null) {
                webView.postDelayed(new e("PushActivityImpl#showTitleBar") { // from class: cn.jpush.android.ui.c.3
                    @Override // cn.jpush.android.af.e
                    public void a() {
                        try {
                            if (c.this.f3354f != null) {
                                c.this.f3354f.clearHistory();
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }, 1000L);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(Activity activity) {
        activity.finish();
        if (1 == this.f3350b) {
            try {
                ActivityManager activityManager = (ActivityManager) activity.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
                ComponentName componentName = activityManager.getRunningTasks(1).get(0).baseActivity;
                ComponentName componentName2 = activityManager.getRunningTasks(1).get(0).topActivity;
                Logger.d("PushActivityImpl", "baseActivity  = " + componentName.toString());
                Logger.d("PushActivityImpl", "topActivity  = " + componentName2.toString());
                if (componentName2.toString().equals(componentName.toString())) {
                    cn.jpush.android.af.a.f(activity);
                }
            } catch (Throwable unused) {
                Logger.ww("PushActivityImpl", "Get running tasks failed.");
                cn.jpush.android.af.a.f(activity);
            }
        }
    }

    public void a(Activity activity, View view, cn.jpush.android.d.d dVar) {
        try {
            String str = dVar.W;
            view.setFocusable(true);
            int identifier = activity.getResources().getIdentifier("fullWebView", "id", activity.getPackageName());
            if (identifier > 0) {
                ((LinearLayout) view).removeView(activity.findViewById(identifier));
            }
            WebView webView = new WebView(activity.getApplicationContext());
            this.f3354f = webView;
            webView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            this.f3354f.setBackgroundColor(Color.parseColor("#000000"));
            ((LinearLayout) view).addView(this.f3354f);
            this.f3355g = (RelativeLayout) activity.findViewById(activity.getResources().getIdentifier("rlRichpushTitleBar", "id", activity.getPackageName()));
            this.f3356h = (TextView) activity.findViewById(activity.getResources().getIdentifier("tvRichpushTitle", "id", activity.getPackageName()));
            this.f3357i = (ImageButton) activity.findViewById(activity.getResources().getIdentifier("imgRichpushBtnBack", "id", activity.getPackageName()));
            this.f3358j = (ProgressBar) activity.findViewById(activity.getResources().getIdentifier("pushPrograssBar", "id", activity.getPackageName()));
            if (this.f3354f == null || this.f3355g == null || this.f3356h == null || this.f3357i == null) {
                Logger.ee("PushActivityImpl", "Please use default code in jpush_webview_layout.xml!");
                activity.finish();
            }
            if (1 == dVar.Z) {
                this.f3355g.setVisibility(8);
                activity.getWindow().setFlags(1024, 1024);
            } else {
                this.f3356h.setText(str);
                this.f3357i.setOnClickListener(this.f3360l);
                j.a(activity.getApplicationContext(), this.f3357i, true, 10, 6, 10, 6);
            }
            this.f3354f.setScrollbarFadingEnabled(true);
            this.f3354f.setScrollBarStyle(TPMediaCodecProfileLevel.HEVCHighTierLevel62);
            WebSettings settings = this.f3354f.getSettings();
            settings.setAllowFileAccess(true);
            cn.jpush.android.af.a.a(settings);
            cn.jpush.android.af.a.a(this.f3354f);
            settings.setSavePassword(false);
            f3349a = new d(activity, dVar);
            Logger.dd("PushActivityImpl", "Android sdk version greater than or equal to 17, Java—Js interact by annotation!");
            b();
            this.f3354f.setWebChromeClient(new cn.jpush.android.webview.bridge.a("JPushWeb", HostJsScope.class, this.f3358j, this.f3356h));
            a aVar = new a(dVar, activity);
            this.f3359k = aVar;
            aVar.a(this.f3353e);
            this.f3354f.setWebViewClient(this.f3359k);
            HostJsScope.setWebViewHelper(f3349a);
        } catch (Throwable unused) {
        }
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onBackPressed(Activity activity) {
        WebView webView = this.f3354f;
        if (webView != null && webView.canGoBack()) {
            this.f3354f.goBack();
            return;
        }
        cn.jpush.android.helper.c.a(this.f3352d, this.f3353e ? 1251 : 1006, activity);
        a(activity);
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onConfigurationChanged(Activity activity, Configuration configuration) {
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onCreate(Activity activity, Bundle bundle) {
        cn.jpush.android.af.a.e(activity);
        b(activity);
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public boolean onCreateOptionsMenu(Activity activity, Menu menu) {
        return false;
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onDestroy(Activity activity) {
        if (this.f3354f != null) {
            if (this.f3353e && !TextUtils.isEmpty(this.f3352d) && activity != null) {
                a aVar = this.f3359k;
                cn.jpush.android.helper.c.a(this.f3352d, 1313, String.format(Locale.ENGLISH, "{\"url\":\"%s\"}", aVar != null ? aVar.a() : ""), activity.getApplicationContext());
            }
            ViewParent parent = this.f3354f.getParent();
            if (parent != null) {
                Logger.d("PushActivityImpl", "webview parent view " + parent.toString());
                ((ViewGroup) parent).removeView(this.f3354f);
            }
            this.f3354f.getSettings().setJavaScriptEnabled(false);
            this.f3354f.clearCache(true);
            this.f3354f.clearHistory();
            this.f3354f.clearView();
            this.f3354f.removeAllViews();
            this.f3354f.clearSslPreferences();
            this.f3354f.destroy();
            this.f3354f = null;
        }
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onEvent(Activity activity, String str, Bundle bundle) {
        if (TextUtils.isEmpty(str) || !str.equals("push_show_titlebar")) {
            return;
        }
        activity.runOnUiThread(new e("PushActivityImpl#onEvent") { // from class: cn.jpush.android.ui.c.1
            @Override // cn.jpush.android.af.e
            public void a() {
                c.this.a();
            }
        });
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public boolean onKeyDown(Activity activity, int i9, KeyEvent keyEvent) {
        return false;
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onNewIntent(Activity activity, Intent intent) {
        activity.setIntent(intent);
        b(activity);
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onPause(Activity activity) {
        WebView webView = this.f3354f;
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onRestart(Activity activity) {
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onResume(Activity activity) {
        WebView webView = this.f3354f;
        if (webView != null) {
            webView.onResume();
            HostJsScope.setWebViewHelper(f3349a);
        }
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onStart(Activity activity, Intent intent) {
    }

    @Override // cn.jpush.android.local.ProxyActivityAction
    public void onStop(Activity activity) {
    }
}
