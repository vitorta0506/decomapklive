package com.xiaomi.push.service;

import java.util.Map;
/* loaded from: classes5.dex */
class g1 extends com.xiaomi.push.d1 {

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ XMPushService f37249j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g1(XMPushService xMPushService, Map map, int i9, String str, com.xiaomi.push.f1 f1Var) {
        super(map, i9, str, f1Var);
        this.f37249j = xMPushService;
    }

    @Override // com.xiaomi.push.d1
    public byte[] h() {
        try {
            com.xiaomi.push.x xVar = new com.xiaomi.push.x();
            xVar.j(o0.e().a());
            return xVar.h();
        } catch (Exception e10) {
            tf.c.l("getOBBString err: " + e10.toString());
            return null;
        }
    }
}
