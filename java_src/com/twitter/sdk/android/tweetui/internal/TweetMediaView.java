package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.l;
import com.twitter.sdk.android.tweetui.GalleryActivity;
import com.twitter.sdk.android.tweetui.PlayerActivity;
import com.twitter.sdk.android.tweetui.R$dimen;
import com.twitter.sdk.android.tweetui.R$drawable;
import com.twitter.sdk.android.tweetui.R$id;
import com.twitter.sdk.android.tweetui.R$string;
import com.twitter.sdk.android.tweetui.d0;
import com.twitter.sdk.android.tweetui.x;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public class TweetMediaView extends ViewGroup implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final OverlayImageView[] f35472a;

    /* renamed from: b  reason: collision with root package name */
    private List<MediaEntity> f35473b;

    /* renamed from: c  reason: collision with root package name */
    private final Path f35474c;

    /* renamed from: d  reason: collision with root package name */
    private final RectF f35475d;

    /* renamed from: e  reason: collision with root package name */
    private final int f35476e;

    /* renamed from: f  reason: collision with root package name */
    private int f35477f;

    /* renamed from: g  reason: collision with root package name */
    final float[] f35478g;

    /* renamed from: h  reason: collision with root package name */
    int f35479h;

    /* renamed from: i  reason: collision with root package name */
    int f35480i;

    /* renamed from: j  reason: collision with root package name */
    final a f35481j;

    /* renamed from: k  reason: collision with root package name */
    boolean f35482k;

    /* renamed from: l  reason: collision with root package name */
    x f35483l;

    /* renamed from: m  reason: collision with root package name */
    l f35484m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {
        a() {
        }

        Picasso a() {
            return d0.c().b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b implements com.squareup.picasso.e {

        /* renamed from: a  reason: collision with root package name */
        final WeakReference<ImageView> f35485a;

        b(ImageView imageView) {
            this.f35485a = new WeakReference<>(imageView);
        }

        @Override // com.squareup.picasso.e
        public void onError() {
        }

        @Override // com.squareup.picasso.e
        public void onSuccess() {
            ImageView imageView = this.f35485a.get();
            if (imageView != null) {
                imageView.setBackgroundResource(17170445);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: c  reason: collision with root package name */
        static final c f35486c = new c();

        /* renamed from: a  reason: collision with root package name */
        final int f35487a;

        /* renamed from: b  reason: collision with root package name */
        final int f35488b;

        private c() {
            this(0, 0);
        }

        static c a(int i9, int i10) {
            int max = Math.max(i9, 0);
            int max2 = Math.max(i10, 0);
            return (max == 0 && max2 == 0) ? f35486c : new c(max, max2);
        }

        private c(int i9, int i10) {
            this.f35487a = i9;
            this.f35488b = i10;
        }
    }

    public TweetMediaView(Context context) {
        this(context, null);
    }

    void a() {
        for (int i9 = 0; i9 < this.f35477f; i9++) {
            OverlayImageView overlayImageView = this.f35472a[i9];
            if (overlayImageView != null) {
                overlayImageView.setVisibility(8);
            }
        }
        this.f35477f = 0;
    }

    OverlayImageView b(int i9) {
        OverlayImageView overlayImageView = this.f35472a[i9];
        if (overlayImageView == null) {
            overlayImageView = new OverlayImageView(getContext());
            overlayImageView.setLayoutParams(generateDefaultLayoutParams());
            overlayImageView.setOnClickListener(this);
            this.f35472a[i9] = overlayImageView;
            addView(overlayImageView, i9);
        } else {
            k(i9, 0, 0);
            i(i9, 0, 0, 0, 0);
        }
        overlayImageView.setVisibility(0);
        overlayImageView.setBackgroundColor(this.f35479h);
        overlayImageView.setTag(R$id.tw__entity_index, Integer.valueOf(i9));
        return overlayImageView;
    }

    String c(MediaEntity mediaEntity) {
        if (this.f35477f > 1) {
            return mediaEntity.mediaUrlHttps + ":small";
        }
        return mediaEntity.mediaUrlHttps;
    }

    void d(com.twitter.sdk.android.core.models.d dVar) {
        this.f35477f = 1;
        OverlayImageView b10 = b(0);
        com.twitter.sdk.android.core.models.h a10 = com.twitter.sdk.android.core.internal.l.a(dVar);
        m(b10, a10.f35239d);
        n(b10, a10.f35238c);
        o(b10, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f35482k) {
            int save = canvas.save();
            canvas.clipPath(this.f35474c);
            super.dispatchDraw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.dispatchDraw(canvas);
    }

    void e(List<MediaEntity> list) {
        this.f35477f = Math.min(4, list.size());
        for (int i9 = 0; i9 < this.f35477f; i9++) {
            OverlayImageView b10 = b(i9);
            MediaEntity mediaEntity = list.get(i9);
            m(b10, mediaEntity.altText);
            n(b10, c(mediaEntity));
            o(b10, j.k(mediaEntity));
        }
    }

    public void f(int i9) {
        Intent intent = new Intent(getContext(), GalleryActivity.class);
        intent.putExtra("GALLERY_ITEM", new GalleryActivity.GalleryItem(this.f35484m.f35263i, i9, this.f35473b));
        com.twitter.sdk.android.core.f.b(getContext(), intent);
    }

    public void g(MediaEntity mediaEntity) {
        if (j.d(mediaEntity) != null) {
            Intent intent = new Intent(getContext(), PlayerActivity.class);
            intent.putExtra("PLAYER_ITEM", new PlayerActivity.PlayerItem(j.d(mediaEntity).url, j.h(mediaEntity), j.l(mediaEntity), null, null));
            com.twitter.sdk.android.core.f.b(getContext(), intent);
        }
    }

    public void h(l lVar) {
        com.twitter.sdk.android.core.models.d dVar = lVar.H;
        Intent intent = new Intent(getContext(), PlayerActivity.class);
        intent.putExtra("PLAYER_ITEM", new PlayerActivity.PlayerItem(com.twitter.sdk.android.core.internal.l.b(dVar), true, false, null, null));
        com.twitter.sdk.android.core.f.b(getContext(), intent);
    }

    void i(int i9, int i10, int i11, int i12, int i13) {
        OverlayImageView overlayImageView = this.f35472a[i9];
        if (overlayImageView.getLeft() == i10 && overlayImageView.getTop() == i11 && overlayImageView.getRight() == i12 && overlayImageView.getBottom() == i13) {
            return;
        }
        overlayImageView.layout(i10, i11, i12, i13);
    }

    void j() {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i9 = this.f35476e;
        int i10 = (measuredWidth - i9) / 2;
        int i11 = (measuredHeight - i9) / 2;
        int i12 = i10 + i9;
        int i13 = this.f35477f;
        if (i13 == 1) {
            i(0, 0, 0, measuredWidth, measuredHeight);
        } else if (i13 == 2) {
            i(0, 0, 0, i10, measuredHeight);
            i(1, i10 + this.f35476e, 0, measuredWidth, measuredHeight);
        } else if (i13 == 3) {
            i(0, 0, 0, i10, measuredHeight);
            i(1, i12, 0, measuredWidth, i11);
            i(2, i12, i11 + this.f35476e, measuredWidth, measuredHeight);
        } else if (i13 != 4) {
        } else {
            i(0, 0, 0, i10, i11);
            i(2, 0, i11 + this.f35476e, i10, measuredHeight);
            i(1, i12, 0, measuredWidth, i11);
            i(3, i12, i11 + this.f35476e, measuredWidth, measuredHeight);
        }
    }

    void k(int i9, int i10, int i11) {
        this.f35472a[i9].measure(View.MeasureSpec.makeMeasureSpec(i10, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i11, BasicMeasure.EXACTLY));
    }

    c l(int i9, int i10) {
        int size = View.MeasureSpec.getSize(i9);
        int size2 = View.MeasureSpec.getSize(i10);
        int i11 = this.f35476e;
        int i12 = (size - i11) / 2;
        int i13 = (size2 - i11) / 2;
        int i14 = this.f35477f;
        if (i14 == 1) {
            k(0, size, size2);
        } else if (i14 == 2) {
            k(0, i12, size2);
            k(1, i12, size2);
        } else if (i14 == 3) {
            k(0, i12, size2);
            k(1, i12, i13);
            k(2, i12, i13);
        } else if (i14 == 4) {
            k(0, i12, i13);
            k(1, i12, i13);
            k(2, i12, i13);
            k(3, i12, i13);
        }
        return c.a(size, size2);
    }

    void m(ImageView imageView, String str) {
        if (!TextUtils.isEmpty(str)) {
            imageView.setContentDescription(str);
        } else {
            imageView.setContentDescription(getResources().getString(R$string.tw__tweet_media));
        }
    }

    void n(ImageView imageView, String str) {
        Picasso a10 = this.f35481j.a();
        if (a10 == null) {
            return;
        }
        a10.k(str).d().a().c(this.f35480i).g(imageView, new b(imageView));
    }

    void o(OverlayImageView overlayImageView, boolean z10) {
        if (z10) {
            overlayImageView.setOverlayDrawable(getContext().getResources().getDrawable(R$drawable.tw__player_overlay));
        } else {
            overlayImageView.setOverlayDrawable(null);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer num = (Integer) view.getTag(R$id.tw__entity_index);
        if (this.f35483l != null) {
            this.f35483l.a(this.f35484m, !this.f35473b.isEmpty() ? this.f35473b.get(num.intValue()) : null);
        } else if (!this.f35473b.isEmpty()) {
            MediaEntity mediaEntity = this.f35473b.get(num.intValue());
            if (j.k(mediaEntity)) {
                g(mediaEntity);
            } else if (j.i(mediaEntity)) {
                f(num.intValue());
            }
        } else {
            h(this.f35484m);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        if (this.f35477f > 0) {
            j();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        c cVar;
        if (this.f35477f > 0) {
            cVar = l(i9, i10);
        } else {
            cVar = c.f35486c;
        }
        setMeasuredDimension(cVar.f35487a, cVar.f35488b);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        this.f35474c.reset();
        this.f35475d.set(0.0f, 0.0f, i9, i10);
        this.f35474c.addRoundRect(this.f35475d, this.f35478g, Path.Direction.CW);
        this.f35474c.close();
    }

    public void p(int i9, int i10, int i11, int i12) {
        float[] fArr = this.f35478g;
        float f10 = i9;
        fArr[0] = f10;
        fArr[1] = f10;
        float f11 = i10;
        fArr[2] = f11;
        fArr[3] = f11;
        float f12 = i11;
        fArr[4] = f12;
        fArr[5] = f12;
        float f13 = i12;
        fArr[6] = f13;
        fArr[7] = f13;
        requestLayout();
    }

    public void q(l lVar, List<MediaEntity> list) {
        if (lVar == null || list == null || list.isEmpty() || list.equals(this.f35473b)) {
            return;
        }
        this.f35484m = lVar;
        this.f35473b = list;
        a();
        e(list);
        this.f35482k = j.i(list.get(0));
        requestLayout();
    }

    public void setMediaBgColor(int i9) {
        this.f35479h = i9;
    }

    public void setPhotoErrorResId(int i9) {
        this.f35480i = i9;
    }

    public void setTweetMediaClickListener(x xVar) {
        this.f35483l = xVar;
    }

    public void setVineCard(l lVar) {
        com.twitter.sdk.android.core.models.d dVar;
        if (lVar == null || (dVar = lVar.H) == null || !com.twitter.sdk.android.core.internal.l.c(dVar)) {
            return;
        }
        this.f35484m = lVar;
        this.f35473b = Collections.emptyList();
        a();
        d(lVar.H);
        this.f35482k = false;
        requestLayout();
    }

    public TweetMediaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, new a());
    }

    TweetMediaView(Context context, AttributeSet attributeSet, a aVar) {
        super(context, attributeSet);
        this.f35472a = new OverlayImageView[4];
        this.f35473b = Collections.emptyList();
        this.f35474c = new Path();
        this.f35475d = new RectF();
        this.f35478g = new float[8];
        this.f35479h = ViewCompat.MEASURED_STATE_MASK;
        this.f35481j = aVar;
        this.f35476e = getResources().getDimensionPixelSize(R$dimen.tw__media_view_divider_size);
        this.f35480i = R$drawable.tw__ic_tweet_photo_error_dark;
    }
}
