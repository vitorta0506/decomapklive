package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.UserUtils;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.tweetui.b;
import java.util.Locale;
/* loaded from: classes4.dex */
public abstract class BaseTweetView extends b {
    ViewGroup A;
    QuoteTweetView B;
    View C;
    int D;
    int E;
    int F;
    ColorDrawable G;

    /* renamed from: v  reason: collision with root package name */
    TextView f35377v;

    /* renamed from: w  reason: collision with root package name */
    TweetActionBarView f35378w;

    /* renamed from: x  reason: collision with root package name */
    ImageView f35379x;

    /* renamed from: y  reason: collision with root package name */
    TextView f35380y;

    /* renamed from: z  reason: collision with root package name */
    ImageView f35381z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f35382a;

        a(long j10) {
            this.f35382a = j10;
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            com.twitter.sdk.android.core.l.g().d("TweetUi", String.format(Locale.ENGLISH, "loadTweet failure for Tweet Id %d.", Long.valueOf(this.f35382a)));
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<com.twitter.sdk.android.core.models.l> iVar) {
            BaseTweetView.this.setTweet(iVar.f35121a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseTweetView(Context context, com.twitter.sdk.android.core.models.l lVar, int i9) {
        this(context, lVar, i9, new b.a());
    }

    private void r(int i9) {
        this.f35411g = i9;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i9, R$styleable.tw__TweetView);
        try {
            setStyleAttributes(obtainStyledAttributes);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void s() {
        setTweetActionsEnabled(this.f35412h);
        this.f35378w.setOnActionCallback(new t(this, this.f35405a.b().d(), null));
    }

    private void setStyleAttributes(TypedArray typedArray) {
        this.D = typedArray.getColor(R$styleable.tw__TweetView_tw__container_bg_color, getResources().getColor(R$color.tw__tweet_light_container_bg_color));
        this.f35419o = typedArray.getColor(R$styleable.tw__TweetView_tw__primary_text_color, getResources().getColor(R$color.tw__tweet_light_primary_text_color));
        this.f35421q = typedArray.getColor(R$styleable.tw__TweetView_tw__action_color, getResources().getColor(R$color.tw__tweet_action_color));
        this.f35422r = typedArray.getColor(R$styleable.tw__TweetView_tw__action_highlight_color, getResources().getColor(R$color.tw__tweet_action_light_highlight_color));
        this.f35412h = typedArray.getBoolean(R$styleable.tw__TweetView_tw__tweet_actions_enabled, false);
        boolean b10 = f.b(this.D);
        if (b10) {
            this.f35424t = R$drawable.tw__ic_tweet_photo_error_light;
            this.E = R$drawable.tw__ic_logo_blue;
            this.F = R$drawable.tw__ic_retweet_light;
        } else {
            this.f35424t = R$drawable.tw__ic_tweet_photo_error_dark;
            this.E = R$drawable.tw__ic_logo_white;
            this.F = R$drawable.tw__ic_retweet_dark;
        }
        this.f35420p = f.a(b10 ? 0.4d : 0.35d, b10 ? -1 : ViewCompat.MEASURED_STATE_MASK, this.f35419o);
        this.f35423s = f.a(b10 ? 0.08d : 0.12d, b10 ? ViewCompat.MEASURED_STATE_MASK : -1, this.D);
        this.G = new ColorDrawable(this.f35423s);
    }

    private void setTimestamp(com.twitter.sdk.android.core.models.l lVar) {
        String str;
        this.f35380y.setText((lVar == null || (str = lVar.f35256b) == null || !v.d(str)) ? "" : v.b(v.c(getResources(), System.currentTimeMillis(), Long.valueOf(v.a(lVar.f35256b)).longValue())));
    }

    private void setXmlDataAttributes(TypedArray typedArray) {
        long longValue = f0.c(typedArray.getString(R$styleable.tw__TweetView_tw__tweet_id), -1L).longValue();
        if (longValue > 0) {
            n(null, Long.valueOf(longValue));
            this.f35410f = new com.twitter.sdk.android.core.models.m().d(longValue).a();
            return;
        }
        throw new IllegalArgumentException("Invalid tw__tweet_id");
    }

    private void t(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.tw__TweetView, 0, 0);
        try {
            setXmlDataAttributes(obtainStyledAttributes);
            setStyleAttributes(obtainStyledAttributes);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(com.twitter.sdk.android.core.models.l lVar, View view) {
        w wVar = this.f35407c;
        if (wVar != null) {
            wVar.a(lVar, e0.d(lVar.D.screenName));
            return;
        }
        if (com.twitter.sdk.android.core.f.b(getContext(), new Intent("android.intent.action.VIEW", Uri.parse(e0.d(lVar.D.screenName))))) {
            return;
        }
        com.twitter.sdk.android.core.l.g().e("TweetUi", "Activity cannot be found to open URL");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean v(View view, MotionEvent motionEvent) {
        ImageView imageView = (ImageView) view;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                view.performClick();
            } else if (action != 3) {
                return false;
            }
            imageView.getDrawable().clearColorFilter();
            imageView.invalidate();
            return false;
        }
        imageView.getDrawable().setColorFilter(getResources().getColor(R$color.tw__black_opacity_10), PorterDuff.Mode.SRC_ATOP);
        imageView.invalidate();
        return false;
    }

    private void x() {
        this.f35405a.b().d().h(getTweetId(), new a(getTweetId()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.b
    public void c() {
        super.c();
        this.f35381z = (ImageView) findViewById(R$id.tw__tweet_author_avatar);
        this.f35380y = (TextView) findViewById(R$id.tw__tweet_timestamp);
        this.f35379x = (ImageView) findViewById(R$id.tw__twitter_logo);
        this.f35377v = (TextView) findViewById(R$id.tw__tweet_retweeted_by);
        this.f35378w = (TweetActionBarView) findViewById(R$id.tw__tweet_action_bar);
        this.A = (ViewGroup) findViewById(R$id.quote_tweet_holder);
        this.C = findViewById(R$id.bottom_separator);
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
        com.twitter.sdk.android.core.models.l a10 = e0.a(this.f35410f);
        setProfilePhotoView(a10);
        w(a10);
        setTimestamp(a10);
        setTweetActions(this.f35410f);
        y(this.f35410f);
        setQuoteTweet(this.f35410f);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (i()) {
            s();
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q() {
        setBackgroundColor(this.D);
        this.f35413i.setTextColor(this.f35419o);
        this.f35414j.setTextColor(this.f35420p);
        this.f35417m.setTextColor(this.f35419o);
        this.f35416l.setMediaBgColor(this.f35423s);
        this.f35416l.setPhotoErrorResId(this.f35424t);
        this.f35381z.setImageDrawable(this.G);
        this.f35380y.setTextColor(this.f35420p);
        this.f35379x.setImageResource(this.E);
        this.f35377v.setTextColor(this.f35420p);
    }

    public void setOnActionCallback(com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar) {
        this.f35378w.setOnActionCallback(new t(this, this.f35405a.b().d(), bVar));
        this.f35378w.setTweet(this.f35410f);
    }

    void setProfilePhotoView(com.twitter.sdk.android.core.models.l lVar) {
        User user;
        Picasso a10 = this.f35405a.a();
        if (a10 == null) {
            return;
        }
        a10.k((lVar == null || (user = lVar.D) == null) ? null : UserUtils.b(user, UserUtils.AvatarSize.REASONABLY_SMALL)).j(this.G).f(this.f35381z);
    }

    void setQuoteTweet(com.twitter.sdk.android.core.models.l lVar) {
        this.B = null;
        this.A.removeAllViews();
        if (lVar != null && e0.g(lVar)) {
            QuoteTweetView quoteTweetView = new QuoteTweetView(getContext());
            this.B = quoteTweetView;
            quoteTweetView.p(this.f35419o, this.f35420p, this.f35421q, this.f35422r, this.f35423s, this.f35424t);
            this.B.setTweet(lVar.f35276v);
            this.B.setTweetLinkClickListener(this.f35407c);
            this.B.setTweetMediaClickListener(this.f35408d);
            this.A.setVisibility(0);
            this.A.addView(this.B);
            return;
        }
        this.A.setVisibility(8);
    }

    @Override // com.twitter.sdk.android.tweetui.b
    public /* bridge */ /* synthetic */ void setTweet(com.twitter.sdk.android.core.models.l lVar) {
        super.setTweet(lVar);
    }

    void setTweetActions(com.twitter.sdk.android.core.models.l lVar) {
        this.f35378w.setTweet(lVar);
    }

    public void setTweetActionsEnabled(boolean z10) {
        this.f35412h = z10;
        if (z10) {
            this.f35378w.setVisibility(0);
            this.C.setVisibility(8);
            return;
        }
        this.f35378w.setVisibility(8);
        this.C.setVisibility(0);
    }

    @Override // com.twitter.sdk.android.tweetui.b
    public void setTweetLinkClickListener(w wVar) {
        super.setTweetLinkClickListener(wVar);
        QuoteTweetView quoteTweetView = this.B;
        if (quoteTweetView != null) {
            quoteTweetView.setTweetLinkClickListener(wVar);
        }
    }

    @Override // com.twitter.sdk.android.tweetui.b
    public void setTweetMediaClickListener(x xVar) {
        super.setTweetMediaClickListener(xVar);
        QuoteTweetView quoteTweetView = this.B;
        if (quoteTweetView != null) {
            quoteTweetView.setTweetMediaClickListener(xVar);
        }
    }

    void w(final com.twitter.sdk.android.core.models.l lVar) {
        if (lVar == null || lVar.D == null) {
            return;
        }
        this.f35381z.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetui.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseTweetView.this.u(lVar, view);
            }
        });
        this.f35381z.setOnTouchListener(new View.OnTouchListener() { // from class: com.twitter.sdk.android.tweetui.e
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean v10;
                v10 = BaseTweetView.this.v(view, motionEvent);
                return v10;
            }
        });
    }

    void y(com.twitter.sdk.android.core.models.l lVar) {
        if (lVar != null && lVar.f35279y != null) {
            this.f35377v.setText(getResources().getString(R$string.tw__retweeted_by_format, lVar.D.name));
            this.f35377v.setVisibility(0);
            return;
        }
        this.f35377v.setVisibility(8);
    }

    BaseTweetView(Context context, com.twitter.sdk.android.core.models.l lVar, int i9, b.a aVar) {
        super(context, null, i9, aVar);
        r(i9);
        q();
        if (i()) {
            s();
            setTweet(lVar);
        }
    }

    public BaseTweetView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseTweetView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9, new b.a());
        t(context, attributeSet);
        q();
    }
}
