package com.twitter.sdk.android.core;

import android.content.Context;
import com.twitter.sdk.android.core.d;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import com.twitter.sdk.android.core.s;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class q {

    /* renamed from: i  reason: collision with root package name */
    static volatile q f35330i;

    /* renamed from: a  reason: collision with root package name */
    k<s> f35331a;

    /* renamed from: b  reason: collision with root package name */
    k<d> f35332b;

    /* renamed from: c  reason: collision with root package name */
    com.twitter.sdk.android.core.internal.g<s> f35333c;

    /* renamed from: d  reason: collision with root package name */
    private final TwitterAuthConfig f35334d;

    /* renamed from: e  reason: collision with root package name */
    private final ConcurrentHashMap<j, m> f35335e;

    /* renamed from: f  reason: collision with root package name */
    private final Context f35336f;

    /* renamed from: g  reason: collision with root package name */
    private volatile m f35337g;

    /* renamed from: h  reason: collision with root package name */
    private volatile e f35338h;

    q(TwitterAuthConfig twitterAuthConfig) {
        this(twitterAuthConfig, new ConcurrentHashMap(), null);
    }

    private synchronized void b() {
        if (this.f35337g == null) {
            this.f35337g = new m();
        }
    }

    private synchronized void c() {
        if (this.f35338h == null) {
            this.f35338h = new e(new OAuth2Service(this, new com.twitter.sdk.android.core.internal.j()), this.f35332b);
        }
    }

    public static q k() {
        if (f35330i == null) {
            synchronized (q.class) {
                if (f35330i == null) {
                    f35330i = new q(l.f().h());
                    l.f().e().execute(new Runnable() { // from class: com.twitter.sdk.android.core.p
                        @Override // java.lang.Runnable
                        public final void run() {
                            q.n();
                        }
                    });
                }
            }
        }
        return f35330i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n() {
        f35330i.d();
    }

    void d() {
        this.f35331a.d();
        this.f35332b.d();
        i();
        this.f35333c.a(l.f().c());
    }

    public m e() {
        s d10 = this.f35331a.d();
        if (d10 == null) {
            return h();
        }
        return f(d10);
    }

    public m f(s sVar) {
        if (!this.f35335e.containsKey(sVar)) {
            this.f35335e.putIfAbsent(sVar, new m(sVar));
        }
        return this.f35335e.get(sVar);
    }

    public TwitterAuthConfig g() {
        return this.f35334d;
    }

    public m h() {
        if (this.f35337g == null) {
            b();
        }
        return this.f35337g;
    }

    public e i() {
        if (this.f35338h == null) {
            c();
        }
        return this.f35338h;
    }

    public String j() {
        return "com.twitter.sdk.android:twitter-core";
    }

    public k<s> l() {
        return this.f35331a;
    }

    public String m() {
        return "3.3.0.12";
    }

    q(TwitterAuthConfig twitterAuthConfig, ConcurrentHashMap<j, m> concurrentHashMap, m mVar) {
        this.f35334d = twitterAuthConfig;
        this.f35335e = concurrentHashMap;
        this.f35337g = mVar;
        Context d10 = l.f().d(j());
        this.f35336f = d10;
        this.f35331a = new h(new we.b(d10, "session_store"), new s.a(), "active_twittersession", "twittersession");
        this.f35332b = new h(new we.b(d10, "session_store"), new d.a(), "active_guestsession", "guestsession");
        this.f35333c = new com.twitter.sdk.android.core.internal.g<>(this.f35331a, l.f().e(), new com.twitter.sdk.android.core.internal.k());
    }
}
