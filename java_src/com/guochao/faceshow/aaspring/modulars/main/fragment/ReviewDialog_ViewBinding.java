package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ReviewDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ReviewDialog f20757b;

    /* renamed from: c  reason: collision with root package name */
    private View f20758c;

    /* renamed from: d  reason: collision with root package name */
    private View f20759d;

    /* renamed from: e  reason: collision with root package name */
    private View f20760e;

    /* renamed from: f  reason: collision with root package name */
    private View f20761f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ReviewDialog f20762a;

        a(ReviewDialog reviewDialog) {
            this.f20762a = reviewDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20762a.click(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ReviewDialog f20764a;

        b(ReviewDialog reviewDialog) {
            this.f20764a = reviewDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20764a.click(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ReviewDialog f20766a;

        c(ReviewDialog reviewDialog) {
            this.f20766a = reviewDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20766a.click(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ReviewDialog f20768a;

        d(ReviewDialog reviewDialog) {
            this.f20768a = reviewDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20768a.click(view);
        }
    }

    @UiThread
    public ReviewDialog_ViewBinding(ReviewDialog reviewDialog, View view) {
        this.f20757b = reviewDialog;
        View c10 = butterknife.internal.c.c(view, R.id.feedback, "method 'click'");
        this.f20758c = c10;
        c10.setOnClickListener(new a(reviewDialog));
        View c11 = butterknife.internal.c.c(view, R.id.go, "method 'click'");
        this.f20759d = c11;
        c11.setOnClickListener(new b(reviewDialog));
        View c12 = butterknife.internal.c.c(view, R.id.content, "method 'click'");
        this.f20760e = c12;
        c12.setOnClickListener(new c(reviewDialog));
        View c13 = butterknife.internal.c.c(view, R.id.container, "method 'click'");
        this.f20761f = c13;
        c13.setOnClickListener(new d(reviewDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f20757b != null) {
            this.f20757b = null;
            this.f20758c.setOnClickListener(null);
            this.f20758c = null;
            this.f20759d.setOnClickListener(null);
            this.f20759d = null;
            this.f20760e.setOnClickListener(null);
            this.f20760e = null;
            this.f20761f.setOnClickListener(null);
            this.f20761f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
