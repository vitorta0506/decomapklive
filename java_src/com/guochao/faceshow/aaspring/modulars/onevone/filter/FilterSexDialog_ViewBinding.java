package com.guochao.faceshow.aaspring.modulars.onevone.filter;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FilterSexDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FilterSexDialog f20930b;

    /* renamed from: c  reason: collision with root package name */
    private View f20931c;

    /* renamed from: d  reason: collision with root package name */
    private View f20932d;

    /* renamed from: e  reason: collision with root package name */
    private View f20933e;

    /* renamed from: f  reason: collision with root package name */
    private View f20934f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FilterSexDialog f20935a;

        a(FilterSexDialog filterSexDialog) {
            this.f20935a = filterSexDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20935a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FilterSexDialog f20937a;

        b(FilterSexDialog filterSexDialog) {
            this.f20937a = filterSexDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20937a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FilterSexDialog f20939a;

        c(FilterSexDialog filterSexDialog) {
            this.f20939a = filterSexDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20939a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FilterSexDialog f20941a;

        d(FilterSexDialog filterSexDialog) {
            this.f20941a = filterSexDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20941a.onViewClicked(view);
        }
    }

    @UiThread
    public FilterSexDialog_ViewBinding(FilterSexDialog filterSexDialog, View view) {
        this.f20930b = filterSexDialog;
        filterSexDialog.noneChecker = (ImageView) butterknife.internal.c.d(view, R.id.none_checker, "field 'noneChecker'", ImageView.class);
        filterSexDialog.manChecker = (ImageView) butterknife.internal.c.d(view, R.id.man_checker, "field 'manChecker'", ImageView.class);
        filterSexDialog.womenChecker = (ImageView) butterknife.internal.c.d(view, R.id.women_checker, "field 'womenChecker'", ImageView.class);
        filterSexDialog.bgNoneFilter = (ImageView) butterknife.internal.c.d(view, R.id.bg_none_filter, "field 'bgNoneFilter'", ImageView.class);
        filterSexDialog.bgManFilter = (ImageView) butterknife.internal.c.d(view, R.id.bg_man_filter, "field 'bgManFilter'", ImageView.class);
        filterSexDialog.bgWomanFilter = (ImageView) butterknife.internal.c.d(view, R.id.bg_woman_filter, "field 'bgWomanFilter'", ImageView.class);
        View c10 = butterknife.internal.c.c(view, R.id.none_checker_lay, "method 'onViewClicked'");
        this.f20931c = c10;
        c10.setOnClickListener(new a(filterSexDialog));
        View c11 = butterknife.internal.c.c(view, R.id.man_checker_lay, "method 'onViewClicked'");
        this.f20932d = c11;
        c11.setOnClickListener(new b(filterSexDialog));
        View c12 = butterknife.internal.c.c(view, R.id.women_checker_lay, "method 'onViewClicked'");
        this.f20933e = c12;
        c12.setOnClickListener(new c(filterSexDialog));
        View c13 = butterknife.internal.c.c(view, R.id.bg_empty, "method 'onViewClicked'");
        this.f20934f = c13;
        c13.setOnClickListener(new d(filterSexDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FilterSexDialog filterSexDialog = this.f20930b;
        if (filterSexDialog != null) {
            this.f20930b = null;
            filterSexDialog.noneChecker = null;
            filterSexDialog.manChecker = null;
            filterSexDialog.womenChecker = null;
            filterSexDialog.bgNoneFilter = null;
            filterSexDialog.bgManFilter = null;
            filterSexDialog.bgWomanFilter = null;
            this.f20931c.setOnClickListener(null);
            this.f20931c = null;
            this.f20932d.setOnClickListener(null);
            this.f20932d = null;
            this.f20933e.setOnClickListener(null);
            this.f20933e = null;
            this.f20934f.setOnClickListener(null);
            this.f20934f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
