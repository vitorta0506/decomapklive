package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.internal.AnalyticsEvents;
import com.twitter.sdk.android.core.internal.l;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.VideoInfo;
import com.twitter.sdk.android.tweetui.R$drawable;
import com.twitter.sdk.android.tweetui.R$id;
import com.twitter.sdk.android.tweetui.R$layout;
/* loaded from: classes4.dex */
public class MediaBadgeView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    TextView f35457a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f35458b;

    public MediaBadgeView(Context context) {
        this(context, null);
    }

    void a(Context context) {
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R$layout.tw__media_badge, (ViewGroup) this, true);
        this.f35457a = (TextView) inflate.findViewById(R$id.tw__video_duration);
        this.f35458b = (ImageView) inflate.findViewById(R$id.tw__gif_badge);
    }

    void b() {
        this.f35457a.setVisibility(8);
        this.f35458b.setVisibility(8);
    }

    void setBadge(Drawable drawable) {
        this.f35458b.setVisibility(0);
        this.f35457a.setVisibility(8);
        this.f35458b.setImageDrawable(drawable);
    }

    public void setCard(com.twitter.sdk.android.core.models.d dVar) {
        if (l.c(dVar)) {
            setBadge(getResources().getDrawable(R$drawable.tw__vine_badge));
        } else {
            b();
        }
    }

    public void setMediaEntity(MediaEntity mediaEntity) {
        if ("animated_gif".equals(mediaEntity.type)) {
            setBadge(getResources().getDrawable(R$drawable.tw__gif_badge));
        } else if (AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(mediaEntity.type)) {
            VideoInfo videoInfo = mediaEntity.videoInfo;
            setText(videoInfo == null ? 0L : videoInfo.durationMillis);
        } else {
            b();
        }
    }

    void setText(long j10) {
        this.f35457a.setVisibility(0);
        this.f35458b.setVisibility(8);
        this.f35457a.setText(d.a(j10));
    }

    public MediaBadgeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaBadgeView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a(context);
    }
}
