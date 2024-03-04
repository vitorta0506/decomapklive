package com.xiaomi.push;

import java.util.Date;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class b1 implements e1 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a1 f36381a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b1(a1 a1Var) {
        this.f36381a = a1Var;
    }

    @Override // com.xiaomi.push.e1
    public void a(c1 c1Var) {
        tf.c.t("[Slim] " + this.f36381a.f36353a.format(new Date()) + " Connection started (" + this.f36381a.f36354b.hashCode() + ")");
    }

    @Override // com.xiaomi.push.e1
    public void a(c1 c1Var, int i9, Exception exc) {
        tf.c.t("[Slim] " + this.f36381a.f36353a.format(new Date()) + " Connection closed (" + this.f36381a.f36354b.hashCode() + ")");
    }

    @Override // com.xiaomi.push.e1
    public void a(c1 c1Var, Exception exc) {
        tf.c.t("[Slim] " + this.f36381a.f36353a.format(new Date()) + " Reconnection failed due to an exception (" + this.f36381a.f36354b.hashCode() + ")");
        exc.printStackTrace();
    }

    @Override // com.xiaomi.push.e1
    public void b(c1 c1Var) {
        tf.c.t("[Slim] " + this.f36381a.f36353a.format(new Date()) + " Connection reconnected (" + this.f36381a.f36354b.hashCode() + ")");
    }
}
