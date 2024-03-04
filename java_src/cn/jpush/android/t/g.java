package cn.jpush.android.t;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import cn.jpush.android.helper.Logger;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3323a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3324b = false;

    /* renamed from: c  reason: collision with root package name */
    private String f3325c = "";

    private WindowManager a(Context context) {
        if (context != null) {
            return (WindowManager) context.getSystemService("window");
        }
        return null;
    }

    public int a(Context context, cn.jpush.android.s.c cVar, boolean z10) {
        try {
            this.f3325c = "";
            this.f3324b = z10;
            cn.jpush.android.w.c f10 = cVar.f();
            View d10 = cVar.d();
            if (d10 != null) {
                WindowManager a10 = a(context);
                if (context instanceof Activity) {
                    this.f3325c = context.getClass().getCanonicalName();
                    context = context.getApplicationContext();
                }
                if (a10 != null) {
                    if (!cVar.c(context)) {
                        Logger.d("InAppWindowManager", "isSameOrientation is false");
                        return 104;
                    }
                    cVar.a(context, f10, z10, a10, d10);
                    cVar.b(context);
                    cVar.a(a10, context);
                    this.f3323a = true;
                    return 0;
                }
                return 102;
            }
            return 101;
        } catch (Throwable th2) {
            Logger.w("InAppWindowManager", "window manage add view failed. " + th2.getMessage());
            return 103;
        }
    }

    public void a(Context context, cn.jpush.android.s.c cVar) {
        if (cVar == null || context == null) {
            return;
        }
        try {
            View d10 = cVar.d();
            View b10 = cVar.b();
            if (b10 != null) {
                d10 = b10;
            }
            if (d10 != null) {
                WindowManager a10 = a(context);
                if (a(cVar) && a10 != null) {
                    a10.removeViewImmediate(d10);
                    this.f3323a = false;
                }
                cVar.a();
            }
            this.f3325c = "";
        } catch (Throwable th2) {
            Logger.w("InAppWindowManager", "[destroy]  removeViewImmediate view from window error. " + th2.getMessage());
        }
    }

    public boolean a() {
        return this.f3324b;
    }

    public boolean a(cn.jpush.android.s.c cVar) {
        if (cVar == null || cVar.d() == null) {
            return false;
        }
        boolean isShown = cVar.d().isShown();
        Logger.d("InAppWindowManager", "webview is displayed, status: " + isShown + ", isDisplayed: " + this.f3323a);
        return isShown && this.f3323a;
    }

    public boolean a(String str) {
        Logger.d("InAppWindowManager", "[checkShouldDestroy] drawlay: " + this.f3324b + ", showActivityName: " + this.f3325c + ", curActivityName: " + str);
        return !this.f3324b && b(str);
    }

    public boolean b(cn.jpush.android.s.c cVar) {
        return (cVar == null || cVar.d() == null) ? false : true;
    }

    public boolean b(String str) {
        return !TextUtils.isEmpty(str) && str.equals(this.f3325c);
    }
}
