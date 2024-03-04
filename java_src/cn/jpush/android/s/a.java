package cn.jpush.android.s;

import android.content.Context;
import android.view.View;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.r.b;
import cn.jpush.android.r.c;
import cn.jpush.android.s.c;
import cn.jpush.android.t.b;
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: c  reason: collision with root package name */
    private cn.jpush.android.r.b f3227c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(cn.jpush.android.w.c cVar, cn.jpush.android.x.e eVar) {
        super(cVar, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(boolean z10) {
        cn.jpush.android.w.c f10 = f();
        if (f10 == null) {
            return -1;
        }
        int l10 = z10 ? f10.l() : f10.m();
        if (l10 != 0) {
            l10 = 0;
        }
        if (l10 == 0) {
            return f10.c() == 80 ? 0 : 3;
        } else if (l10 != 1) {
            return l10 != 2 ? 3 : 1;
        } else {
            return 2;
        }
    }

    private void g() {
        cn.jpush.android.r.b bVar = this.f3227c;
        if (bVar != null) {
            bVar.a();
        }
    }

    @Override // cn.jpush.android.s.c
    public void a() {
        g();
        super.a();
    }

    @Override // cn.jpush.android.s.c
    public void a(final Context context) {
        final View d10;
        final cn.jpush.android.w.c f10;
        try {
            d10 = d();
            f10 = f();
        } catch (Throwable th2) {
            Logger.w("InAppBannerBindingWrapper", "start in-app with animation error. " + th2.getMessage());
        }
        if (f10 != null && d10 != null) {
            boolean z10 = true;
            if (f10.f()) {
                int a10 = a(true);
                if (a10 < 0) {
                    return;
                }
                cn.jpush.android.t.b.a(context, d10, a10, f10.j(), new b.a() { // from class: cn.jpush.android.s.a.1
                    @Override // cn.jpush.android.t.b.a
                    public void a() {
                        Logger.d("InAppBannerBindingWrapper", "in-app message show success use animation.");
                    }
                });
            } else {
                Logger.d("InAppBannerBindingWrapper", "in-app message show success directory.");
            }
            if (f10.h()) {
                d10.setOnTouchListener(new cn.jpush.android.r.c(this, null, new c.a() { // from class: cn.jpush.android.s.a.2
                    @Override // cn.jpush.android.r.c.a
                    public void a(View view, Object obj) {
                        a aVar = a.this;
                        c.a aVar2 = aVar.f3256b;
                        if (aVar2 != null) {
                            cn.jpush.android.x.e eVar = aVar.f3255a;
                            if (eVar != null) {
                                eVar.f3529u = 1;
                            }
                            aVar2.a(context, view, eVar);
                        }
                    }

                    @Override // cn.jpush.android.r.c.a
                    public boolean a(Object obj) {
                        return true;
                    }
                }));
            }
            cn.jpush.android.x.e eVar = this.f3255a;
            if (eVar == null || !eVar.u().bq) {
                z10 = false;
            }
            Logger.d("InAppBannerBindingWrapper", "message is fixed: " + z10 + ", banner auto dismiss time: " + f10.i());
            if (f10.g() && !z10) {
                cn.jpush.android.r.b bVar = this.f3227c;
                if (bVar == null) {
                    bVar = new cn.jpush.android.r.b();
                    this.f3227c = bVar;
                }
                cn.jpush.android.r.b bVar2 = bVar;
                this.f3227c = bVar2;
                bVar2.a(new b.a() { // from class: cn.jpush.android.s.a.3
                    @Override // cn.jpush.android.r.b.a
                    public void a() {
                        try {
                            Logger.d("InAppBannerBindingWrapper", "dismiss timer reach, dismiss in-app message");
                            cn.jpush.android.x.e eVar2 = a.this.f3255a;
                            if (eVar2 != null) {
                                cn.jpush.android.p.a.a(context, "cn.jpush.android.intent.IN_APP_MSG_DISMISS_INTERVAL", eVar2.u(), false);
                            }
                            int a11 = a.this.a(false);
                            if (a11 < 0) {
                                return;
                            }
                            cn.jpush.android.t.b.b(context, d10, a11, f10.k(), new b.a() { // from class: cn.jpush.android.s.a.3.1
                                @Override // cn.jpush.android.t.b.a
                                public void a() {
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    a aVar = a.this;
                                    c.a aVar2 = aVar.f3256b;
                                    if (aVar2 != null) {
                                        cn.jpush.android.x.e eVar3 = aVar.f3255a;
                                        if (eVar3 != null) {
                                            eVar3.f3529u = 2;
                                        }
                                        aVar2.a(context, d10, eVar3);
                                    }
                                }
                            });
                        } catch (Throwable th3) {
                            Logger.w("InAppBannerBindingWrapper", "in-app slide to dismiss error." + th3.getMessage());
                        }
                    }
                }, f10.i(), 1000L);
            }
            Logger.d("InAppBannerBindingWrapper", "in app animation with: slideToShow: " + f10.f() + " , autoSlideToDismiss: " + f10.g() + ", swipeToDismiss: " + f10.h());
            super.a(context);
        }
    }

    @Override // cn.jpush.android.s.c
    public void b(Context context) {
    }
}
