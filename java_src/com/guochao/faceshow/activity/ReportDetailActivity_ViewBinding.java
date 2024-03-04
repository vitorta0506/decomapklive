package com.guochao.faceshow.activity;

import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class ReportDetailActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ReportDetailActivity f24819c;

    /* renamed from: d  reason: collision with root package name */
    private View f24820d;

    /* renamed from: e  reason: collision with root package name */
    private View f24821e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ReportDetailActivity f24822a;

        a(ReportDetailActivity reportDetailActivity) {
            this.f24822a = reportDetailActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24822a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ReportDetailActivity f24824a;

        b(ReportDetailActivity reportDetailActivity) {
            this.f24824a = reportDetailActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24824a.onViewClicked(view);
        }
    }

    @UiThread
    public ReportDetailActivity_ViewBinding(ReportDetailActivity reportDetailActivity, View view) {
        super(reportDetailActivity, view);
        this.f24819c = reportDetailActivity;
        reportDetailActivity.cbFirst = (CheckBox) butterknife.internal.c.d(view, R.id.cbFirst, "field 'cbFirst'", CheckBox.class);
        reportDetailActivity.cbSecond = (CheckBox) butterknife.internal.c.d(view, R.id.cbSecond, "field 'cbSecond'", CheckBox.class);
        reportDetailActivity.cbThird = (CheckBox) butterknife.internal.c.d(view, R.id.cbThird, "field 'cbThird'", CheckBox.class);
        reportDetailActivity.cbForth = (CheckBox) butterknife.internal.c.d(view, R.id.cbForth, "field 'cbForth'", CheckBox.class);
        reportDetailActivity.cbFifth = (CheckBox) butterknife.internal.c.d(view, R.id.cbFifth, "field 'cbFifth'", CheckBox.class);
        reportDetailActivity.cbEight = (CheckBox) butterknife.internal.c.d(view, R.id.cbEight, "field 'cbEight'", CheckBox.class);
        reportDetailActivity.cbSixth = (CheckBox) butterknife.internal.c.d(view, R.id.cbSixth, "field 'cbSixth'", CheckBox.class);
        reportDetailActivity.cbSeventh = (CheckBox) butterknife.internal.c.d(view, R.id.cbSeventh, "field 'cbSeventh'", CheckBox.class);
        reportDetailActivity.cbNinth = (CheckBox) butterknife.internal.c.d(view, R.id.cbNinth, "field 'cbNinth'", CheckBox.class);
        reportDetailActivity.cbTenth = (CheckBox) butterknife.internal.c.d(view, R.id.cbTenth, "field 'cbTenth'", CheckBox.class);
        reportDetailActivity.cbEleven = (CheckBox) butterknife.internal.c.d(view, R.id.cbEleven, "field 'cbEleven'", CheckBox.class);
        reportDetailActivity.cbChild = (CheckBox) butterknife.internal.c.d(view, R.id.cb_children, "field 'cbChild'", CheckBox.class);
        reportDetailActivity.etReportContent = (EditText) butterknife.internal.c.d(view, R.id.etReportContent, "field 'etReportContent'", EditText.class);
        View c10 = butterknife.internal.c.c(view, R.id.grid_img, "field 'mGridRecyclerView' and method 'onViewClicked'");
        reportDetailActivity.mGridRecyclerView = (RecyclerView) butterknife.internal.c.a(c10, R.id.grid_img, "field 'mGridRecyclerView'", RecyclerView.class);
        this.f24820d = c10;
        c10.setOnClickListener(new a(reportDetailActivity));
        View c11 = butterknife.internal.c.c(view, R.id.root_view, "method 'onViewClicked'");
        this.f24821e = c11;
        c11.setOnClickListener(new b(reportDetailActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ReportDetailActivity reportDetailActivity = this.f24819c;
        if (reportDetailActivity != null) {
            this.f24819c = null;
            reportDetailActivity.cbFirst = null;
            reportDetailActivity.cbSecond = null;
            reportDetailActivity.cbThird = null;
            reportDetailActivity.cbForth = null;
            reportDetailActivity.cbFifth = null;
            reportDetailActivity.cbEight = null;
            reportDetailActivity.cbSixth = null;
            reportDetailActivity.cbSeventh = null;
            reportDetailActivity.cbNinth = null;
            reportDetailActivity.cbTenth = null;
            reportDetailActivity.cbEleven = null;
            reportDetailActivity.cbChild = null;
            reportDetailActivity.etReportContent = null;
            reportDetailActivity.mGridRecyclerView = null;
            this.f24820d.setOnClickListener(null);
            this.f24820d = null;
            this.f24821e.setOnClickListener(null);
            this.f24821e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
