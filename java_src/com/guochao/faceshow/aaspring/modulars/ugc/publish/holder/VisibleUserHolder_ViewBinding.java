package com.guochao.faceshow.aaspring.modulars.ugc.publish.holder;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class VisibleUserHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private VisibleUserHolder f23025b;

    /* renamed from: c  reason: collision with root package name */
    private View f23026c;

    /* renamed from: d  reason: collision with root package name */
    private View f23027d;

    /* renamed from: e  reason: collision with root package name */
    private View f23028e;

    /* renamed from: f  reason: collision with root package name */
    private View f23029f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VisibleUserHolder f23030a;

        a(VisibleUserHolder visibleUserHolder) {
            this.f23030a = visibleUserHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23030a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VisibleUserHolder f23032a;

        b(VisibleUserHolder visibleUserHolder) {
            this.f23032a = visibleUserHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23032a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VisibleUserHolder f23034a;

        c(VisibleUserHolder visibleUserHolder) {
            this.f23034a = visibleUserHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23034a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VisibleUserHolder f23036a;

        d(VisibleUserHolder visibleUserHolder) {
            this.f23036a = visibleUserHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23036a.onViewClicked(view);
        }
    }

    @UiThread
    public VisibleUserHolder_ViewBinding(VisibleUserHolder visibleUserHolder, View view) {
        this.f23025b = visibleUserHolder;
        visibleUserHolder.primaryTitle = (TextView) butterknife.internal.c.d(view, R.id.primary_title, "field 'primaryTitle'", TextView.class);
        visibleUserHolder.primaryContent = (TextView) butterknife.internal.c.d(view, R.id.primary_content, "field 'primaryContent'", TextView.class);
        visibleUserHolder.primaryArrow = (ImageView) butterknife.internal.c.d(view, R.id.primary_arrow, "field 'primaryArrow'", ImageView.class);
        View c10 = butterknife.internal.c.c(view, R.id.primary_arrow_right, "field 'primaryRightArrow' and method 'onViewClicked'");
        visibleUserHolder.primaryRightArrow = (ImageView) butterknife.internal.c.a(c10, R.id.primary_arrow_right, "field 'primaryRightArrow'", ImageView.class);
        this.f23026c = c10;
        c10.setOnClickListener(new a(visibleUserHolder));
        visibleUserHolder.secondaryFirstTitle = (TextView) butterknife.internal.c.d(view, R.id.secondary_first_title, "field 'secondaryFirstTitle'", TextView.class);
        visibleUserHolder.secondaryFirstChecker = (ImageView) butterknife.internal.c.d(view, R.id.secondary_first_checker, "field 'secondaryFirstChecker'", ImageView.class);
        visibleUserHolder.secondarySecondTitle = (TextView) butterknife.internal.c.d(view, R.id.secondary_second_title, "field 'secondarySecondTitle'", TextView.class);
        visibleUserHolder.secondaryContentWarning = (TextView) butterknife.internal.c.d(view, R.id.secondary_content_warning, "field 'secondaryContentWarning'", TextView.class);
        visibleUserHolder.secondaryLay = (LinearLayout) butterknife.internal.c.d(view, R.id.secondary_lay, "field 'secondaryLay'", LinearLayout.class);
        View c11 = butterknife.internal.c.c(view, R.id.secondary_first_lay, "field 'secondaryFirstLay' and method 'onViewClicked'");
        visibleUserHolder.secondaryFirstLay = (ViewGroup) butterknife.internal.c.a(c11, R.id.secondary_first_lay, "field 'secondaryFirstLay'", ViewGroup.class);
        this.f23027d = c11;
        c11.setOnClickListener(new b(visibleUserHolder));
        visibleUserHolder.secondarySecondChecker = (ImageView) butterknife.internal.c.d(view, R.id.secondary_second_checker, "field 'secondarySecondChecker'", ImageView.class);
        View c12 = butterknife.internal.c.c(view, R.id.secondary_second_lay, "method 'onViewClicked'");
        this.f23028e = c12;
        c12.setOnClickListener(new c(visibleUserHolder));
        View c13 = butterknife.internal.c.c(view, R.id.content_lay, "method 'onViewClicked'");
        this.f23029f = c13;
        c13.setOnClickListener(new d(visibleUserHolder));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        VisibleUserHolder visibleUserHolder = this.f23025b;
        if (visibleUserHolder != null) {
            this.f23025b = null;
            visibleUserHolder.primaryTitle = null;
            visibleUserHolder.primaryContent = null;
            visibleUserHolder.primaryArrow = null;
            visibleUserHolder.primaryRightArrow = null;
            visibleUserHolder.secondaryFirstTitle = null;
            visibleUserHolder.secondaryFirstChecker = null;
            visibleUserHolder.secondarySecondTitle = null;
            visibleUserHolder.secondaryContentWarning = null;
            visibleUserHolder.secondaryLay = null;
            visibleUserHolder.secondaryFirstLay = null;
            visibleUserHolder.secondarySecondChecker = null;
            this.f23026c.setOnClickListener(null);
            this.f23026c = null;
            this.f23027d.setOnClickListener(null);
            this.f23027d = null;
            this.f23028e.setOnClickListener(null);
            this.f23028e = null;
            this.f23029f.setOnClickListener(null);
            this.f23029f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
