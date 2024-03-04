package com.tencent.liteav.base.http;
/* loaded from: classes4.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientAndroid f30954a;

    private b(HttpClientAndroid httpClientAndroid) {
        this.f30954a = httpClientAndroid;
    }

    public static Runnable a(HttpClientAndroid httpClientAndroid) {
        return new b(httpClientAndroid);
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpClientAndroid.lambda$cancelAll$1(this.f30954a);
    }
}
