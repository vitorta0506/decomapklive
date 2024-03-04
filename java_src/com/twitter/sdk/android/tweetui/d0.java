package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.squareup.picasso.Picasso;
/* loaded from: classes4.dex */
public class d0 {

    /* renamed from: f  reason: collision with root package name */
    static volatile d0 f35433f;

    /* renamed from: a  reason: collision with root package name */
    com.twitter.sdk.android.core.k<com.twitter.sdk.android.core.s> f35434a;

    /* renamed from: b  reason: collision with root package name */
    com.twitter.sdk.android.core.e f35435b;

    /* renamed from: c  reason: collision with root package name */
    Context f35436c;

    /* renamed from: d  reason: collision with root package name */
    private z f35437d;

    /* renamed from: e  reason: collision with root package name */
    private Picasso f35438e;

    d0() {
        com.twitter.sdk.android.core.q k10 = com.twitter.sdk.android.core.q.k();
        this.f35436c = com.twitter.sdk.android.core.l.f().d(a());
        this.f35434a = k10.l();
        this.f35435b = k10.i();
        this.f35437d = new z(new Handler(Looper.getMainLooper()), k10.l());
        this.f35438e = Picasso.p(com.twitter.sdk.android.core.l.f().d(a()));
    }

    public static d0 c() {
        if (f35433f == null) {
            synchronized (d0.class) {
                if (f35433f == null) {
                    f35433f = new d0();
                }
            }
        }
        return f35433f;
    }

    public String a() {
        return "com.twitter.sdk.android:tweet-ui";
    }

    public Picasso b() {
        return this.f35438e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z d() {
        return this.f35437d;
    }
}
