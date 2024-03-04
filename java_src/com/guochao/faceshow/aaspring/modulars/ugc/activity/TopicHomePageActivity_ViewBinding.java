package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.Space;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class TopicHomePageActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private TopicHomePageActivity f22413c;

    /* renamed from: d  reason: collision with root package name */
    private View f22414d;

    /* renamed from: e  reason: collision with root package name */
    private View f22415e;

    /* renamed from: f  reason: collision with root package name */
    private View f22416f;

    /* renamed from: g  reason: collision with root package name */
    private View f22417g;

    /* renamed from: h  reason: collision with root package name */
    private View f22418h;

    /* renamed from: i  reason: collision with root package name */
    private View f22419i;

    /* renamed from: j  reason: collision with root package name */
    private View f22420j;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TopicHomePageActivity f22421a;

        a(TopicHomePageActivity topicHomePageActivity) {
            this.f22421a = topicHomePageActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22421a.doPublishPicture(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TopicHomePageActivity f22423a;

        b(TopicHomePageActivity topicHomePageActivity) {
            this.f22423a = topicHomePageActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22423a.doPublishVideo(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TopicHomePageActivity f22425a;

        c(TopicHomePageActivity topicHomePageActivity) {
            this.f22425a = topicHomePageActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22425a.showPublish(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TopicHomePageActivity f22427a;

        d(TopicHomePageActivity topicHomePageActivity) {
            this.f22427a = topicHomePageActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22427a.seeUser(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TopicHomePageActivity f22429a;

        e(TopicHomePageActivity topicHomePageActivity) {
            this.f22429a = topicHomePageActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22429a.emptyClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TopicHomePageActivity f22431a;

        f(TopicHomePageActivity topicHomePageActivity) {
            this.f22431a = topicHomePageActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22431a.seeUser(view);
        }
    }

    /* loaded from: classes3.dex */
    class g extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TopicHomePageActivity f22433a;

        g(TopicHomePageActivity topicHomePageActivity) {
            this.f22433a = topicHomePageActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22433a.close(view);
        }
    }

    @UiThread
    public TopicHomePageActivity_ViewBinding(TopicHomePageActivity topicHomePageActivity, View view) {
        super(topicHomePageActivity, view);
        this.f22413c = topicHomePageActivity;
        topicHomePageActivity.mViewPager = (ViewPager) butterknife.internal.c.d(view, R.id.view_pager, "field 'mViewPager'", ViewPager.class);
        topicHomePageActivity.mTabLayout = (TabLayout) butterknife.internal.c.d(view, R.id.tabs, "field 'mTabLayout'", TabLayout.class);
        topicHomePageActivity.mTabLayoutSticky = (TabLayout) butterknife.internal.c.d(view, R.id.tabs_sticky, "field 'mTabLayoutSticky'", TabLayout.class);
        topicHomePageActivity.mTabLayoutStickyArea = butterknife.internal.c.c(view, R.id.tabs_sticky_area, "field 'mTabLayoutStickyArea'");
        topicHomePageActivity.mAppBarLayout = (AppBarLayout) butterknife.internal.c.d(view, R.id.appbar, "field 'mAppBarLayout'", AppBarLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.publish_picture, "field 'mImageViewPublishImage' and method 'doPublishPicture'");
        topicHomePageActivity.mImageViewPublishImage = (ImageView) butterknife.internal.c.a(c10, R.id.publish_picture, "field 'mImageViewPublishImage'", ImageView.class);
        this.f22414d = c10;
        c10.setOnClickListener(new a(topicHomePageActivity));
        View c11 = butterknife.internal.c.c(view, R.id.publish_video, "field 'mImageViewPublishVideo' and method 'doPublishVideo'");
        topicHomePageActivity.mImageViewPublishVideo = (ImageView) butterknife.internal.c.a(c11, R.id.publish_video, "field 'mImageViewPublishVideo'", ImageView.class);
        this.f22415e = c11;
        c11.setOnClickListener(new b(topicHomePageActivity));
        View c12 = butterknife.internal.c.c(view, R.id.publishIV, "field 'mImageViewPublish' and method 'showPublish'");
        topicHomePageActivity.mImageViewPublish = (ImageView) butterknife.internal.c.a(c12, R.id.publishIV, "field 'mImageViewPublish'", ImageView.class);
        this.f22416f = c12;
        c12.setOnClickListener(new c(topicHomePageActivity));
        topicHomePageActivity.mTitleView = butterknife.internal.c.c(view, R.id.float_title_back, "field 'mTitleView'");
        topicHomePageActivity.bottomDivider = butterknife.internal.c.c(view, R.id.bottom_divider, "field 'bottomDivider'");
        View c13 = butterknife.internal.c.c(view, R.id.avatar_view, "field 'mAvatarView' and method 'seeUser'");
        topicHomePageActivity.mAvatarView = (HeadPortraitView) butterknife.internal.c.a(c13, R.id.avatar_view, "field 'mAvatarView'", HeadPortraitView.class);
        this.f22417g = c13;
        c13.setOnClickListener(new d(topicHomePageActivity));
        topicHomePageActivity.mImageView = (ImageView) butterknife.internal.c.b(view, R.id.avatar, "field 'mImageView'", ImageView.class);
        topicHomePageActivity.mSpace = (Space) butterknife.internal.c.d(view, R.id.top_space, "field 'mSpace'", Space.class);
        View c14 = butterknife.internal.c.c(view, R.id.mask, "method 'emptyClick'");
        this.f22418h = c14;
        c14.setOnClickListener(new e(topicHomePageActivity));
        View c15 = butterknife.internal.c.c(view, R.id.author, "method 'seeUser'");
        this.f22419i = c15;
        c15.setOnClickListener(new f(topicHomePageActivity));
        View c16 = butterknife.internal.c.c(view, R.id.close, "method 'close'");
        this.f22420j = c16;
        c16.setOnClickListener(new g(topicHomePageActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        TopicHomePageActivity topicHomePageActivity = this.f22413c;
        if (topicHomePageActivity != null) {
            this.f22413c = null;
            topicHomePageActivity.mViewPager = null;
            topicHomePageActivity.mTabLayout = null;
            topicHomePageActivity.mTabLayoutSticky = null;
            topicHomePageActivity.mTabLayoutStickyArea = null;
            topicHomePageActivity.mAppBarLayout = null;
            topicHomePageActivity.mImageViewPublishImage = null;
            topicHomePageActivity.mImageViewPublishVideo = null;
            topicHomePageActivity.mImageViewPublish = null;
            topicHomePageActivity.mTitleView = null;
            topicHomePageActivity.bottomDivider = null;
            topicHomePageActivity.mAvatarView = null;
            topicHomePageActivity.mImageView = null;
            topicHomePageActivity.mSpace = null;
            this.f22414d.setOnClickListener(null);
            this.f22414d = null;
            this.f22415e.setOnClickListener(null);
            this.f22415e = null;
            this.f22416f.setOnClickListener(null);
            this.f22416f = null;
            this.f22417g.setOnClickListener(null);
            this.f22417g = null;
            this.f22418h.setOnClickListener(null);
            this.f22418h = null;
            this.f22419i.setOnClickListener(null);
            this.f22419i = null;
            this.f22420j.setOnClickListener(null);
            this.f22420j = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
