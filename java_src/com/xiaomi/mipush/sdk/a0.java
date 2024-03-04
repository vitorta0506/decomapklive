package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.xiaomi.push.p3;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class a0 extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ w f36206a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(w wVar, Handler handler) {
        super(handler);
        this.f36206a = wVar;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        Context context;
        Integer num;
        Context context2;
        Context context3;
        w wVar = this.f36206a;
        context = wVar.f36304b;
        wVar.f36312j = Integer.valueOf(com.xiaomi.push.service.g0.c(context).a());
        num = this.f36206a.f36312j;
        if (num.intValue() != 0) {
            context2 = this.f36206a.f36304b;
            context2.getContentResolver().unregisterContentObserver(this);
            context3 = this.f36206a.f36304b;
            if (p3.m(context3)) {
                this.f36206a.P();
            }
        }
    }
}
