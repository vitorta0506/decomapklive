package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.internal.UserUtils;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.tweetui.internal.AspectRatioFrameLayout;
import com.twitter.sdk.android.tweetui.internal.MediaBadgeView;
import com.twitter.sdk.android.tweetui.internal.TweetMediaView;
import java.text.DateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class b extends RelativeLayout {

    /* renamed from: u  reason: collision with root package name */
    static final int f35404u = R$style.tw__TweetLightStyle;

    /* renamed from: a  reason: collision with root package name */
    final a f35405a;

    /* renamed from: b  reason: collision with root package name */
    private l f35406b;

    /* renamed from: c  reason: collision with root package name */
    w f35407c;

    /* renamed from: d  reason: collision with root package name */
    x f35408d;

    /* renamed from: e  reason: collision with root package name */
    private Uri f35409e;

    /* renamed from: f  reason: collision with root package name */
    com.twitter.sdk.android.core.models.l f35410f;

    /* renamed from: g  reason: collision with root package name */
    int f35411g;

    /* renamed from: h  reason: collision with root package name */
    boolean f35412h;

    /* renamed from: i  reason: collision with root package name */
    TextView f35413i;

    /* renamed from: j  reason: collision with root package name */
    TextView f35414j;

    /* renamed from: k  reason: collision with root package name */
    AspectRatioFrameLayout f35415k;

    /* renamed from: l  reason: collision with root package name */
    TweetMediaView f35416l;

    /* renamed from: m  reason: collision with root package name */
    TextView f35417m;

    /* renamed from: n  reason: collision with root package name */
    MediaBadgeView f35418n;

    /* renamed from: o  reason: collision with root package name */
    int f35419o;

    /* renamed from: p  reason: collision with root package name */
    int f35420p;

    /* renamed from: q  reason: collision with root package name */
    int f35421q;

    /* renamed from: r  reason: collision with root package name */
    int f35422r;

    /* renamed from: s  reason: collision with root package name */
    int f35423s;

    /* renamed from: t  reason: collision with root package name */
    int f35424t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public Picasso a() {
            return d0.c().b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public d0 b() {
            return d0.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.tweetui.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class View$OnClickListenerC0362b implements View.OnClickListener {
        View$OnClickListenerC0362b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.getPermalinkUri() == null) {
                return;
            }
            b.this.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, AttributeSet attributeSet, int i9, a aVar) {
        super(context, attributeSet, i9);
        this.f35405a = aVar;
        h(context);
        c();
    }

    private void h(Context context) {
        LayoutInflater.from(context).inflate(getLayout(), (ViewGroup) this, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        w wVar = this.f35407c;
        if (wVar != null) {
            wVar.a(this.f35410f, str);
            return;
        }
        if (com.twitter.sdk.android.core.f.b(getContext(), new Intent("android.intent.action.VIEW", Uri.parse(str)))) {
            return;
        }
        com.twitter.sdk.android.core.l.g().e("TweetUi", "Activity cannot be found to open URL");
    }

    private void m() {
        setOnClickListener(new View$OnClickListenerC0362b());
    }

    private void setName(com.twitter.sdk.android.core.models.l lVar) {
        User user;
        if (lVar != null && (user = lVar.D) != null) {
            this.f35413i.setText(f0.e(user.name));
        } else {
            this.f35413i.setText("");
        }
    }

    private void setScreenName(com.twitter.sdk.android.core.models.l lVar) {
        User user;
        if (lVar != null && (user = lVar.D) != null) {
            this.f35414j.setText(UserUtils.a(f0.e(user.screenName)));
        } else {
            this.f35414j.setText("");
        }
    }

    private void setText(com.twitter.sdk.android.core.models.l lVar) {
        this.f35417m.setImportantForAccessibility(2);
        CharSequence b10 = f0.b(g(lVar));
        com.twitter.sdk.android.tweetui.internal.g.c(this.f35417m);
        if (!TextUtils.isEmpty(b10)) {
            this.f35417m.setText(b10);
            this.f35417m.setVisibility(0);
            return;
        }
        this.f35417m.setText("");
        this.f35417m.setVisibility(8);
    }

    protected void b() {
        this.f35415k.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f35413i = (TextView) findViewById(R$id.tw__tweet_author_full_name);
        this.f35414j = (TextView) findViewById(R$id.tw__tweet_author_screen_name);
        this.f35415k = (AspectRatioFrameLayout) findViewById(R$id.tw__aspect_ratio_media_container);
        this.f35416l = (TweetMediaView) findViewById(R$id.tweet_media_view);
        this.f35417m = (TextView) findViewById(R$id.tw__tweet_text);
        this.f35418n = (MediaBadgeView) findViewById(R$id.tw__tweet_media_badge);
    }

    protected double d(com.twitter.sdk.android.core.models.h hVar) {
        int i9;
        int i10;
        if (hVar == null || (i9 = hVar.f35237b) == 0 || (i10 = hVar.f35236a) == 0) {
            return 1.7777777777777777d;
        }
        return i9 / i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double e(MediaEntity mediaEntity) {
        MediaEntity.Sizes sizes;
        MediaEntity.Size size;
        int i9;
        int i10;
        if (mediaEntity == null || (sizes = mediaEntity.sizes) == null || (size = sizes.medium) == null || (i9 = size.f35216w) == 0 || (i10 = size.f35215h) == 0) {
            return 1.7777777777777777d;
        }
        return i9 / i10;
    }

    protected abstract double f(int i9);

    protected CharSequence g(com.twitter.sdk.android.core.models.l lVar) {
        h e10 = this.f35405a.b().d().e(lVar);
        if (e10 == null) {
            return null;
        }
        com.twitter.sdk.android.core.models.d dVar = lVar.H;
        return b0.h(e10, getLinkClickListener(), this.f35421q, this.f35422r, e0.g(lVar), dVar != null && com.twitter.sdk.android.core.internal.l.c(dVar));
    }

    abstract int getLayout();

    protected l getLinkClickListener() {
        if (this.f35406b == null) {
            this.f35406b = new l() { // from class: com.twitter.sdk.android.tweetui.a
                @Override // com.twitter.sdk.android.tweetui.l
                public final void a(String str) {
                    b.this.j(str);
                }
            };
        }
        return this.f35406b;
    }

    Uri getPermalinkUri() {
        return this.f35409e;
    }

    public com.twitter.sdk.android.core.models.l getTweet() {
        return this.f35410f;
    }

    public long getTweetId() {
        com.twitter.sdk.android.core.models.l lVar = this.f35410f;
        if (lVar == null) {
            return -1L;
        }
        return lVar.f35263i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        if (isInEditMode()) {
            return false;
        }
        try {
            this.f35405a.b();
            return true;
        } catch (IllegalStateException e10) {
            com.twitter.sdk.android.core.l.g().e("TweetUi", e10.getMessage());
            setEnabled(false);
            return false;
        }
    }

    void k() {
        if (com.twitter.sdk.android.core.f.b(getContext(), new Intent("android.intent.action.VIEW", getPermalinkUri()))) {
            return;
        }
        com.twitter.sdk.android.core.l.g().e("TweetUi", "Activity cannot be found to open permalink URI");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        com.twitter.sdk.android.core.models.l a10 = e0.a(this.f35410f);
        setName(a10);
        setScreenName(a10);
        setTweetMedia(a10);
        setText(a10);
        setContentDescription(a10);
        if (e0.f(this.f35410f)) {
            n(this.f35410f.D.screenName, Long.valueOf(getTweetId()));
        } else {
            this.f35409e = null;
        }
        m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(String str, Long l10) {
        if (l10.longValue() <= 0) {
            return;
        }
        this.f35409e = e0.c(str, l10.longValue());
    }

    void setContentDescription(com.twitter.sdk.android.core.models.l lVar) {
        if (!e0.f(lVar)) {
            setContentDescription(getResources().getString(R$string.tw__loading_tweet));
            return;
        }
        h e10 = this.f35405a.b().d().e(lVar);
        String str = e10 != null ? e10.f35442a : null;
        long a10 = v.a(lVar.f35256b);
        setContentDescription(getResources().getString(R$string.tw__tweet_content_description, f0.e(lVar.D.name), f0.e(str), f0.e(a10 != -1 ? DateFormat.getDateInstance().format(new Date(a10)) : null)));
    }

    public void setTweet(com.twitter.sdk.android.core.models.l lVar) {
        this.f35410f = lVar;
        l();
    }

    public void setTweetLinkClickListener(w wVar) {
        this.f35407c = wVar;
    }

    final void setTweetMedia(com.twitter.sdk.android.core.models.l lVar) {
        b();
        if (lVar == null) {
            return;
        }
        com.twitter.sdk.android.core.models.d dVar = lVar.H;
        if (dVar != null && com.twitter.sdk.android.core.internal.l.c(dVar)) {
            com.twitter.sdk.android.core.models.d dVar2 = lVar.H;
            com.twitter.sdk.android.core.models.h a10 = com.twitter.sdk.android.core.internal.l.a(dVar2);
            String b10 = com.twitter.sdk.android.core.internal.l.b(dVar2);
            if (a10 == null || TextUtils.isEmpty(b10)) {
                return;
            }
            setViewsForMedia(d(a10));
            this.f35416l.setVineCard(lVar);
            this.f35418n.setVisibility(0);
            this.f35418n.setCard(dVar2);
        } else if (com.twitter.sdk.android.tweetui.internal.j.g(lVar)) {
            MediaEntity e10 = com.twitter.sdk.android.tweetui.internal.j.e(lVar);
            setViewsForMedia(e(e10));
            this.f35416l.q(this.f35410f, Collections.singletonList(e10));
            this.f35418n.setVisibility(0);
            this.f35418n.setMediaEntity(e10);
        } else if (com.twitter.sdk.android.tweetui.internal.j.f(lVar)) {
            List<MediaEntity> b11 = com.twitter.sdk.android.tweetui.internal.j.b(lVar);
            setViewsForMedia(f(b11.size()));
            this.f35416l.q(lVar, b11);
            this.f35418n.setVisibility(8);
        }
    }

    public void setTweetMediaClickListener(x xVar) {
        this.f35408d = xVar;
        this.f35416l.setTweetMediaClickListener(xVar);
    }

    void setViewsForMedia(double d10) {
        this.f35415k.setVisibility(0);
        this.f35415k.setAspectRatio(d10);
        this.f35416l.setVisibility(0);
    }
}
