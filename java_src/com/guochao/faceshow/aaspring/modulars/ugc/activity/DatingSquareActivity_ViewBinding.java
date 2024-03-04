package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.SwipeBackViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class DatingSquareActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private DatingSquareActivity f22168c;

    /* renamed from: d  reason: collision with root package name */
    private View f22169d;

    /* renamed from: e  reason: collision with root package name */
    private View f22170e;

    /* renamed from: f  reason: collision with root package name */
    private View f22171f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DatingSquareActivity f22172a;

        a(DatingSquareActivity datingSquareActivity) {
            this.f22172a = datingSquareActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22172a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DatingSquareActivity f22174a;

        b(DatingSquareActivity datingSquareActivity) {
            this.f22174a = datingSquareActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22174a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DatingSquareActivity f22176a;

        c(DatingSquareActivity datingSquareActivity) {
            this.f22176a = datingSquareActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22176a.onViewClicked(view);
        }
    }

    @UiThread
    public DatingSquareActivity_ViewBinding(DatingSquareActivity datingSquareActivity, View view) {
        super(datingSquareActivity, view);
        this.f22168c = datingSquareActivity;
        datingSquareActivity.merge = (FrameLayout) butterknife.internal.c.d(view, R.id.content, "field 'merge'", FrameLayout.class);
        datingSquareActivity.toolbar = (Toolbar) butterknife.internal.c.d(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        datingSquareActivity.tabs = (TabLayout) butterknife.internal.c.d(view, R.id.tabs, "field 'tabs'", TabLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.gender_selector, "field 'genderSelector' and method 'onViewClicked'");
        datingSquareActivity.genderSelector = (ImageView) butterknife.internal.c.a(c10, R.id.gender_selector, "field 'genderSelector'", ImageView.class);
        this.f22169d = c10;
        c10.setOnClickListener(new a(datingSquareActivity));
        datingSquareActivity.viewPager = (SwipeBackViewPager) butterknife.internal.c.d(view, R.id.view_pager, "field 'viewPager'", SwipeBackViewPager.class);
        View c11 = butterknife.internal.c.c(view, R.id.sv_image, "field 'svImage' and method 'onViewClicked'");
        datingSquareActivity.svImage = (SVGAImageView) butterknife.internal.c.a(c11, R.id.sv_image, "field 'svImage'", SVGAImageView.class);
        this.f22170e = c11;
        c11.setOnClickListener(new b(datingSquareActivity));
        View c12 = butterknife.internal.c.c(view, R.id.iv_image, "field 'ivImage' and method 'onViewClicked'");
        datingSquareActivity.ivImage = (ImageView) butterknife.internal.c.a(c12, R.id.iv_image, "field 'ivImage'", ImageView.class);
        this.f22171f = c12;
        c12.setOnClickListener(new c(datingSquareActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        DatingSquareActivity datingSquareActivity = this.f22168c;
        if (datingSquareActivity != null) {
            this.f22168c = null;
            datingSquareActivity.merge = null;
            datingSquareActivity.toolbar = null;
            datingSquareActivity.tabs = null;
            datingSquareActivity.genderSelector = null;
            datingSquareActivity.viewPager = null;
            datingSquareActivity.svImage = null;
            datingSquareActivity.ivImage = null;
            this.f22169d.setOnClickListener(null);
            this.f22169d = null;
            this.f22170e.setOnClickListener(null);
            this.f22170e = null;
            this.f22171f.setOnClickListener(null);
            this.f22171f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
