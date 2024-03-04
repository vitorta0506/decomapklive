package com.xiaomi.push;
/* loaded from: classes5.dex */
public class s implements tf.a {

    /* renamed from: a  reason: collision with root package name */
    private tf.a f37082a;

    /* renamed from: b  reason: collision with root package name */
    private tf.a f37083b;

    public s(tf.a aVar, tf.a aVar2) {
        this.f37082a = aVar;
        this.f37083b = aVar2;
    }

    @Override // tf.a
    public void a(String str, Throwable th2) {
        tf.a aVar = this.f37082a;
        if (aVar != null) {
            aVar.a(str, th2);
        }
        tf.a aVar2 = this.f37083b;
        if (aVar2 != null) {
            aVar2.a(str, th2);
        }
    }

    @Override // tf.a
    public void log(String str) {
        tf.a aVar = this.f37082a;
        if (aVar != null) {
            aVar.log(str);
        }
        tf.a aVar2 = this.f37083b;
        if (aVar2 != null) {
            aVar2.log(str);
        }
    }
}
