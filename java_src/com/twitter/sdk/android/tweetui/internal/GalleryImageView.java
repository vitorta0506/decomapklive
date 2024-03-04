package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.y;
import com.twitter.sdk.android.tweetui.internal.i;
/* loaded from: classes4.dex */
public class GalleryImageView extends FrameLayout implements y {

    /* renamed from: a  reason: collision with root package name */
    final MultiTouchImageView f35455a;

    /* renamed from: b  reason: collision with root package name */
    final ProgressBar f35456b;

    public GalleryImageView(Context context) {
        this(context, new MultiTouchImageView(context), new ProgressBar(context));
    }

    @Override // com.squareup.picasso.y
    public void a(Drawable drawable) {
    }

    @Override // com.squareup.picasso.y
    public void b(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        this.f35455a.setImageBitmap(bitmap);
        this.f35456b.setVisibility(8);
    }

    @Override // com.squareup.picasso.y
    public void c(Drawable drawable) {
        this.f35455a.setImageResource(17170445);
        this.f35456b.setVisibility(0);
    }

    public void setSwipeToDismissCallback(i.a aVar) {
        this.f35455a.setOnTouchListener(i.d(this.f35455a, aVar));
    }

    GalleryImageView(Context context, MultiTouchImageView multiTouchImageView, ProgressBar progressBar) {
        super(context);
        this.f35455a = multiTouchImageView;
        this.f35456b = progressBar;
        progressBar.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        addView(progressBar);
        multiTouchImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
        addView(multiTouchImageView);
    }
}
