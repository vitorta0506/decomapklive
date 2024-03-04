package com.guochao.faceshow.aaspring.modulars.ugc.base;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.ExpandableTextView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TopicAndAtTextView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class BaseDynamicViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseDynamicViewHolder f22592b;

    /* renamed from: c  reason: collision with root package name */
    private View f22593c;

    /* renamed from: d  reason: collision with root package name */
    private View f22594d;

    /* renamed from: e  reason: collision with root package name */
    private View f22595e;

    /* renamed from: f  reason: collision with root package name */
    private View f22596f;

    /* renamed from: g  reason: collision with root package name */
    private View f22597g;

    /* renamed from: h  reason: collision with root package name */
    private View f22598h;

    /* renamed from: i  reason: collision with root package name */
    private View f22599i;

    /* renamed from: j  reason: collision with root package name */
    private View f22600j;

    /* renamed from: k  reason: collision with root package name */
    private View f22601k;

    /* renamed from: l  reason: collision with root package name */
    private View f22602l;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseDynamicViewHolder f22603a;

        a(BaseDynamicViewHolder baseDynamicViewHolder) {
            this.f22603a = baseDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22603a.showMore(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseDynamicViewHolder f22605a;

        b(BaseDynamicViewHolder baseDynamicViewHolder) {
            this.f22605a = baseDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22605a.clickAvatar(view);
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseDynamicViewHolder f22607a;

        c(BaseDynamicViewHolder baseDynamicViewHolder) {
            this.f22607a = baseDynamicViewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            this.f22607a.showFloatMenu(view);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseDynamicViewHolder f22609a;

        d(BaseDynamicViewHolder baseDynamicViewHolder) {
            this.f22609a = baseDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22609a.seeLive(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseDynamicViewHolder f22611a;

        e(BaseDynamicViewHolder baseDynamicViewHolder) {
            this.f22611a = baseDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22611a.focus(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseDynamicViewHolder f22613a;

        f(BaseDynamicViewHolder baseDynamicViewHolder) {
            this.f22613a = baseDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22613a.clickAvatar(view);
        }
    }

    /* loaded from: classes3.dex */
    class g extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseDynamicViewHolder f22615a;

        g(BaseDynamicViewHolder baseDynamicViewHolder) {
            this.f22615a = baseDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22615a.clickAvatar(view);
        }
    }

    /* loaded from: classes3.dex */
    class h extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseDynamicViewHolder f22617a;

        h(BaseDynamicViewHolder baseDynamicViewHolder) {
            this.f22617a = baseDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22617a.retry(view);
        }
    }

    /* loaded from: classes3.dex */
    class i extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseDynamicViewHolder f22619a;

        i(BaseDynamicViewHolder baseDynamicViewHolder) {
            this.f22619a = baseDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22619a.openComment(view);
        }
    }

    /* loaded from: classes3.dex */
    class j extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseDynamicViewHolder f22621a;

        j(BaseDynamicViewHolder baseDynamicViewHolder) {
            this.f22621a = baseDynamicViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22621a.like(view);
        }
    }

    @UiThread
    public BaseDynamicViewHolder_ViewBinding(BaseDynamicViewHolder baseDynamicViewHolder, View view) {
        this.f22592b = baseDynamicViewHolder;
        View c10 = butterknife.internal.c.c(view, R.id.avatar_view, "field 'mAvatarView' and method 'clickAvatar'");
        baseDynamicViewHolder.mAvatarView = (HeadPortraitView) butterknife.internal.c.a(c10, R.id.avatar_view, "field 'mAvatarView'", HeadPortraitView.class);
        this.f22593c = c10;
        c10.setOnClickListener(new b(baseDynamicViewHolder));
        baseDynamicViewHolder.mContentTextView = (ExpandableTextView) butterknife.internal.c.d(view, R.id.expand_content, "field 'mContentTextView'", ExpandableTextView.class);
        View c11 = butterknife.internal.c.c(view, R.id.text_content, "field 'mTopicAndAtTextView' and method 'showFloatMenu'");
        baseDynamicViewHolder.mTopicAndAtTextView = (TopicAndAtTextView) butterknife.internal.c.a(c11, R.id.text_content, "field 'mTopicAndAtTextView'", TopicAndAtTextView.class);
        this.f22594d = c11;
        c11.setOnLongClickListener(new c(baseDynamicViewHolder));
        View c12 = butterknife.internal.c.c(view, R.id.live_status_view, "field 'mLiveStatusView' and method 'seeLive'");
        baseDynamicViewHolder.mLiveStatusView = c12;
        this.f22595e = c12;
        c12.setOnClickListener(new d(baseDynamicViewHolder));
        baseDynamicViewHolder.mImageViewLiveAnim = (ImageView) butterknife.internal.c.d(view, R.id.anim_live_status, "field 'mImageViewLiveAnim'", ImageView.class);
        baseDynamicViewHolder.mImageViewPublishFail = (ImageView) butterknife.internal.c.d(view, R.id.icon_publish_fail, "field 'mImageViewPublishFail'", ImageView.class);
        baseDynamicViewHolder.mSVGAImageView = (SVGAImageView) butterknife.internal.c.d(view, R.id.like_image_view, "field 'mSVGAImageView'", SVGAImageView.class);
        View c13 = butterknife.internal.c.c(view, R.id.icon_focus, "field 'iconFocus' and method 'focus'");
        baseDynamicViewHolder.iconFocus = (ImageView) butterknife.internal.c.a(c13, R.id.icon_focus, "field 'iconFocus'", ImageView.class);
        this.f22596f = c13;
        c13.setOnClickListener(new e(baseDynamicViewHolder));
        baseDynamicViewHolder.focusSVGAImage = (SVGAImageView) butterknife.internal.c.d(view, R.id.focusSVGA, "field 'focusSVGAImage'", SVGAImageView.class);
        baseDynamicViewHolder.mSVGAImageViewBg = (ImageView) butterknife.internal.c.d(view, R.id.like_image_view_bg, "field 'mSVGAImageViewBg'", ImageView.class);
        baseDynamicViewHolder.translateLay = butterknife.internal.c.c(view, R.id.translate_layout, "field 'translateLay'");
        baseDynamicViewHolder.contentLayout = butterknife.internal.c.c(view, R.id.content_layout, "field 'contentLayout'");
        View c14 = butterknife.internal.c.c(view, R.id.user_name, "method 'clickAvatar'");
        this.f22597g = c14;
        c14.setOnClickListener(new f(baseDynamicViewHolder));
        View c15 = butterknife.internal.c.c(view, R.id.user_center_age_level, "method 'clickAvatar'");
        this.f22598h = c15;
        c15.setOnClickListener(new g(baseDynamicViewHolder));
        View c16 = butterknife.internal.c.c(view, R.id.time_addr_area, "method 'retry'");
        this.f22599i = c16;
        c16.setOnClickListener(new h(baseDynamicViewHolder));
        View c17 = butterknife.internal.c.c(view, R.id.comment_area, "method 'openComment'");
        this.f22600j = c17;
        c17.setOnClickListener(new i(baseDynamicViewHolder));
        View c18 = butterknife.internal.c.c(view, R.id.like_area, "method 'like'");
        this.f22601k = c18;
        c18.setOnClickListener(new j(baseDynamicViewHolder));
        View c19 = butterknife.internal.c.c(view, R.id.more, "method 'showMore'");
        this.f22602l = c19;
        c19.setOnClickListener(new a(baseDynamicViewHolder));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseDynamicViewHolder baseDynamicViewHolder = this.f22592b;
        if (baseDynamicViewHolder != null) {
            this.f22592b = null;
            baseDynamicViewHolder.mAvatarView = null;
            baseDynamicViewHolder.mContentTextView = null;
            baseDynamicViewHolder.mTopicAndAtTextView = null;
            baseDynamicViewHolder.mLiveStatusView = null;
            baseDynamicViewHolder.mImageViewLiveAnim = null;
            baseDynamicViewHolder.mImageViewPublishFail = null;
            baseDynamicViewHolder.mSVGAImageView = null;
            baseDynamicViewHolder.iconFocus = null;
            baseDynamicViewHolder.focusSVGAImage = null;
            baseDynamicViewHolder.mSVGAImageViewBg = null;
            baseDynamicViewHolder.translateLay = null;
            baseDynamicViewHolder.contentLayout = null;
            this.f22593c.setOnClickListener(null);
            this.f22593c = null;
            this.f22594d.setOnLongClickListener(null);
            this.f22594d = null;
            this.f22595e.setOnClickListener(null);
            this.f22595e = null;
            this.f22596f.setOnClickListener(null);
            this.f22596f = null;
            this.f22597g.setOnClickListener(null);
            this.f22597g = null;
            this.f22598h.setOnClickListener(null);
            this.f22598h = null;
            this.f22599i.setOnClickListener(null);
            this.f22599i = null;
            this.f22600j.setOnClickListener(null);
            this.f22600j = null;
            this.f22601k.setOnClickListener(null);
            this.f22601k = null;
            this.f22602l.setOnClickListener(null);
            this.f22602l = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
