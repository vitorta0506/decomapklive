package cn.jiguang.push.asus;

import android.content.Context;
import android.content.Intent;
/* loaded from: classes.dex */
final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f2730a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Intent f2731b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ PushMessageReceiver f2732c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(PushMessageReceiver pushMessageReceiver, Context context, Intent intent) {
        this.f2732c = pushMessageReceiver;
        this.f2730a = context;
        this.f2731b = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2732c.a(this.f2730a, this.f2731b);
    }
}
