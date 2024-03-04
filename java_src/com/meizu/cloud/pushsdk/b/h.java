package com.meizu.cloud.pushsdk.b;
/* loaded from: classes4.dex */
public class h<T> {

    /* renamed from: a  reason: collision with root package name */
    private T f28252a;

    /* renamed from: b  reason: collision with root package name */
    private T f28253b;

    /* JADX INFO: Access modifiers changed from: protected */
    public h(T t10) {
        if (t10 == null) {
            throw new RuntimeException("proxy must be has a default implementation");
        }
        this.f28253b = t10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T c() {
        T t10 = this.f28252a;
        return t10 != null ? t10 : this.f28253b;
    }
}
