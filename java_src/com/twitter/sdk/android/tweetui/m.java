package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.TwitterException;
/* loaded from: classes4.dex */
abstract class m<T> extends com.twitter.sdk.android.core.b<T> {

    /* renamed from: a  reason: collision with root package name */
    private final com.twitter.sdk.android.core.b f35566a;

    /* renamed from: b  reason: collision with root package name */
    private final com.twitter.sdk.android.core.g f35567b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(com.twitter.sdk.android.core.b bVar, com.twitter.sdk.android.core.g gVar) {
        this.f35566a = bVar;
        this.f35567b = gVar;
    }

    @Override // com.twitter.sdk.android.core.b
    public void a(TwitterException twitterException) {
        this.f35567b.e("TweetUi", twitterException.getMessage(), twitterException);
        com.twitter.sdk.android.core.b bVar = this.f35566a;
        if (bVar != null) {
            bVar.a(twitterException);
        }
    }
}
