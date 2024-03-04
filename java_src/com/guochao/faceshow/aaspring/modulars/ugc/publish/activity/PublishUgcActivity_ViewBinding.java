package com.guochao.faceshow.aaspring.modulars.ugc.publish.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.AtTopicUgcEditText;
import com.guochao.faceshow.views.ObservableScrollView;
/* loaded from: classes3.dex */
public class PublishUgcActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PublishUgcActivity f22941c;

    /* renamed from: d  reason: collision with root package name */
    private View f22942d;

    /* renamed from: e  reason: collision with root package name */
    private View f22943e;

    /* renamed from: f  reason: collision with root package name */
    private View f22944f;

    /* renamed from: g  reason: collision with root package name */
    private View f22945g;

    /* renamed from: h  reason: collision with root package name */
    private View f22946h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PublishUgcActivity f22947a;

        a(PublishUgcActivity publishUgcActivity) {
            this.f22947a = publishUgcActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22947a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PublishUgcActivity f22949a;

        b(PublishUgcActivity publishUgcActivity) {
            this.f22949a = publishUgcActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22949a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PublishUgcActivity f22951a;

        c(PublishUgcActivity publishUgcActivity) {
            this.f22951a = publishUgcActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22951a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PublishUgcActivity f22953a;

        d(PublishUgcActivity publishUgcActivity) {
            this.f22953a = publishUgcActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22953a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PublishUgcActivity f22955a;

        e(PublishUgcActivity publishUgcActivity) {
            this.f22955a = publishUgcActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22955a.onViewClicked(view);
        }
    }

    @UiThread
    public PublishUgcActivity_ViewBinding(PublishUgcActivity publishUgcActivity, View view) {
        super(publishUgcActivity, view);
        this.f22941c = publishUgcActivity;
        publishUgcActivity.publishImageLay = (LinearLayout) butterknife.internal.c.d(view, R.id.publish_image_lay, "field 'publishImageLay'", LinearLayout.class);
        publishUgcActivity.etUgcPublish = (AtTopicUgcEditText) butterknife.internal.c.d(view, R.id.et_ugc_publish, "field 'etUgcPublish'", AtTopicUgcEditText.class);
        publishUgcActivity.firstTip = (LinearLayout) butterknife.internal.c.d(view, R.id.first_tip, "field 'firstTip'", LinearLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.view_range_btn, "field 'viewRangeBtn' and method 'onViewClicked'");
        publishUgcActivity.viewRangeBtn = (ImageView) butterknife.internal.c.a(c10, R.id.view_range_btn, "field 'viewRangeBtn'", ImageView.class);
        this.f22942d = c10;
        c10.setOnClickListener(new a(publishUgcActivity));
        View c11 = butterknife.internal.c.c(view, R.id.forbid_comment_btn, "field 'forbidCommentBtn' and method 'onViewClicked'");
        publishUgcActivity.forbidCommentBtn = (ImageView) butterknife.internal.c.a(c11, R.id.forbid_comment_btn, "field 'forbidCommentBtn'", ImageView.class);
        this.f22943e = c11;
        c11.setOnClickListener(new b(publishUgcActivity));
        publishUgcActivity.tvWithLocation = (TextView) butterknife.internal.c.d(view, R.id.tv_with_location, "field 'tvWithLocation'", TextView.class);
        publishUgcActivity.tvViewRange = (TextView) butterknife.internal.c.d(view, R.id.tv_view_range, "field 'tvViewRange'", TextView.class);
        publishUgcActivity.tvVisibleKey = (TextView) butterknife.internal.c.d(view, R.id.tv_visible_key, "field 'tvVisibleKey'", TextView.class);
        publishUgcActivity.scrollView = (ObservableScrollView) butterknife.internal.c.d(view, R.id.scroll_view, "field 'scrollView'", ObservableScrollView.class);
        View c12 = butterknife.internal.c.c(view, R.id.add_location_lay, "method 'onViewClicked'");
        this.f22944f = c12;
        c12.setOnClickListener(new c(publishUgcActivity));
        View c13 = butterknife.internal.c.c(view, R.id.limit_look_at, "method 'onViewClicked'");
        this.f22945g = c13;
        c13.setOnClickListener(new d(publishUgcActivity));
        View c14 = butterknife.internal.c.c(view, R.id.add_topic_lay, "method 'onViewClicked'");
        this.f22946h = c14;
        c14.setOnClickListener(new e(publishUgcActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PublishUgcActivity publishUgcActivity = this.f22941c;
        if (publishUgcActivity != null) {
            this.f22941c = null;
            publishUgcActivity.publishImageLay = null;
            publishUgcActivity.etUgcPublish = null;
            publishUgcActivity.firstTip = null;
            publishUgcActivity.viewRangeBtn = null;
            publishUgcActivity.forbidCommentBtn = null;
            publishUgcActivity.tvWithLocation = null;
            publishUgcActivity.tvViewRange = null;
            publishUgcActivity.tvVisibleKey = null;
            publishUgcActivity.scrollView = null;
            this.f22942d.setOnClickListener(null);
            this.f22942d = null;
            this.f22943e.setOnClickListener(null);
            this.f22943e = null;
            this.f22944f.setOnClickListener(null);
            this.f22944f = null;
            this.f22945g.setOnClickListener(null);
            this.f22945g = null;
            this.f22946h.setOnClickListener(null);
            this.f22946h = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
