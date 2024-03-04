package com.xiaomi.push;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.push.i3;
/* loaded from: classes5.dex */
class j3 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i3 f36934a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j3(i3 i3Var, Looper looper) {
        super(looper);
        this.f36934a = i3Var;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        i3.b bVar = (i3.b) message.obj;
        int i9 = message.what;
        if (i9 == 0) {
            bVar.a();
        } else if (i9 == 1) {
            bVar.c();
        }
        super.handleMessage(message);
    }
}
