package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.ExpandableImageTextView;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class VideoTopicsActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private VideoTopicsActivity f22471c;

    /* renamed from: d  reason: collision with root package name */
    private View f22472d;

    /* renamed from: e  reason: collision with root package name */
    private View f22473e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoTopicsActivity f22474a;

        a(VideoTopicsActivity videoTopicsActivity) {
            this.f22474a = videoTopicsActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22474a.showMore(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoTopicsActivity f22476a;

        b(VideoTopicsActivity videoTopicsActivity) {
            this.f22476a = videoTopicsActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22476a.join(view);
        }
    }

    @UiThread
    public VideoTopicsActivity_ViewBinding(VideoTopicsActivity videoTopicsActivity, View view) {
        super(videoTopicsActivity, view);
        this.f22471c = videoTopicsActivity;
        videoTopicsActivity.avatarBg = (ImageView) butterknife.internal.c.d(view, R.id.avatar, "field 'avatarBg'", ImageView.class);
        videoTopicsActivity.mTextViewCreator = (TextView) butterknife.internal.c.d(view, R.id.creater, "field 'mTextViewCreator'", TextView.class);
        videoTopicsActivity.mTextViewCount = (TextView) butterknife.internal.c.d(view, R.id.user_count, "field 'mTextViewCount'", TextView.class);
        videoTopicsActivity.mViewPager = (ViewPager) butterknife.internal.c.d(view, R.id.viewpager, "field 'mViewPager'", ViewPager.class);
        videoTopicsActivity.mTabLayout = (TabLayout) butterknife.internal.c.d(view, R.id.tabs, "field 'mTabLayout'", TabLayout.class);
        videoTopicsActivity.mExpandableImageTextView = (ExpandableImageTextView) butterknife.internal.c.d(view, R.id.content, "field 'mExpandableImageTextView'", ExpandableImageTextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.showmore, "field 'mImageViewMore' and method 'showMore'");
        videoTopicsActivity.mImageViewMore = (ImageView) butterknife.internal.c.a(c10, R.id.showmore, "field 'mImageViewMore'", ImageView.class);
        this.f22472d = c10;
        c10.setOnClickListener(new a(videoTopicsActivity));
        View c11 = butterknife.internal.c.c(view, R.id.join, "method 'join'");
        this.f22473e = c11;
        c11.setOnClickListener(new b(videoTopicsActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        VideoTopicsActivity videoTopicsActivity = this.f22471c;
        if (videoTopicsActivity != null) {
            this.f22471c = null;
            videoTopicsActivity.avatarBg = null;
            videoTopicsActivity.mTextViewCreator = null;
            videoTopicsActivity.mTextViewCount = null;
            videoTopicsActivity.mViewPager = null;
            videoTopicsActivity.mTabLayout = null;
            videoTopicsActivity.mExpandableImageTextView = null;
            videoTopicsActivity.mImageViewMore = null;
            this.f22472d.setOnClickListener(null);
            this.f22472d = null;
            this.f22473e.setOnClickListener(null);
            this.f22473e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
