package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.k;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.q;
import com.twitter.sdk.android.core.s;
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    final q f35145a;

    /* renamed from: b  reason: collision with root package name */
    final com.twitter.sdk.android.core.identity.b f35146b;

    /* renamed from: c  reason: collision with root package name */
    final k<s> f35147c;

    /* renamed from: d  reason: collision with root package name */
    final TwitterAuthConfig f35148d;

    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final com.twitter.sdk.android.core.identity.b f35149a = new com.twitter.sdk.android.core.identity.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b extends com.twitter.sdk.android.core.b<s> {

        /* renamed from: a  reason: collision with root package name */
        private final k<s> f35150a;

        /* renamed from: b  reason: collision with root package name */
        private final com.twitter.sdk.android.core.b<s> f35151b;

        b(k<s> kVar, com.twitter.sdk.android.core.b<s> bVar) {
            this.f35150a = kVar;
            this.f35151b = bVar;
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Authorization completed with an error", twitterException);
            this.f35151b.a(twitterException);
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<s> iVar) {
            l.g().d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Authorization completed successfully");
            this.f35150a.b(iVar.f35121a);
            this.f35151b.b(iVar);
        }
    }

    public h() {
        this(q.k(), q.k().g(), q.k().l(), a.f35149a);
    }

    private boolean b(Activity activity, b bVar) {
        l.g().d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Using OAuth");
        com.twitter.sdk.android.core.identity.b bVar2 = this.f35146b;
        TwitterAuthConfig twitterAuthConfig = this.f35148d;
        return bVar2.a(activity, new d(twitterAuthConfig, bVar, twitterAuthConfig.c()));
    }

    private boolean c(Activity activity, b bVar) {
        if (g.g(activity)) {
            l.g().d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Using SSO");
            com.twitter.sdk.android.core.identity.b bVar2 = this.f35146b;
            TwitterAuthConfig twitterAuthConfig = this.f35148d;
            return bVar2.a(activity, new g(twitterAuthConfig, bVar, twitterAuthConfig.c()));
        }
        return false;
    }

    private void f(Activity activity, com.twitter.sdk.android.core.b<s> bVar) {
        b bVar2 = new b(this.f35147c, bVar);
        if (c(activity, bVar2) || b(activity, bVar2)) {
            return;
        }
        bVar2.a(new TwitterAuthException("Authorize failed."));
    }

    public void a(Activity activity, com.twitter.sdk.android.core.b<s> bVar) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity must not be null.");
        }
        if (bVar != null) {
            if (activity.isFinishing()) {
                l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Cannot authorize, activity is finishing.", null);
                return;
            } else {
                f(activity, bVar);
                return;
            }
        }
        throw new IllegalArgumentException("Callback must not be null.");
    }

    public void d() {
        this.f35146b.b();
    }

    public int e() {
        return this.f35148d.c();
    }

    public void g(int i9, int i10, Intent intent) {
        com.twitter.sdk.android.core.g g10 = l.g();
        g10.d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "onActivityResult called with " + i9 + " " + i10);
        if (!this.f35146b.d()) {
            l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Authorize not in progress", null);
            return;
        }
        com.twitter.sdk.android.core.identity.a c10 = this.f35146b.c();
        if (c10 == null || !c10.d(i9, i10, intent)) {
            return;
        }
        this.f35146b.b();
    }

    h(q qVar, TwitterAuthConfig twitterAuthConfig, k<s> kVar, com.twitter.sdk.android.core.identity.b bVar) {
        this.f35145a = qVar;
        this.f35146b = bVar;
        this.f35148d = twitterAuthConfig;
        this.f35147c = kVar;
    }
}
