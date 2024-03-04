package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.tweetui.internal.GalleryImageView;
import com.twitter.sdk.android.tweetui.internal.i;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
class j extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    final List<MediaEntity> f35557a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    final Context f35558b;

    /* renamed from: c  reason: collision with root package name */
    final i.a f35559c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Context context, i.a aVar) {
        this.f35558b = context;
        this.f35559c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<MediaEntity> list) {
        this.f35557a.addAll(list);
        notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i9, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f35557a.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i9) {
        GalleryImageView galleryImageView = new GalleryImageView(this.f35558b);
        galleryImageView.setSwipeToDismissCallback(this.f35559c);
        viewGroup.addView(galleryImageView);
        Picasso.p(this.f35558b).k(this.f35557a.get(i9).mediaUrlHttps).h(galleryImageView);
        return galleryImageView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
