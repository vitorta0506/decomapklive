package cn.jpush.android.s;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.r.b;
import cn.jpush.android.r.c;
import cn.jpush.android.s.c;
import cn.jpush.android.t.b;
import cn.jpush.android.x.g;
/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: c  reason: collision with root package name */
    private cn.jpush.android.r.b f3236c;

    /* renamed from: d  reason: collision with root package name */
    private LinearLayout f3237d;

    /* renamed from: e  reason: collision with root package name */
    private int f3238e;

    /* renamed from: f  reason: collision with root package name */
    private int f3239f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(cn.jpush.android.w.c cVar, cn.jpush.android.x.e eVar) {
        super(cVar, eVar);
        this.f3238e = -1;
        this.f3239f = -1;
    }

    private void g() {
        cn.jpush.android.r.b bVar = this.f3236c;
        if (bVar != null) {
            bVar.a();
        }
    }

    @Override // cn.jpush.android.s.c
    public WindowManager.LayoutParams a(Context context, cn.jpush.android.w.c cVar, boolean z10, final WindowManager windowManager, View view) {
        Logger.d("InAppBannerNotificationBindingWrapper", "getLayoutParams");
        if (cVar == null || context == null) {
            return null;
        }
        try {
            int b10 = cVar.b() | 131072 | 32 | 8;
            int i9 = z10 ? Build.VERSION.SDK_INT >= 26 ? 2038 : 2003 : 1003;
            boolean z11 = context.getResources().getConfiguration().orientation == 2;
            int g10 = cn.jpush.android.w.a.g(context, z11);
            int h10 = cn.jpush.android.w.a.h(context, z11);
            int c10 = cn.jpush.android.w.a.c(context, z11);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, c10, i9, b10, -3);
            layoutParams.dimAmount = 0.3f;
            layoutParams.gravity = 48;
            layoutParams.windowAnimations = 0;
            Logger.d("InAppBannerNotificationBindingWrapper", "dialog view w: " + g10 + ", h: " + h10 + ",heightMax:" + c10);
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(g10, h10, i9, b10, -3);
            LinearLayout linearLayout = new LinearLayout(context);
            this.f3237d = linearLayout;
            linearLayout.addView(view, layoutParams2);
            layoutParams.y = g.a(context);
            this.f3237d.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: cn.jpush.android.s.b.1

                /* renamed from: a  reason: collision with root package name */
                int f3240a = -100;

                /* renamed from: b  reason: collision with root package name */
                int f3241b = -100;

                /* renamed from: c  reason: collision with root package name */
                int f3242c = -100;

                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                    int width = view2.getWidth();
                    if (-100 == this.f3241b || -100 == this.f3242c) {
                        DisplayMetrics a10 = j.a(view2.getContext());
                        this.f3241b = a10.widthPixels;
                        this.f3242c = a10.heightPixels;
                    }
                    if (this.f3241b == width || this.f3242c == width) {
                        if (-100 == this.f3240a) {
                            this.f3240a = width;
                        }
                        if (this.f3240a != width) {
                            windowManager.removeViewImmediate(view2);
                            Logger.d("InAppBannerNotificationBindingWrapper", "linearLayout onLayoutChange removeViewImmediate:" + this.f3240a);
                        }
                    }
                }
            });
            windowManager.addView(this.f3237d, layoutParams);
            return layoutParams;
        } catch (Throwable th2) {
            Logger.w("InAppBannerNotificationBindingWrapper", "[getLayoutParams] error." + th2.getMessage());
            return null;
        }
    }

    @Override // cn.jpush.android.s.c
    public void a() {
        g();
        super.a();
    }

    @Override // cn.jpush.android.s.c
    public void a(final WindowManager windowManager, final Context context) {
        final View d10;
        final cn.jpush.android.w.c f10;
        try {
            Logger.d("InAppBannerNotificationBindingWrapper", "startViewAnimation.");
            d10 = d();
            f10 = f();
        } catch (Throwable th2) {
            Logger.w("InAppBannerNotificationBindingWrapper", "start in-app with animation error. " + th2.getMessage());
        }
        if (f10 != null && d10 != null) {
            boolean b10 = ((cn.jpush.android.x.b) c()).b();
            final View b11 = b();
            cn.jpush.android.t.b.a(context, d10, b11, new b.a() { // from class: cn.jpush.android.s.b.2
                @Override // cn.jpush.android.t.b.a
                public void a() {
                    Logger.d("InAppBannerNotificationBindingWrapper", "in-app message show success use animation.");
                }
            }, windowManager, b10);
            if (f10.h()) {
                d10.setOnTouchListener(new cn.jpush.android.r.c(this, null, new c.a() { // from class: cn.jpush.android.s.b.3
                    @Override // cn.jpush.android.r.c.a
                    public void a(View view, Object obj) {
                        b bVar = b.this;
                        c.a aVar = bVar.f3256b;
                        if (aVar != null) {
                            cn.jpush.android.x.e eVar = bVar.f3255a;
                            if (eVar != null) {
                                eVar.f3529u = 1;
                            }
                            aVar.a(context, view, eVar);
                        }
                    }

                    @Override // cn.jpush.android.r.c.a
                    public boolean a(Object obj) {
                        return true;
                    }
                }));
            }
            cn.jpush.android.x.e eVar = this.f3255a;
            boolean z10 = eVar != null && eVar.u().bq;
            Logger.d("InAppBannerNotificationBindingWrapper", "message is fixed: " + z10 + ", banner auto dismiss time: " + f10.i());
            if (f10.g() && !z10) {
                cn.jpush.android.r.b bVar = this.f3236c;
                if (bVar == null) {
                    bVar = new cn.jpush.android.r.b();
                    this.f3236c = bVar;
                }
                cn.jpush.android.r.b bVar2 = bVar;
                this.f3236c = bVar2;
                bVar2.a(new b.a() { // from class: cn.jpush.android.s.b.4
                    @Override // cn.jpush.android.r.b.a
                    public void a() {
                        try {
                            Logger.d("InAppBannerNotificationBindingWrapper", "dismiss timer reach, dismiss in-app message");
                            cn.jpush.android.x.e eVar2 = b.this.f3255a;
                            if (eVar2 != null) {
                                cn.jpush.android.p.a.a(context, "cn.jpush.android.intent.IN_APP_MSG_DISMISS_INTERVAL", eVar2.u(), false);
                            }
                            f10.k();
                            cn.jpush.android.t.b.a(context, d10, b11, new b.a() { // from class: cn.jpush.android.s.b.4.1
                                @Override // cn.jpush.android.t.b.a
                                public void a() {
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    b bVar3 = b.this;
                                    c.a aVar = bVar3.f3256b;
                                    if (aVar != null) {
                                        cn.jpush.android.x.e eVar3 = bVar3.f3255a;
                                        if (eVar3 != null) {
                                            eVar3.f3529u = 2;
                                        }
                                        aVar.a(context, d10, eVar3);
                                    }
                                }
                            }, windowManager);
                        } catch (Throwable th3) {
                            Logger.w("InAppBannerNotificationBindingWrapper", "in-app slide to dismiss error." + th3.getMessage());
                        }
                    }
                }, f10.i(), 1000L);
            }
            Logger.d("InAppBannerNotificationBindingWrapper", "in app animation with: slideToShow: " + f10.f() + " , autoSlideToDismiss: " + f10.g() + ", swipeToDismiss: " + f10.h());
            super.a(context);
        }
    }

    @Override // cn.jpush.android.s.c
    public View b() {
        return this.f3237d;
    }

    @Override // cn.jpush.android.s.c
    public void b(Context context) {
    }

    @Override // cn.jpush.android.s.c
    public boolean c(Context context) {
        cn.jpush.android.webview.bridge.d e10 = e();
        return e10 != null && e10.a() == context.getResources().getConfiguration().orientation;
    }
}
