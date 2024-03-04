package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class x extends Handler {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ w f36317a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(w wVar, Looper looper) {
        super(looper);
        this.f36317a = wVar;
    }

    @Override // android.os.Handler
    public void dispatchMessage(Message message) {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        w wVar;
        Context context5;
        HashMap<String, String> e10;
        Context context6;
        Context context7;
        Context context8;
        Context context9;
        Context context10;
        Context context11;
        Context context12;
        w wVar2;
        Context context13;
        Context context14;
        if (message.what != 19) {
            return;
        }
        String str = (String) message.obj;
        int i9 = message.arg1;
        synchronized (x0.class) {
            context = this.f36317a.f36304b;
            if (x0.b(context).f(str)) {
                context2 = this.f36317a.f36304b;
                if (x0.b(context2).a(str) < 10) {
                    am amVar = am.DISABLE_PUSH;
                    if (amVar.ordinal() == i9) {
                        context14 = this.f36317a.f36304b;
                        if ("syncing".equals(x0.b(context14).c(amVar))) {
                            wVar2 = this.f36317a;
                            wVar2.D(str, amVar, true, null);
                            context13 = this.f36317a.f36304b;
                            x0.b(context13).g(str);
                        }
                    }
                    amVar = am.ENABLE_PUSH;
                    if (amVar.ordinal() == i9) {
                        context12 = this.f36317a.f36304b;
                        if ("syncing".equals(x0.b(context12).c(amVar))) {
                            wVar2 = this.f36317a;
                            wVar2.D(str, amVar, true, null);
                            context13 = this.f36317a.f36304b;
                            x0.b(context13).g(str);
                        }
                    }
                    am amVar2 = am.UPLOAD_HUAWEI_TOKEN;
                    if (amVar2.ordinal() == i9) {
                        context10 = this.f36317a.f36304b;
                        if ("syncing".equals(x0.b(context10).c(amVar2))) {
                            wVar = this.f36317a;
                            context11 = wVar.f36304b;
                            e10 = i0.e(context11, c.ASSEMBLE_PUSH_HUAWEI);
                            wVar.D(str, amVar2, false, e10);
                            context13 = this.f36317a.f36304b;
                            x0.b(context13).g(str);
                        }
                    }
                    amVar2 = am.UPLOAD_FCM_TOKEN;
                    if (amVar2.ordinal() == i9) {
                        context8 = this.f36317a.f36304b;
                        if ("syncing".equals(x0.b(context8).c(amVar2))) {
                            wVar = this.f36317a;
                            context9 = wVar.f36304b;
                            e10 = i0.e(context9, c.ASSEMBLE_PUSH_FCM);
                            wVar.D(str, amVar2, false, e10);
                            context13 = this.f36317a.f36304b;
                            x0.b(context13).g(str);
                        }
                    }
                    amVar2 = am.UPLOAD_COS_TOKEN;
                    if (amVar2.ordinal() == i9) {
                        context6 = this.f36317a.f36304b;
                        if ("syncing".equals(x0.b(context6).c(amVar2))) {
                            wVar = this.f36317a;
                            context7 = wVar.f36304b;
                            e10 = i0.e(context7, c.ASSEMBLE_PUSH_COS);
                            wVar.D(str, amVar2, false, e10);
                            context13 = this.f36317a.f36304b;
                            x0.b(context13).g(str);
                        }
                    }
                    amVar2 = am.UPLOAD_FTOS_TOKEN;
                    if (amVar2.ordinal() == i9) {
                        context4 = this.f36317a.f36304b;
                        if ("syncing".equals(x0.b(context4).c(amVar2))) {
                            wVar = this.f36317a;
                            context5 = wVar.f36304b;
                            e10 = i0.e(context5, c.ASSEMBLE_PUSH_FTOS);
                            wVar.D(str, amVar2, false, e10);
                        }
                    }
                    context13 = this.f36317a.f36304b;
                    x0.b(context13).g(str);
                } else {
                    context3 = this.f36317a.f36304b;
                    x0.b(context3).h(str);
                }
            }
        }
    }
}
