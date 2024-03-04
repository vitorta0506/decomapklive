package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.sdk.android.core.models.MediaEntity;
/* loaded from: classes4.dex */
public class CompactTweetView extends BaseTweetView {
    public CompactTweetView(Context context, com.twitter.sdk.android.core.models.l lVar, int i9) {
        super(context, lVar, i9);
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
        return R$layout.tw__tweet_compact;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.BaseTweetView, com.twitter.sdk.android.tweetui.b
    public void l() {
        super.l();
        this.f35414j.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.twitter.sdk.android.tweetui.BaseTweetView
    public void q() {
        super.q();
        setPadding(0, getResources().getDimensionPixelSize(R$dimen.tw__compact_tweet_container_padding_top), 0, 0);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.tw__media_view_radius);
        this.f35416l.p(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
    }

    public CompactTweetView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CompactTweetView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
