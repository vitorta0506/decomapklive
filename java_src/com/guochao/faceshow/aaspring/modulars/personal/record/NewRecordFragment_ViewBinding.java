package com.guochao.faceshow.aaspring.modulars.personal.record;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.LinearLayoutCompat;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class NewRecordFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private NewRecordFragment f21612b;

    /* renamed from: c  reason: collision with root package name */
    private View f21613c;

    /* renamed from: d  reason: collision with root package name */
    private View f21614d;

    /* renamed from: e  reason: collision with root package name */
    private View f21615e;

    /* renamed from: f  reason: collision with root package name */
    private View f21616f;

    /* renamed from: g  reason: collision with root package name */
    private View f21617g;

    /* renamed from: h  reason: collision with root package name */
    private View f21618h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewRecordFragment f21619a;

        a(NewRecordFragment newRecordFragment) {
            this.f21619a = newRecordFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21619a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewRecordFragment f21621a;

        b(NewRecordFragment newRecordFragment) {
            this.f21621a = newRecordFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21621a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewRecordFragment f21623a;

        c(NewRecordFragment newRecordFragment) {
            this.f21623a = newRecordFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21623a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewRecordFragment f21625a;

        d(NewRecordFragment newRecordFragment) {
            this.f21625a = newRecordFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21625a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewRecordFragment f21627a;

        e(NewRecordFragment newRecordFragment) {
            this.f21627a = newRecordFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21627a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewRecordFragment f21629a;

        f(NewRecordFragment newRecordFragment) {
            this.f21629a = newRecordFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21629a.onClick(view);
        }
    }

    @UiThread
    public NewRecordFragment_ViewBinding(NewRecordFragment newRecordFragment, View view) {
        this.f21612b = newRecordFragment;
        newRecordFragment.tvDiamondIncome = (TextView) butterknife.internal.c.d(view, R.id.tv_diamond_income, "field 'tvDiamondIncome'", TextView.class);
        newRecordFragment.tvDiamondSpending = (TextView) butterknife.internal.c.d(view, R.id.tv_diamond_spending, "field 'tvDiamondSpending'", TextView.class);
        newRecordFragment.tvFIncome = (TextView) butterknife.internal.c.d(view, R.id.tv_f_income, "field 'tvFIncome'", TextView.class);
        newRecordFragment.tvFSpending = (TextView) butterknife.internal.c.d(view, R.id.tv_f_spending, "field 'tvFSpending'", TextView.class);
        newRecordFragment.tvGIncome = (TextView) butterknife.internal.c.d(view, R.id.tv_g_income, "field 'tvGIncome'", TextView.class);
        newRecordFragment.tvGSpending = (TextView) butterknife.internal.c.d(view, R.id.tv_g_spending, "field 'tvGSpending'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.tv_diamond_date, "field 'tvDiamondDate' and method 'onClick'");
        newRecordFragment.tvDiamondDate = (TextView) butterknife.internal.c.a(c10, R.id.tv_diamond_date, "field 'tvDiamondDate'", TextView.class);
        this.f21613c = c10;
        c10.setOnClickListener(new a(newRecordFragment));
        View c11 = butterknife.internal.c.c(view, R.id.tv_f_date, "field 'tvFDate' and method 'onClick'");
        newRecordFragment.tvFDate = (TextView) butterknife.internal.c.a(c11, R.id.tv_f_date, "field 'tvFDate'", TextView.class);
        this.f21614d = c11;
        c11.setOnClickListener(new b(newRecordFragment));
        View c12 = butterknife.internal.c.c(view, R.id.tv_g_date, "field 'tvGDate' and method 'onClick'");
        newRecordFragment.tvGDate = (TextView) butterknife.internal.c.a(c12, R.id.tv_g_date, "field 'tvGDate'", TextView.class);
        this.f21615e = c12;
        c12.setOnClickListener(new c(newRecordFragment));
        View c13 = butterknife.internal.c.c(view, R.id.ll_diamond, "field 'llDiamod' and method 'onClick'");
        newRecordFragment.llDiamod = (LinearLayoutCompat) butterknife.internal.c.a(c13, R.id.ll_diamond, "field 'llDiamod'", LinearLayoutCompat.class);
        this.f21616f = c13;
        c13.setOnClickListener(new d(newRecordFragment));
        View c14 = butterknife.internal.c.c(view, R.id.ll_f, "field 'llF' and method 'onClick'");
        newRecordFragment.llF = (LinearLayoutCompat) butterknife.internal.c.a(c14, R.id.ll_f, "field 'llF'", LinearLayoutCompat.class);
        this.f21617g = c14;
        c14.setOnClickListener(new e(newRecordFragment));
        View c15 = butterknife.internal.c.c(view, R.id.ll_g, "method 'onClick'");
        this.f21618h = c15;
        c15.setOnClickListener(new f(newRecordFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NewRecordFragment newRecordFragment = this.f21612b;
        if (newRecordFragment != null) {
            this.f21612b = null;
            newRecordFragment.tvDiamondIncome = null;
            newRecordFragment.tvDiamondSpending = null;
            newRecordFragment.tvFIncome = null;
            newRecordFragment.tvFSpending = null;
            newRecordFragment.tvGIncome = null;
            newRecordFragment.tvGSpending = null;
            newRecordFragment.tvDiamondDate = null;
            newRecordFragment.tvFDate = null;
            newRecordFragment.tvGDate = null;
            newRecordFragment.llDiamod = null;
            newRecordFragment.llF = null;
            this.f21613c.setOnClickListener(null);
            this.f21613c = null;
            this.f21614d.setOnClickListener(null);
            this.f21614d = null;
            this.f21615e.setOnClickListener(null);
            this.f21615e = null;
            this.f21616f.setOnClickListener(null);
            this.f21616f = null;
            this.f21617g.setOnClickListener(null);
            this.f21617g = null;
            this.f21618h.setOnClickListener(null);
            this.f21618h = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
