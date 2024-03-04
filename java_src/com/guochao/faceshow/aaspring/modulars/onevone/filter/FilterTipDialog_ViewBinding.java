package com.guochao.faceshow.aaspring.modulars.onevone.filter;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FilterTipDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FilterTipDialog f20944b;

    /* renamed from: c  reason: collision with root package name */
    private View f20945c;

    /* renamed from: d  reason: collision with root package name */
    private View f20946d;

    /* renamed from: e  reason: collision with root package name */
    private View f20947e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FilterTipDialog f20948a;

        a(FilterTipDialog filterTipDialog) {
            this.f20948a = filterTipDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20948a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FilterTipDialog f20950a;

        b(FilterTipDialog filterTipDialog) {
            this.f20950a = filterTipDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20950a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FilterTipDialog f20952a;

        c(FilterTipDialog filterTipDialog) {
            this.f20952a = filterTipDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20952a.onViewClicked(view);
        }
    }

    @UiThread
    public FilterTipDialog_ViewBinding(FilterTipDialog filterTipDialog, View view) {
        this.f20944b = filterTipDialog;
        filterTipDialog.content = (TextView) butterknife.internal.c.d(view, R.id.content, "field 'content'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.close, "method 'onViewClicked'");
        this.f20945c = c10;
        c10.setOnClickListener(new a(filterTipDialog));
        View c11 = butterknife.internal.c.c(view, R.id.no_longer_notify, "method 'onViewClicked'");
        this.f20946d = c11;
        c11.setOnClickListener(new b(filterTipDialog));
        View c12 = butterknife.internal.c.c(view, R.id.confirm, "method 'onViewClicked'");
        this.f20947e = c12;
        c12.setOnClickListener(new c(filterTipDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FilterTipDialog filterTipDialog = this.f20944b;
        if (filterTipDialog != null) {
            this.f20944b = null;
            filterTipDialog.content = null;
            this.f20945c.setOnClickListener(null);
            this.f20945c = null;
            this.f20946d.setOnClickListener(null);
            this.f20946d = null;
            this.f20947e.setOnClickListener(null);
            this.f20947e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
