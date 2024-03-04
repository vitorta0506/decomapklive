package com.guochao.faceshow.aaspring.views;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.loopView.LoopView;
/* loaded from: classes3.dex */
public class SelectRecordTypeFragmentDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SelectRecordTypeFragmentDialog f24012b;

    /* renamed from: c  reason: collision with root package name */
    private View f24013c;

    /* renamed from: d  reason: collision with root package name */
    private View f24014d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SelectRecordTypeFragmentDialog f24015a;

        a(SelectRecordTypeFragmentDialog selectRecordTypeFragmentDialog) {
            this.f24015a = selectRecordTypeFragmentDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24015a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SelectRecordTypeFragmentDialog f24017a;

        b(SelectRecordTypeFragmentDialog selectRecordTypeFragmentDialog) {
            this.f24017a = selectRecordTypeFragmentDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24017a.onClick(view);
        }
    }

    @UiThread
    public SelectRecordTypeFragmentDialog_ViewBinding(SelectRecordTypeFragmentDialog selectRecordTypeFragmentDialog, View view) {
        this.f24012b = selectRecordTypeFragmentDialog;
        View c10 = butterknife.internal.c.c(view, R.id.common_dialog_submit, "field 'mConfirm' and method 'onClick'");
        selectRecordTypeFragmentDialog.mConfirm = (TextView) butterknife.internal.c.a(c10, R.id.common_dialog_submit, "field 'mConfirm'", TextView.class);
        this.f24013c = c10;
        c10.setOnClickListener(new a(selectRecordTypeFragmentDialog));
        View c11 = butterknife.internal.c.c(view, R.id.common_dialog_cancel, "field 'mCancel' and method 'onClick'");
        selectRecordTypeFragmentDialog.mCancel = (TextView) butterknife.internal.c.a(c11, R.id.common_dialog_cancel, "field 'mCancel'", TextView.class);
        this.f24014d = c11;
        c11.setOnClickListener(new b(selectRecordTypeFragmentDialog));
        selectRecordTypeFragmentDialog.loopView = (LoopView) butterknife.internal.c.d(view, R.id.wv_record_type, "field 'loopView'", LoopView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SelectRecordTypeFragmentDialog selectRecordTypeFragmentDialog = this.f24012b;
        if (selectRecordTypeFragmentDialog != null) {
            this.f24012b = null;
            selectRecordTypeFragmentDialog.mConfirm = null;
            selectRecordTypeFragmentDialog.mCancel = null;
            selectRecordTypeFragmentDialog.loopView = null;
            this.f24013c.setOnClickListener(null);
            this.f24013c = null;
            this.f24014d.setOnClickListener(null);
            this.f24014d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
