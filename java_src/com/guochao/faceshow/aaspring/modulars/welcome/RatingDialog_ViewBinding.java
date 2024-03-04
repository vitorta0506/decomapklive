package com.guochao.faceshow.aaspring.modulars.welcome;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatingBar;
/* loaded from: classes3.dex */
public class RatingDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private RatingDialog f23399b;

    /* renamed from: c  reason: collision with root package name */
    private View f23400c;

    /* renamed from: d  reason: collision with root package name */
    private View f23401d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RatingDialog f23402a;

        a(RatingDialog ratingDialog) {
            this.f23402a = ratingDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23402a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RatingDialog f23404a;

        b(RatingDialog ratingDialog) {
            this.f23404a = ratingDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23404a.onViewClicked(view);
        }
    }

    @UiThread
    public RatingDialog_ViewBinding(RatingDialog ratingDialog, View view) {
        this.f23399b = ratingDialog;
        ratingDialog.content = (TextView) c.d(view, R.id.content, "field 'content'", TextView.class);
        View c10 = c.c(view, R.id.tv_confirm, "field 'tvConfirm' and method 'onViewClicked'");
        ratingDialog.tvConfirm = (TextView) c.a(c10, R.id.tv_confirm, "field 'tvConfirm'", TextView.class);
        this.f23400c = c10;
        c10.setOnClickListener(new a(ratingDialog));
        View c11 = c.c(view, R.id.tv_cancel, "field 'tvCancel' and method 'onViewClicked'");
        ratingDialog.tvCancel = (TextView) c.a(c11, R.id.tv_cancel, "field 'tvCancel'", TextView.class);
        this.f23401d = c11;
        c11.setOnClickListener(new b(ratingDialog));
        ratingDialog.ratingBar = (RatingBar) c.d(view, R.id.rating_bar, "field 'ratingBar'", RatingBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RatingDialog ratingDialog = this.f23399b;
        if (ratingDialog != null) {
            this.f23399b = null;
            ratingDialog.content = null;
            ratingDialog.tvConfirm = null;
            ratingDialog.tvCancel = null;
            ratingDialog.ratingBar = null;
            this.f23400c.setOnClickListener(null);
            this.f23400c = null;
            this.f23401d.setOnClickListener(null);
            this.f23401d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
