package com.snapchat.kit.sdk.core.config;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: b  reason: collision with root package name */
    private ConfigClient f29487b;

    /* renamed from: d  reason: collision with root package name */
    private SharedPreferences f29489d;

    /* renamed from: a  reason: collision with root package name */
    private int f29486a = a.f29490a;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<com.snapchat.kit.sdk.core.config.b> f29488c = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @VisibleForTesting
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f29490a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f29491b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f29492c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f29493d = {1, 2, 3};
    }

    /* loaded from: classes4.dex */
    final class b extends HashMap<String, Object> {
        b() {
            put("kitVersion", "1.13.2");
        }
    }

    /* loaded from: classes4.dex */
    final class c implements Callback<e<com.snapchat.kit.sdk.core.config.c>> {
        c() {
        }

        @Override // retrofit2.Callback
        public final void onFailure(Call<e<com.snapchat.kit.sdk.core.config.c>> call, Throwable th2) {
            f.this.b();
        }

        @Override // retrofit2.Callback
        public final void onResponse(Call<e<com.snapchat.kit.sdk.core.config.c>> call, Response<e<com.snapchat.kit.sdk.core.config.c>> response) {
            if (response == null) {
                f.this.b();
            } else if (!response.isSuccessful()) {
                f.this.b();
            } else {
                e<com.snapchat.kit.sdk.core.config.c> body = response.body();
                if (body == null) {
                    f.this.b();
                    return;
                }
                Double a10 = f.a(body);
                if (a10 == null) {
                    f.this.b();
                } else {
                    f.this.g(a10.doubleValue());
                }
            }
        }
    }

    public f(ConfigClient configClient, SharedPreferences sharedPreferences) {
        this.f29487b = configClient;
        this.f29489d = sharedPreferences;
    }

    static /* synthetic */ Double a(e eVar) {
        if (eVar.a() == null || ((com.snapchat.kit.sdk.core.config.c) eVar.a()).f29483a == null || ((com.snapchat.kit.sdk.core.config.c) eVar.a()).f29483a.f29484a == null || ((com.snapchat.kit.sdk.core.config.c) eVar.a()).f29483a.f29484a.f29496a == null) {
            return null;
        }
        Double d10 = ((com.snapchat.kit.sdk.core.config.c) eVar.a()).f29483a.f29484a.f29496a;
        if (h(d10.doubleValue())) {
            return d10;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        this.f29486a = a.f29490a;
        Iterator<com.snapchat.kit.sdk.core.config.b> it = this.f29488c.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f29488c.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g(double d10) {
        this.f29489d.edit().putFloat("com.snapchat.kit.sdk.core.config.skateSampleRate", (float) d10).apply();
        this.f29486a = a.f29492c;
        Iterator<com.snapchat.kit.sdk.core.config.b> it = this.f29488c.iterator();
        while (it.hasNext()) {
            it.next().b(d10);
        }
        this.f29488c.clear();
    }

    private static boolean h(double d10) {
        return d10 >= 0.0d && d10 <= 1.0d;
    }

    public final void c(double d10) {
        if (h(d10)) {
            this.f29489d.edit().putFloat("com.snapchat.kit.sdk.core.config.skateSampleRate", (float) d10).apply();
        }
    }

    public final synchronized void d(@NonNull com.snapchat.kit.sdk.core.config.b bVar) {
        if (this.f29486a == a.f29492c) {
            try {
                bVar.b(this.f29489d.getFloat("com.snapchat.kit.sdk.core.config.skateSampleRate", 0.0f));
                return;
            } catch (ClassCastException unused) {
                bVar.a();
                return;
            }
        }
        this.f29488c.add(bVar);
        int i9 = this.f29486a;
        int i10 = a.f29491b;
        if (i9 == i10) {
            return;
        }
        this.f29486a = i10;
        this.f29487b.fetchConfig(new com.snapchat.kit.sdk.core.config.a("query($kitVersion: String!) {config(kitVersion: $kitVersion) {skateConfig{sampleRate}}}", new b())).enqueue(new c());
    }
}
