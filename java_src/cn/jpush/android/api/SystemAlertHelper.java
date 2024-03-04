package cn.jpush.android.api;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ImageButton;
import cn.jpush.android.af.a;
import cn.jpush.android.af.e;
import cn.jpush.android.d.d;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.webview.bridge.HostJsScope;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class SystemAlertHelper {

    /* renamed from: a  reason: collision with root package name */
    private static int f2926a = 400;

    /* renamed from: b  reason: collision with root package name */
    private static int f2927b = 600;

    /* renamed from: c  reason: collision with root package name */
    private static ImageButton f2928c;

    /* renamed from: d  reason: collision with root package name */
    private static WindowManager f2929d;

    /* renamed from: e  reason: collision with root package name */
    private static WebView f2930e;

    private static DisplayMetrics a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            Logger.d("SystemAlertHelper", "width : " + displayMetrics.widthPixels);
            Logger.d("SystemAlertHelper", "height : " + displayMetrics.heightPixels);
            Logger.d("SystemAlertHelper", "density : " + displayMetrics.density);
            Logger.d("SystemAlertHelper", "densityDpi : " + displayMetrics.densityDpi);
            Logger.d("SystemAlertHelper", "xdpi : " + displayMetrics.xdpi);
            Logger.d("SystemAlertHelper", "ydpi : " + displayMetrics.ydpi);
            return displayMetrics;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, WindowManager windowManager, WebView webView, ImageButton imageButton) {
        int i9;
        int i10;
        DisplayMetrics a10 = a(context);
        if (a10 != null) {
            int i11 = (a10.widthPixels * 3) / 4;
            f2926a = i11;
            int i12 = a10.heightPixels / 2;
            f2927b = i12;
            i9 = i11 / 2;
            i10 = -(i12 / 2);
        } else {
            i9 = 200;
            i10 = -300;
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.format = 1;
        layoutParams.gravity = 17;
        layoutParams.type = 2003;
        layoutParams.flags |= 552;
        layoutParams.width = f2926a;
        layoutParams.height = f2927b;
        layoutParams.x = -1;
        layoutParams.y = -1;
        windowManager.addView(webView, layoutParams);
        imageButton.setBackgroundColor(context.getResources().getColor(17170445));
        imageButton.setImageBitmap(getImageFromAssetsFile(context, "jpush_close.png"));
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.y = i10;
        layoutParams.x = i9;
        windowManager.addView(imageButton, layoutParams);
    }

    public static void close() {
        WindowManager windowManager = f2929d;
        if (windowManager == null) {
            return;
        }
        try {
            WebView webView = f2930e;
            if (webView != null) {
                windowManager.removeView(webView);
            }
            ImageButton imageButton = f2928c;
            if (imageButton != null) {
                f2929d.removeView(imageButton);
            }
        } catch (Throwable unused) {
        }
        f2929d = null;
        f2930e = null;
        f2928c = null;
    }

    public static Bitmap getImageFromAssetsFile(Context context, String str) {
        Bitmap bitmap = null;
        try {
            InputStream open = context.getResources().getAssets().open(str);
            bitmap = BitmapFactory.decodeStream(open);
            open.close();
            return bitmap;
        } catch (IOException e10) {
            e10.printStackTrace();
            return bitmap;
        }
    }

    public static int getWindowHeight() {
        return f2927b;
    }

    public static int getWindowWidth() {
        return f2926a;
    }

    public static void startActivityByName(WebView webView, String str, String str2) {
        Context appContext;
        Logger.d("SystemAlertHelper", "action --- startActivityByName--------activityName : " + str + "----- params : " + str2);
        if (TextUtils.isEmpty(str)) {
            Logger.ee("SystemAlertHelper", "The activity name is null or empty, Give up..");
        }
        if (webView == null || (appContext = JPushConstants.getAppContext(webView.getContext())) == null) {
            return;
        }
        try {
            Intent intent = new Intent(webView.getContext(), Class.forName(str));
            intent.putExtra(JPushInterface.EXTRA_ACTIVITY_PARAM, str2);
            intent.setFlags(268435456);
            appContext.startActivity(intent);
            close();
        } catch (Exception unused) {
            Logger.ee("SystemAlertHelper", "The activity name is invalid, Give up..");
        }
    }

    public static void systemAlert() {
    }

    public static void systemAlert(final Context context, final d dVar) {
        new Handler(Looper.getMainLooper()).post(new e("SystemAlertHelper#systemAlert") { // from class: cn.jpush.android.api.SystemAlertHelper.1
            @Override // cn.jpush.android.af.e
            public void a() {
                String str = dVar.V;
                if (TextUtils.isEmpty(str)) {
                    Logger.e("SystemAlertHelper", " not Rich Notification");
                    return;
                }
                WindowManager unused = SystemAlertHelper.f2929d = (WindowManager) context.getSystemService("window");
                WebView unused2 = SystemAlertHelper.f2930e = new WebView(context);
                ImageButton unused3 = SystemAlertHelper.f2928c = new ImageButton(context);
                SystemAlertHelper.b(context, SystemAlertHelper.f2929d, SystemAlertHelper.f2930e, SystemAlertHelper.f2928c);
                SystemAlertHelper.f2930e.setHorizontalScrollBarEnabled(false);
                SystemAlertHelper.f2930e.setVerticalScrollBarEnabled(false);
                SystemAlertHelper.f2930e.setScrollbarFadingEnabled(true);
                SystemAlertHelper.f2930e.setScrollBarStyle(TPMediaCodecProfileLevel.HEVCHighTierLevel62);
                a.a(SystemAlertHelper.f2930e.getSettings());
                a.a(SystemAlertHelper.f2930e);
                SystemAlertHelper.f2930e.setWebChromeClient(new cn.jpush.android.webview.bridge.a("JPushWeb", HostJsScope.class, null, null));
                SystemAlertHelper.f2930e.setWebViewClient(new cn.jpush.android.ui.a(dVar, context));
                if (!TextUtils.isEmpty(str) && str.startsWith("http")) {
                    SystemAlertHelper.f2930e.loadUrl(str);
                }
                SystemAlertHelper.f2928c.setOnClickListener(new View.OnClickListener() { // from class: cn.jpush.android.api.SystemAlertHelper.1.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        SystemAlertHelper.close();
                    }
                });
            }
        });
    }
}
