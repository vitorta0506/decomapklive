package com.twitter.sdk.android.tweetui;

import android.content.Context;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.tweetui.b;
/* loaded from: classes4.dex */
public class QuoteTweetView extends b {
    public QuoteTweetView(Context context) {
        this(context, new b.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.twitter.sdk.android.tweetui.b
    public double e(MediaEntity mediaEntity) {
        double e10 = super.e(mediaEntity);
        if (e10 <= 1.0d) {
            return 1.0d;
        }
        if (e10 > 3.0d) {
            return 3.0d;
        }
        if (e10 < 1.3333333333333333d) {
            return 1.3333333333333333d;
        }
        return e10;
    }

    @Override // com.twitter.sdk.android.tweetui.b
    protected double f(int i9) {
        return 1.6d;
    }

    @Override // com.twitter.sdk.android.tweetui.b
    protected int getLayout() {
        return R$layout.tw__tweet_quote;
    }

    @Override // com.twitter.sdk.android.tweetui.b
    public /* bridge */ /* synthetic */ com.twitter.sdk.android.core.models.l getTweet() {
        return super.getTweet();
    }

    @Override // com.twitter.sdk.android.tweetui.b
    public /* bridge */ /* synthetic */ long getTweetId() {
        return super.getTweetId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.b
    public void l() {
        super.l();
        this.f35414j.requestLayout();
    }

    protected void o() {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.tw__media_view_radius);
        this.f35416l.p(0, 0, dimensionPixelSize, dimensionPixelSize);
        setBackgroundResource(R$drawable.tw__quote_tweet_border);
        this.f35413i.setTextColor(this.f35419o);
        this.f35414j.setTextColor(this.f35420p);
        this.f35417m.setTextColor(this.f35419o);
        this.f35416l.setMediaBgColor(this.f35423s);
        this.f35416l.setPhotoErrorResId(this.f35424t);
    }

    public void p(int i9, int i10, int i11, int i12, int i13, int i14) {
        this.f35419o = i9;
        this.f35420p = i10;
        this.f35421q = i11;
        this.f35422r = i12;
        this.f35423s = i13;
        this.f35424t = i14;
        o();
    }

    @Override // com.twitter.sdk.android.tweetui.b
    public /* bridge */ /* synthetic */ void setTweet(com.twitter.sdk.android.core.models.l lVar) {
        super.setTweet(lVar);
    }

    @Override // com.twitter.sdk.android.tweetui.b
    public /* bridge */ /* synthetic */ void setTweetLinkClickListener(w wVar) {
        super.setTweetLinkClickListener(wVar);
    }

    @Override // com.twitter.sdk.android.tweetui.b
    public /* bridge */ /* synthetic */ void setTweetMediaClickListener(x xVar) {
        super.setTweetMediaClickListener(xVar);
    }

    QuoteTweetView(Context context, b.a aVar) {
        super(context, null, 0, aVar);
    }
}
