package com.guochao.faceshow.aaspring.modulars.onevone.filter;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FilterRechargeDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FilterRechargeDialog f20917b;

    /* renamed from: c  reason: collision with root package name */
    private View f20918c;

    /* renamed from: d  reason: collision with root package name */
    private View f20919d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FilterRechargeDialog f20920a;

        a(FilterRechargeDialog filterRechargeDialog) {
            this.f20920a = filterRechargeDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20920a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FilterRechargeDialog f20922a;

        b(FilterRechargeDialog filterRechargeDialog) {
            this.f20922a = filterRechargeDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20922a.onViewClicked(view);
        }
    }

    @UiThread
    public FilterRechargeDialog_ViewBinding(FilterRechargeDialog filterRechargeDialog, View view) {
        this.f20917b = filterRechargeDialog;
        filterRechargeDialog.content = (TextView) c.d(view, R.id.content, "field 'content'", TextView.class);
        View c10 = c.c(view, R.id.go_to_recharge, "method 'onViewClicked'");
        this.f20918c = c10;
        c10.setOnClickListener(new a(filterRechargeDialog));
        View c11 = c.c(view, R.id.close, "method 'onViewClicked'");
        this.f20919d = c11;
        c11.setOnClickListener(new b(filterRechargeDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FilterRechargeDialog filterRechargeDialog = this.f20917b;
        if (filterRechargeDialog != null) {
            this.f20917b = null;
            filterRechargeDialog.content = null;
            this.f20918c.setOnClickListener(null);
            this.f20918c = null;
            this.f20919d.setOnClickListener(null);
            this.f20919d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
