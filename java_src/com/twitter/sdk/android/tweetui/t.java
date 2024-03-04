package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.TwitterException;
/* loaded from: classes4.dex */
class t extends com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> {

    /* renamed from: a  reason: collision with root package name */
    final BaseTweetView f35582a;

    /* renamed from: b  reason: collision with root package name */
    final z f35583b;

    /* renamed from: c  reason: collision with root package name */
    final com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> f35584c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(BaseTweetView baseTweetView, z zVar, com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar) {
        this.f35582a = baseTweetView;
        this.f35583b = zVar;
        this.f35584c = bVar;
    }

    @Override // com.twitter.sdk.android.core.b
    public void a(TwitterException twitterException) {
        com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar = this.f35584c;
        if (bVar != null) {
            bVar.a(twitterException);
        }
    }

    @Override // com.twitter.sdk.android.core.b
    public void b(com.twitter.sdk.android.core.i<com.twitter.sdk.android.core.models.l> iVar) {
        this.f35583b.j(iVar.f35121a);
        this.f35582a.setTweet(iVar.f35121a);
        com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar = this.f35584c;
        if (bVar != null) {
            bVar.b(iVar);
        }
    }
}
