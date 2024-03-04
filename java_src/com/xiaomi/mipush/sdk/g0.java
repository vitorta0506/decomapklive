package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.service.u;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class g0 extends u.a {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f0 f36230c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(f0 f0Var, int i9, String str) {
        super(i9, str);
        this.f36230c = f0Var;
    }

    @Override // com.xiaomi.push.service.u.a
    protected void b() {
        boolean z10;
        Context context;
        z10 = this.f36230c.f36227c;
        if (!z10) {
            this.f36230c.f36227c = true;
            context = this.f36230c.f36225a;
            i0.l(context);
        }
    }
}
