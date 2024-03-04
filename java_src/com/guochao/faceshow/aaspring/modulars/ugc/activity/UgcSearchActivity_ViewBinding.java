package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class UgcSearchActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private UgcSearchActivity f22448c;

    /* renamed from: d  reason: collision with root package name */
    private View f22449d;

    /* renamed from: e  reason: collision with root package name */
    private View f22450e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UgcSearchActivity f22451a;

        a(UgcSearchActivity ugcSearchActivity) {
            this.f22451a = ugcSearchActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22451a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UgcSearchActivity f22453a;

        b(UgcSearchActivity ugcSearchActivity) {
            this.f22453a = ugcSearchActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22453a.onViewClicked(view);
        }
    }

    @UiThread
    public UgcSearchActivity_ViewBinding(UgcSearchActivity ugcSearchActivity, View view) {
        super(ugcSearchActivity, view);
        this.f22448c = ugcSearchActivity;
        View c10 = butterknife.internal.c.c(view, R.id.iv_back, "field 'ivBack' and method 'onViewClicked'");
        ugcSearchActivity.ivBack = (ImageView) butterknife.internal.c.a(c10, R.id.iv_back, "field 'ivBack'", ImageView.class);
        this.f22449d = c10;
        c10.setOnClickListener(new a(ugcSearchActivity));
        ugcSearchActivity.etSearch = (EditText) butterknife.internal.c.d(view, R.id.et_search, "field 'etSearch'", EditText.class);
        ugcSearchActivity.scan = (ImageView) butterknife.internal.c.d(view, R.id.scan, "field 'scan'", ImageView.class);
        ugcSearchActivity.tabs = (TabLayout) butterknife.internal.c.d(view, R.id.tabs, "field 'tabs'", TabLayout.class);
        ugcSearchActivity.viewPager = (RtlViewPager) butterknife.internal.c.d(view, R.id.view_pager, "field 'viewPager'", RtlViewPager.class);
        View c11 = butterknife.internal.c.c(view, R.id.delete_edit, "field 'deleteDdit' and method 'onViewClicked'");
        ugcSearchActivity.deleteDdit = (ImageView) butterknife.internal.c.a(c11, R.id.delete_edit, "field 'deleteDdit'", ImageView.class);
        this.f22450e = c11;
        c11.setOnClickListener(new b(ugcSearchActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        UgcSearchActivity ugcSearchActivity = this.f22448c;
        if (ugcSearchActivity != null) {
            this.f22448c = null;
            ugcSearchActivity.ivBack = null;
            ugcSearchActivity.etSearch = null;
            ugcSearchActivity.scan = null;
            ugcSearchActivity.tabs = null;
            ugcSearchActivity.viewPager = null;
            ugcSearchActivity.deleteDdit = null;
            this.f22449d.setOnClickListener(null);
            this.f22449d = null;
            this.f22450e.setOnClickListener(null);
            this.f22450e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
