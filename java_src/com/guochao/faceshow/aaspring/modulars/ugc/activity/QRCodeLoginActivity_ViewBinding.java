package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class QRCodeLoginActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private QRCodeLoginActivity f22357c;

    /* renamed from: d  reason: collision with root package name */
    private View f22358d;

    /* renamed from: e  reason: collision with root package name */
    private View f22359e;

    /* renamed from: f  reason: collision with root package name */
    private View f22360f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QRCodeLoginActivity f22361a;

        a(QRCodeLoginActivity qRCodeLoginActivity) {
            this.f22361a = qRCodeLoginActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22361a.login(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QRCodeLoginActivity f22363a;

        b(QRCodeLoginActivity qRCodeLoginActivity) {
            this.f22363a = qRCodeLoginActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22363a.login(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QRCodeLoginActivity f22365a;

        c(QRCodeLoginActivity qRCodeLoginActivity) {
            this.f22365a = qRCodeLoginActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22365a.login(view);
        }
    }

    @UiThread
    public QRCodeLoginActivity_ViewBinding(QRCodeLoginActivity qRCodeLoginActivity, View view) {
        super(qRCodeLoginActivity, view);
        this.f22357c = qRCodeLoginActivity;
        qRCodeLoginActivity.mTextView = (TextView) butterknife.internal.c.d(view, R.id.tips, "field 'mTextView'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.login, "field 'mTextViewLogin' and method 'login'");
        qRCodeLoginActivity.mTextViewLogin = (TextView) butterknife.internal.c.a(c10, R.id.login, "field 'mTextViewLogin'", TextView.class);
        this.f22358d = c10;
        c10.setOnClickListener(new a(qRCodeLoginActivity));
        View c11 = butterknife.internal.c.c(view, R.id.cancel, "field 'mTextViewCancel' and method 'login'");
        qRCodeLoginActivity.mTextViewCancel = (TextView) butterknife.internal.c.a(c11, R.id.cancel, "field 'mTextViewCancel'", TextView.class);
        this.f22359e = c11;
        c11.setOnClickListener(new b(qRCodeLoginActivity));
        View c12 = butterknife.internal.c.c(view, R.id.close, "method 'login'");
        this.f22360f = c12;
        c12.setOnClickListener(new c(qRCodeLoginActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        QRCodeLoginActivity qRCodeLoginActivity = this.f22357c;
        if (qRCodeLoginActivity != null) {
            this.f22357c = null;
            qRCodeLoginActivity.mTextView = null;
            qRCodeLoginActivity.mTextViewLogin = null;
            qRCodeLoginActivity.mTextViewCancel = null;
            this.f22358d.setOnClickListener(null);
            this.f22358d = null;
            this.f22359e.setOnClickListener(null);
            this.f22359e = null;
            this.f22360f.setOnClickListener(null);
            this.f22360f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
