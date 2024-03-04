package com.xiaomi.push;

import com.xiaomi.push.i3;
/* loaded from: classes5.dex */
final class d2 extends i3.b {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Runnable f36492a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d2(Runnable runnable) {
        this.f36492a = runnable;
    }

    @Override // com.xiaomi.push.i3.b
    public void b() {
        this.f36492a.run();
    }
}
