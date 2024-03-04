package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.internal.j;
import com.twitter.sdk.android.core.q;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private final q f35198a;

    /* renamed from: b  reason: collision with root package name */
    private final j f35199b;

    /* renamed from: c  reason: collision with root package name */
    private final String f35200c;

    /* renamed from: d  reason: collision with root package name */
    private final Retrofit f35201d = new Retrofit.Builder().baseUrl(b().c()).client(new OkHttpClient.Builder().addInterceptor(new Interceptor() { // from class: com.twitter.sdk.android.core.internal.oauth.d
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            Response f10;
            f10 = e.this.f(chain);
            return f10;
        }
    }).certificatePinner(ve.e.c()).build()).addConverterFactory(GsonConverterFactory.create()).build();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(q qVar, j jVar) {
        this.f35198a = qVar;
        this.f35199b = jVar;
        this.f35200c = j.b("TwitterAndroidSDK", qVar.m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Response f(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().header("User-Agent", e()).build());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j b() {
        return this.f35199b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Retrofit c() {
        return this.f35201d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public q d() {
        return this.f35198a;
    }

    protected String e() {
        return this.f35200c;
    }
}
