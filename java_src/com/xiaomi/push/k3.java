package com.xiaomi.push;

import com.xiaomi.push.i3;
/* loaded from: classes5.dex */
class k3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i3.b f36948a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ i3 f36949b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k3(i3 i3Var, i3.b bVar) {
        this.f36949b = i3Var;
        this.f36948a = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f36949b.e(this.f36948a);
    }
}
