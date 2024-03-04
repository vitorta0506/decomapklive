package com.xiaomi.push;
/* loaded from: classes5.dex */
class l1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f36961a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ i1 f36962b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l1(i1 i1Var, String str) {
        this.f36962b = i1Var;
        this.f36961a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        m.c().b(this.f36961a, true);
    }
}
