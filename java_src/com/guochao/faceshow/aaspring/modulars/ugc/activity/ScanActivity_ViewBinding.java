package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class ScanActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ScanActivity f22384c;

    /* renamed from: d  reason: collision with root package name */
    private View f22385d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ScanActivity f22386a;

        a(ScanActivity scanActivity) {
            this.f22386a = scanActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22386a.showMore();
        }
    }

    @UiThread
    public ScanActivity_ViewBinding(ScanActivity scanActivity, View view) {
        super(scanActivity, view);
        this.f22384c = scanActivity;
        scanActivity.title = (TextView) butterknife.internal.c.d(view, 16908310, "field 'title'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.ll_qr_code, "field 'llQrCode' and method 'showMore'");
        scanActivity.llQrCode = (LinearLayout) butterknife.internal.c.a(c10, R.id.ll_qr_code, "field 'llQrCode'", LinearLayout.class);
        this.f22385d = c10;
        c10.setOnClickListener(new a(scanActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ScanActivity scanActivity = this.f22384c;
        if (scanActivity != null) {
            this.f22384c = null;
            scanActivity.title = null;
            scanActivity.llQrCode = null;
            this.f22385d.setOnClickListener(null);
            this.f22385d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
