package com.tencent.liteav.base.http;
/* loaded from: classes4.dex */
final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientAndroid f30955a;

    private c(HttpClientAndroid httpClientAndroid) {
        this.f30955a = httpClientAndroid;
    }

    public static Runnable a(HttpClientAndroid httpClientAndroid) {
        return new c(httpClientAndroid);
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpClientAndroid.lambda$destroy$2(this.f30955a);
    }
}
