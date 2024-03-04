package cn.jpush.android.s;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.r.b;
import cn.jpush.android.s.c;
import cn.jpush.android.t.b;
/* loaded from: classes.dex */
public class e extends c {

    /* renamed from: c  reason: collision with root package name */
    private cn.jpush.android.r.b f3260c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(cn.jpush.android.w.c cVar, cn.jpush.android.x.e eVar) {
        super(cVar, eVar);
    }

    @Override // cn.jpush.android.s.c
    public void a(final Context context) {
        final View d10 = d();
        cn.jpush.android.w.c f10 = f();
        if (f10 == null || d10 == null) {
            return;
        }
        final cn.jpush.android.x.c cVar = (cn.jpush.android.x.c) this.f3255a;
        boolean z10 = true;
        if (cVar != null) {
            cn.jpush.android.t.b.a(context, d10, cVar.a() == 53 ? 2 : 1, 1000L, new b.a() { // from class: cn.jpush.android.s.e.1
                @Override // cn.jpush.android.t.b.a
                public void a() {
                    Logger.d("InAppFloatBindingWrapper", "in-app float message show success use animation");
                }
            });
        }
        z10 = (cVar == null || !cVar.u().bq) ? false : false;
        Logger.d("InAppFloatBindingWrapper", "message is fixed: " + z10 + ", float auto dismiss time: " + f10.i());
        if (!z10) {
            cn.jpush.android.r.b bVar = this.f3260c;
            if (bVar == null) {
                bVar = new cn.jpush.android.r.b();
            }
            cn.jpush.android.r.b bVar2 = bVar;
            this.f3260c = bVar2;
            bVar2.a(new b.a() { // from class: cn.jpush.android.s.e.2
                @Override // cn.jpush.android.r.b.a
                public void a() {
                    try {
                        Logger.d("InAppFloatBindingWrapper", "dismiss timer reach, dismiss in-app message, message to user: " + cVar.u().aL);
                        cn.jpush.android.x.c cVar2 = cVar;
                        if (cVar2 != null) {
                            cn.jpush.android.p.a.a(context, "cn.jpush.android.intent.IN_APP_MSG_DISMISS_INTERVAL", cVar2.u(), false);
                            cn.jpush.android.t.b.b(context, d10, cVar.a() == 53 ? 2 : 1, 1000L, new b.a() { // from class: cn.jpush.android.s.e.2.1
                                @Override // cn.jpush.android.t.b.a
                                public void a() {
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    c.a aVar = e.this.f3256b;
                                    if (aVar != null) {
                                        cn.jpush.android.x.c cVar3 = cVar;
                                        cVar3.f3529u = 2;
                                        aVar.a(context, d10, cVar3);
                                    }
                                }
                            });
                        }
                    } catch (Throwable th2) {
                        Logger.w("InAppFloatBindingWrapper", "in-app slide to dismiss error." + th2.getMessage());
                    }
                }
            }, f10.i(), 1000L);
        }
        super.a(context);
    }

    @Override // cn.jpush.android.s.c
    public void b(Context context) {
        WebView webView = (WebView) d();
        f();
    }
}
