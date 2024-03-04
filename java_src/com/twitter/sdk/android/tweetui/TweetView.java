package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.sdk.android.core.models.User;
/* loaded from: classes4.dex */
public class TweetView extends BaseTweetView {
    public TweetView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void setVerifiedCheck(com.twitter.sdk.android.core.models.l lVar) {
        User user;
        if (lVar != null && (user = lVar.D) != null && user.verified) {
            this.f35413i.setCompoundDrawablesWithIntrinsicBounds(0, 0, R$drawable.tw__ic_tweet_verified, 0);
        } else {
            this.f35413i.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        }
    }

    @Override // com.twitter.sdk.android.tweetui.b
    protected double f(int i9) {
        return i9 == 4 ? 1.0d : 1.5d;
    }

    @Override // com.twitter.sdk.android.tweetui.b
    protected int getLayout() {
        return R$layout.tw__tweet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.BaseTweetView, com.twitter.sdk.android.tweetui.b
    public void l() {
        super.l();
        setVerifiedCheck(this.f35410f);
    }

    public TweetView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
