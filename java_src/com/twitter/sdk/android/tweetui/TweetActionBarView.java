package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.LinearLayout;
/* loaded from: classes4.dex */
public class TweetActionBarView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    final a f35395a;

    /* renamed from: b  reason: collision with root package name */
    ToggleImageButton f35396b;

    /* renamed from: c  reason: collision with root package name */
    ImageButton f35397c;

    /* renamed from: d  reason: collision with root package name */
    com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> f35398d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {
        a() {
        }

        d0 a() {
            return d0.c();
        }
    }

    public TweetActionBarView(Context context) {
        this(context, null, new a());
    }

    void a() {
        this.f35396b = (ToggleImageButton) findViewById(R$id.tw__tweet_like_button);
        this.f35397c = (ImageButton) findViewById(R$id.tw__tweet_share_button);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        a();
    }

    void setLike(com.twitter.sdk.android.core.models.l lVar) {
        d0 a10 = this.f35395a.a();
        if (lVar != null) {
            this.f35396b.setToggledOn(lVar.f35261g);
            this.f35396b.setOnClickListener(new k(lVar, a10, this.f35398d));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnActionCallback(com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar) {
        this.f35398d = bVar;
    }

    void setShare(com.twitter.sdk.android.core.models.l lVar) {
        d0 a10 = this.f35395a.a();
        if (lVar != null) {
            this.f35397c.setOnClickListener(new u(lVar, a10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTweet(com.twitter.sdk.android.core.models.l lVar) {
        setLike(lVar);
        setShare(lVar);
    }

    public TweetActionBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, new a());
    }

    TweetActionBarView(Context context, AttributeSet attributeSet, a aVar) {
        super(context, attributeSet);
        this.f35395a = aVar;
    }
}
