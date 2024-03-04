package com.twitter.sdk.android.core;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.twitter.sdk.android.core.models.BindingValuesAdapter;
import com.twitter.sdk.android.core.models.SafeListAdapter;
import com.twitter.sdk.android.core.models.SafeMapAdapter;
import com.twitter.sdk.android.core.services.AccountService;
import com.twitter.sdk.android.core.services.FavoriteService;
import com.twitter.sdk.android.core.services.MediaService;
import com.twitter.sdk.android.core.services.StatusesService;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
/* loaded from: classes4.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    final ConcurrentHashMap<Class, Object> f35212a;

    /* renamed from: b  reason: collision with root package name */
    final Retrofit f35213b;

    public m() {
        this(ve.e.d(q.k().i()), new com.twitter.sdk.android.core.internal.j());
    }

    private ConcurrentHashMap a() {
        return new ConcurrentHashMap();
    }

    private Gson b() {
        return new GsonBuilder().registerTypeAdapterFactory(new SafeListAdapter()).registerTypeAdapterFactory(new SafeMapAdapter()).registerTypeAdapter(com.twitter.sdk.android.core.models.c.class, new BindingValuesAdapter()).create();
    }

    private Retrofit c(OkHttpClient okHttpClient, com.twitter.sdk.android.core.internal.j jVar) {
        return new Retrofit.Builder().client(okHttpClient).baseUrl(jVar.c()).addConverterFactory(GsonConverterFactory.create(b())).build();
    }

    public AccountService d() {
        return (AccountService) g(AccountService.class);
    }

    public FavoriteService e() {
        return (FavoriteService) g(FavoriteService.class);
    }

    public MediaService f() {
        return (MediaService) g(MediaService.class);
    }

    protected <T> T g(Class<T> cls) {
        if (!this.f35212a.contains(cls)) {
            this.f35212a.putIfAbsent(cls, this.f35213b.create(cls));
        }
        return (T) this.f35212a.get(cls);
    }

    public StatusesService h() {
        return (StatusesService) g(StatusesService.class);
    }

    public m(s sVar) {
        this(ve.e.e(sVar, q.k().g()), new com.twitter.sdk.android.core.internal.j());
    }

    m(OkHttpClient okHttpClient, com.twitter.sdk.android.core.internal.j jVar) {
        this.f35212a = a();
        this.f35213b = c(okHttpClient, jVar);
    }
}
