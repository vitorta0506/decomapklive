package com.xiaomi.push;

import com.xiaomi.push.f3;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class h3 extends f3.b {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f3 f36894b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h3(f3 f3Var, f3.a aVar) {
        super(aVar);
        this.f36894b = f3Var;
    }

    @Override // com.xiaomi.push.f3.b
    void c() {
        Object obj;
        Map map;
        obj = this.f36894b.f36877c;
        synchronized (obj) {
            map = this.f36894b.f36876b;
            map.remove(this.f36879a.b());
        }
    }
}
