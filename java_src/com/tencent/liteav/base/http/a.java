package com.tencent.liteav.base.http;

import com.tencent.liteav.base.http.HttpClientAndroid;
/* loaded from: classes4.dex */
final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientAndroid f30952a;

    /* renamed from: b  reason: collision with root package name */
    private final HttpClientAndroid.d f30953b;

    private a(HttpClientAndroid httpClientAndroid, HttpClientAndroid.d dVar) {
        this.f30952a = httpClientAndroid;
        this.f30953b = dVar;
    }

    public static Runnable a(HttpClientAndroid httpClientAndroid, HttpClientAndroid.d dVar) {
        return new a(httpClientAndroid, dVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30952a.doRequest(this.f30953b);
    }
}
