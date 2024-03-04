package com.guochao.faceshow.aaspring.modulars.user.view;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class QCodeDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private QCodeDialog f23243b;

    /* renamed from: c  reason: collision with root package name */
    private View f23244c;

    /* renamed from: d  reason: collision with root package name */
    private View f23245d;

    /* renamed from: e  reason: collision with root package name */
    private View f23246e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QCodeDialog f23247a;

        a(QCodeDialog qCodeDialog) {
            this.f23247a = qCodeDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23247a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QCodeDialog f23249a;

        b(QCodeDialog qCodeDialog) {
            this.f23249a = qCodeDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23249a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QCodeDialog f23251a;

        c(QCodeDialog qCodeDialog) {
            this.f23251a = qCodeDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23251a.onViewClicked(view);
        }
    }

    @UiThread
    public QCodeDialog_ViewBinding(QCodeDialog qCodeDialog, View view) {
        this.f23243b = qCodeDialog;
        qCodeDialog.qCode = (ImageView) butterknife.internal.c.d(view, R.id.q_code, "field 'qCode'", ImageView.class);
        View c10 = butterknife.internal.c.c(view, R.id.q_code_download, "field 'qCodeDownload' and method 'onViewClicked'");
        qCodeDialog.qCodeDownload = (ImageView) butterknife.internal.c.a(c10, R.id.q_code_download, "field 'qCodeDownload'", ImageView.class);
        this.f23244c = c10;
        c10.setOnClickListener(new a(qCodeDialog));
        View c11 = butterknife.internal.c.c(view, R.id.iv_scan, "method 'onViewClicked'");
        this.f23245d = c11;
        c11.setOnClickListener(new b(qCodeDialog));
        View c12 = butterknife.internal.c.c(view, R.id.card_view, "method 'onViewClicked'");
        this.f23246e = c12;
        c12.setOnClickListener(new c(qCodeDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        QCodeDialog qCodeDialog = this.f23243b;
        if (qCodeDialog != null) {
            this.f23243b = null;
            qCodeDialog.qCode = null;
            qCodeDialog.qCodeDownload = null;
            this.f23244c.setOnClickListener(null);
            this.f23244c = null;
            this.f23245d.setOnClickListener(null);
            this.f23245d = null;
            this.f23246e.setOnClickListener(null);
            this.f23246e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
