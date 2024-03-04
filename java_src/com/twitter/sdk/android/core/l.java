package com.twitter.sdk.android.core;

import android.content.Context;
import java.io.File;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4.dex */
public class l {

    /* renamed from: g  reason: collision with root package name */
    static final g f35204g = new c();

    /* renamed from: h  reason: collision with root package name */
    static volatile l f35205h;

    /* renamed from: a  reason: collision with root package name */
    private final Context f35206a;

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f35207b;

    /* renamed from: c  reason: collision with root package name */
    private final TwitterAuthConfig f35208c;

    /* renamed from: d  reason: collision with root package name */
    private final com.twitter.sdk.android.core.internal.a f35209d;

    /* renamed from: e  reason: collision with root package name */
    private final g f35210e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f35211f;

    private l(n nVar) {
        Context context = nVar.f35317a;
        this.f35206a = context;
        this.f35209d = new com.twitter.sdk.android.core.internal.a(context);
        TwitterAuthConfig twitterAuthConfig = nVar.f35319c;
        if (twitterAuthConfig == null) {
            this.f35208c = new TwitterAuthConfig(com.twitter.sdk.android.core.internal.b.c(context, "com.twitter.sdk.android.CONSUMER_KEY", ""), com.twitter.sdk.android.core.internal.b.c(context, "com.twitter.sdk.android.CONSUMER_SECRET", ""));
        } else {
            this.f35208c = twitterAuthConfig;
        }
        ExecutorService executorService = nVar.f35320d;
        if (executorService == null) {
            this.f35207b = com.twitter.sdk.android.core.internal.e.e("twitter-worker");
        } else {
            this.f35207b = executorService;
        }
        g gVar = nVar.f35318b;
        if (gVar == null) {
            this.f35210e = f35204g;
        } else {
            this.f35210e = gVar;
        }
        Boolean bool = nVar.f35321e;
        if (bool == null) {
            this.f35211f = false;
        } else {
            this.f35211f = bool.booleanValue();
        }
    }

    static void a() {
        if (f35205h == null) {
            throw new IllegalStateException("Must initialize Twitter before using getInstance()");
        }
    }

    static synchronized l b(n nVar) {
        synchronized (l.class) {
            if (f35205h == null) {
                f35205h = new l(nVar);
                return f35205h;
            }
            return f35205h;
        }
    }

    public static l f() {
        a();
        return f35205h;
    }

    public static g g() {
        if (f35205h == null) {
            return f35204g;
        }
        return f35205h.f35210e;
    }

    public static void i(n nVar) {
        b(nVar);
    }

    public static boolean j() {
        if (f35205h == null) {
            return false;
        }
        return f35205h.f35211f;
    }

    public com.twitter.sdk.android.core.internal.a c() {
        return this.f35209d;
    }

    public Context d(String str) {
        Context context = this.f35206a;
        return new o(context, str, ".TwitterKit" + File.separator + str);
    }

    public ExecutorService e() {
        return this.f35207b;
    }

    public TwitterAuthConfig h() {
        return this.f35208c;
    }
}
