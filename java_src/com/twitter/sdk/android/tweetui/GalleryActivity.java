package com.twitter.sdk.android.tweetui;

import android.app.Activity;
import android.os.Bundle;
import androidx.viewpager.widget.ViewPager;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.tweetui.internal.i;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public class GalleryActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    GalleryItem f35384a;

    /* loaded from: classes4.dex */
    public static class GalleryItem implements Serializable {
        public final List<MediaEntity> mediaEntities;
        public final int mediaEntityIndex;
        public final long tweetId;

        public GalleryItem(int i9, List<MediaEntity> list) {
            this(0L, i9, list);
        }

        public GalleryItem(long j10, int i9, List<MediaEntity> list) {
            this.tweetId = j10;
            this.mediaEntityIndex = i9;
            this.mediaEntities = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        int f35385a = -1;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
            int i11 = this.f35385a;
            if (i11 == -1 && i9 == 0 && f10 == 0.0d) {
                this.f35385a = i11 + 1;
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            this.f35385a++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements i.a {
        b() {
        }

        @Override // com.twitter.sdk.android.tweetui.internal.i.a
        public void a(float f10) {
        }

        @Override // com.twitter.sdk.android.tweetui.internal.i.a
        public void onDismiss() {
            GalleryActivity.this.finish();
            GalleryActivity.this.overridePendingTransition(0, R$anim.tw__slide_out);
        }
    }

    GalleryItem a() {
        MediaEntity mediaEntity = (MediaEntity) getIntent().getSerializableExtra("MEDIA_ENTITY");
        if (mediaEntity != null) {
            return new GalleryItem(0, Collections.singletonList(mediaEntity));
        }
        return (GalleryItem) getIntent().getSerializableExtra("GALLERY_ITEM");
    }

    ViewPager.OnPageChangeListener b() {
        return new a();
    }

    i.a c() {
        return new b();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(0, R$anim.tw__slide_out);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.tw__gallery_activity);
        this.f35384a = a();
        j jVar = new j(this, c());
        jVar.a(this.f35384a.mediaEntities);
        ViewPager viewPager = (ViewPager) findViewById(R$id.tw__view_pager);
        viewPager.setPageMargin(getResources().getDimensionPixelSize(R$dimen.tw__gallery_page_margin));
        viewPager.addOnPageChangeListener(b());
        viewPager.setAdapter(jVar);
        viewPager.setCurrentItem(this.f35384a.mediaEntityIndex);
    }
}
