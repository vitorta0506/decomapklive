package cn.jpush.android.x;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.w.c;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static int f3538a = 327938;

    /* renamed from: b  reason: collision with root package name */
    private int f3539b = 65824;

    public static int a(Context context) {
        int i9 = 48;
        if (context != null) {
            try {
                Resources resources = context.getResources();
                i9 = resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
            } catch (Throwable th2) {
                Logger.w("InflaterConfigModule", "get status bar height error, " + th2.getMessage());
            }
        }
        Logger.d("InflaterConfigModule", "status bar height: " + i9);
        return i9;
    }

    public static String a(int i9, int i10) {
        if (i10 == 1) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return "FLOAT_PORTRAIT";
                    }
                    return "MODAL_PORTRAIT";
                }
                return "BANNER_PORTRAIT";
            }
            return "FULL_SCREEN_PORTRAIT";
        } else if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return "FLOAT_LANDSCAPE";
                }
                return "MODAL_LANDSCAPE";
            }
            return "BANNER_LANDSCAPE";
        } else {
            return "FULL_SCREEN_LANDSCAPE";
        }
    }

    public cn.jpush.android.w.c a(Context context, DisplayMetrics displayMetrics, e eVar) {
        if (displayMetrics == null || eVar == null) {
            Logger.d("InflaterConfigModule", "provide portrait banner layout param is null, displayMetrics: " + displayMetrics + ", appMsg: " + eVar);
            return null;
        }
        b bVar = eVar instanceof b ? (b) eVar : null;
        if (bVar == null) {
            Logger.w("InflaterConfigModule", "not banner in app message instance");
            return null;
        }
        return cn.jpush.android.w.c.a().a(Float.valueOf(0.3f)).b(Float.valueOf(0.3f)).a(Integer.valueOf((int) (displayMetrics.heightPixels * 0.5f))).b(Integer.valueOf((int) (displayMetrics.widthPixels * 0.9f))).c(Integer.valueOf(bVar.e() == 0 ? 48 : 80)).d(Integer.valueOf(this.f3539b)).e((Integer) (-1)).f((Integer) (-2)).e(2).f(2).a(Boolean.TRUE).b(Boolean.valueOf(bVar.c() != -1)).d(0).c(a(context)).c(Boolean.valueOf(bVar.f())).a(true).a(bVar.g()).b(bVar.h()).c(bVar.i()).a(bVar.c()).b(bVar.d()).a();
    }

    public cn.jpush.android.w.c b(Context context, DisplayMetrics displayMetrics, e eVar) {
        if (displayMetrics == null || eVar == null) {
            Logger.d("InflaterConfigModule", "provide landscape banner layout param is null, displayMetrics: " + displayMetrics + ", appMsg: " + eVar);
            return null;
        }
        b bVar = eVar instanceof b ? (b) eVar : null;
        if (bVar == null) {
            Logger.w("InflaterConfigModule", "not banner in app message instance");
            return null;
        }
        return cn.jpush.android.w.c.a().a(Float.valueOf(0.3f)).b(Float.valueOf(0.3f)).a(Integer.valueOf((int) (displayMetrics.heightPixels * 0.5f))).b(Integer.valueOf((int) (displayMetrics.widthPixels * 0.9f))).c(Integer.valueOf(bVar.e() == 0 ? 48 : 80)).d(Integer.valueOf(this.f3539b)).e(Integer.valueOf(displayMetrics.heightPixels)).f((Integer) (-2)).e(20).f(20).d(0).c(a(context)).a(Boolean.TRUE).b(Boolean.valueOf(bVar.c() != -1)).c(Boolean.valueOf(bVar.f())).a(true).a(bVar.g()).b(bVar.h()).c(bVar.i()).a(bVar.c()).b(bVar.d()).a();
    }

    public cn.jpush.android.w.c c(Context context, DisplayMetrics displayMetrics, e eVar) {
        if (displayMetrics == null || eVar == null || context == null) {
            Logger.d("InflaterConfigModule", "provide portrait float layout param is null, displayMetrics: " + displayMetrics + ", appMsg: " + eVar + ", context: " + context);
            return null;
        }
        c cVar = eVar instanceof c ? (c) eVar : null;
        if (cVar == null) {
            Logger.w("InflaterConfigModule", "not float message instance");
            return null;
        }
        int a10 = cVar.a();
        double b10 = cVar.b();
        int a11 = a(context);
        if (b10 != 0.0d) {
            a11 = (int) ((displayMetrics.heightPixels - a11) * b10);
        }
        int l10 = cVar.l();
        int a12 = j.a(context, l10);
        int a13 = j.a(context, 6);
        Logger.d("InflaterConfigModule", "portrait float, orientation: " + a10 + ", heightPixels: " + displayMetrics.heightPixels + ", marginY: " + a11 + ", marginYPer: " + b10 + ", webwidth: " + l10 + ", pxWebWidth: " + a12 + ", marginX: " + a13);
        c.a a14 = cn.jpush.android.w.c.a().a(Integer.valueOf((int) (((float) displayMetrics.heightPixels) * 0.2f))).b(Integer.valueOf((int) (((float) displayMetrics.widthPixels) * 0.2f))).b(Float.valueOf(0.4f)).a(Float.valueOf(0.4f)).c(Integer.valueOf(a10)).d(a13).c(a11).d(Integer.valueOf(this.f3539b)).e(Integer.valueOf(a12)).f((Integer) (-2)).a(Boolean.TRUE);
        Boolean bool = Boolean.FALSE;
        return a14.b(bool).c(bool).a(cVar.c()).a();
    }

    public cn.jpush.android.w.c d(Context context, DisplayMetrics displayMetrics, e eVar) {
        if (displayMetrics == null || eVar == null || context == null) {
            Logger.d("InflaterConfigModule", "provide portrait float layout param is null, displayMetrics: " + displayMetrics + ", appMsg: " + eVar + ", context: " + context);
            return null;
        }
        c cVar = eVar instanceof c ? (c) eVar : null;
        if (cVar == null) {
            Logger.w("InflaterConfigModule", "not float message instance");
            return null;
        }
        int a10 = cVar.a();
        double b10 = cVar.b();
        int a11 = a(context);
        if (b10 != 0.0d) {
            a11 = (int) ((displayMetrics.heightPixels - a11) * b10);
        }
        int l10 = cVar.l();
        int a12 = j.a(context, l10);
        int a13 = j.a(context, 6);
        Logger.d("InflaterConfigModule", "landscape float, orientation: " + a10 + ", heightPixels: " + displayMetrics.heightPixels + ", marginY: " + a11 + ", marginYPer: " + b10 + ", webwidth: " + l10 + ", pxWebWidth: " + a12 + ", marginX: " + a13);
        c.a f10 = cn.jpush.android.w.c.a().a(Integer.valueOf((int) (((float) displayMetrics.heightPixels) * 0.9f))).b(Integer.valueOf((int) (((float) displayMetrics.widthPixels) * 0.9f))).b(Float.valueOf(0.8f)).a(Float.valueOf(0.8f)).c(Integer.valueOf(a10)).d(a13).c(a11).d(Integer.valueOf(this.f3539b)).e(Integer.valueOf(a12)).f((Integer) (-2));
        Boolean bool = Boolean.FALSE;
        return f10.a(bool).b(bool).c(bool).a(cVar.c()).a();
    }

    public cn.jpush.android.w.c e(Context context, DisplayMetrics displayMetrics, e eVar) {
        if (displayMetrics == null) {
            Logger.d("InflaterConfigModule", "provide portrait modal config displayMetrics is null");
            return null;
        }
        c.a f10 = cn.jpush.android.w.c.a().a(Integer.valueOf((int) (displayMetrics.heightPixels * 0.8d))).b(Integer.valueOf((int) (displayMetrics.widthPixels * 0.7f))).a(Float.valueOf(0.6f)).c(Float.valueOf(0.1f)).b(Float.valueOf(0.9f)).d(Float.valueOf(0.9f)).c((Integer) 17).d(0).c(a(context)).d(Integer.valueOf(f3538a)).e((Integer) (-1)).f((Integer) (-1));
        Boolean bool = Boolean.FALSE;
        return f10.a(bool).b(bool).c(bool).a();
    }

    public cn.jpush.android.w.c f(Context context, DisplayMetrics displayMetrics, e eVar) {
        if (displayMetrics == null) {
            Logger.d("InflaterConfigModule", "provide landscape modal config displayMetrics is null");
            return null;
        }
        c.a f10 = cn.jpush.android.w.c.a().a(Integer.valueOf((int) (displayMetrics.heightPixels * 0.8d))).b(Integer.valueOf(displayMetrics.widthPixels)).a(Float.valueOf(1.0f)).b(Float.valueOf(0.4f)).c(Float.valueOf(0.6f)).d(Float.valueOf(0.4f)).c((Integer) 17).d(0).c(a(context)).d(Integer.valueOf(f3538a)).e((Integer) (-1)).f((Integer) (-1));
        Boolean bool = Boolean.FALSE;
        return f10.a(bool).b(bool).c(bool).a();
    }
}
