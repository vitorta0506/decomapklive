package com.xiaomi.push;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class z0 extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ y0 f37579a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z0(y0 y0Var, String str) {
        super(str);
        this.f37579a = y0Var;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        t0 t0Var;
        try {
            t0Var = this.f37579a.E;
            t0Var.c();
        } catch (Exception e10) {
            this.f37579a.L(9, e10);
        }
    }
}
