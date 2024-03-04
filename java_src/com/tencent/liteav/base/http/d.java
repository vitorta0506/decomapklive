package com.tencent.liteav.base.http;

import com.tencent.liteav.base.http.HttpClientAndroid;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientAndroid f30956a;

    /* renamed from: b  reason: collision with root package name */
    private final HttpClientAndroid.e f30957b;

    /* renamed from: c  reason: collision with root package name */
    private final long f30958c;

    private d(HttpClientAndroid httpClientAndroid, HttpClientAndroid.e eVar, long j10) {
        this.f30956a = httpClientAndroid;
        this.f30957b = eVar;
        this.f30958c = j10;
    }

    public static Runnable a(HttpClientAndroid httpClientAndroid, HttpClientAndroid.e eVar, long j10) {
        return new d(httpClientAndroid, eVar, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpClientAndroid.lambda$doReadData$3(this.f30956a, this.f30957b, this.f30958c);
    }
}
