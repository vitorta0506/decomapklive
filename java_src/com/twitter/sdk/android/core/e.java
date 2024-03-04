package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final OAuth2Service f35109a;

    /* renamed from: b  reason: collision with root package name */
    private final k<d> f35110b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends b<GuestAuthToken> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CountDownLatch f35111a;

        a(CountDownLatch countDownLatch) {
            this.f35111a = countDownLatch;
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            e.this.f35110b.a(0L);
            this.f35111a.countDown();
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(i<GuestAuthToken> iVar) {
            e.this.f35110b.b(new d(iVar.f35121a));
            this.f35111a.countDown();
        }
    }

    public e(OAuth2Service oAuth2Service, k<d> kVar) {
        this.f35109a = oAuth2Service;
        this.f35110b = kVar;
    }

    public synchronized d b() {
        d d10 = this.f35110b.d();
        if (c(d10)) {
            return d10;
        }
        e();
        return this.f35110b.d();
    }

    boolean c(d dVar) {
        return (dVar == null || dVar.a() == null || dVar.a().d()) ? false : true;
    }

    public synchronized d d(d dVar) {
        d d10 = this.f35110b.d();
        if (dVar != null && dVar.equals(d10)) {
            e();
        }
        return this.f35110b.d();
    }

    void e() {
        l.g().d("GuestSessionProvider", "Refreshing expired guest session.");
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f35109a.j(new a(countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            this.f35110b.a(0L);
        }
    }
}
