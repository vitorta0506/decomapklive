package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class SelectUploadVideoDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SelectUploadVideoDialogFragment f20502b;

    /* renamed from: c  reason: collision with root package name */
    private View f20503c;

    /* renamed from: d  reason: collision with root package name */
    private View f20504d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SelectUploadVideoDialogFragment f20505a;

        a(SelectUploadVideoDialogFragment selectUploadVideoDialogFragment) {
            this.f20505a = selectUploadVideoDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20505a.click(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SelectUploadVideoDialogFragment f20507a;

        b(SelectUploadVideoDialogFragment selectUploadVideoDialogFragment) {
            this.f20507a = selectUploadVideoDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20507a.click(view);
        }
    }

    @UiThread
    public SelectUploadVideoDialogFragment_ViewBinding(SelectUploadVideoDialogFragment selectUploadVideoDialogFragment, View view) {
        this.f20502b = selectUploadVideoDialogFragment;
        View c10 = butterknife.internal.c.c(view, R.id.sure, "method 'click'");
        this.f20503c = c10;
        c10.setOnClickListener(new a(selectUploadVideoDialogFragment));
        View c11 = butterknife.internal.c.c(view, R.id.cancel, "method 'click'");
        this.f20504d = c11;
        c11.setOnClickListener(new b(selectUploadVideoDialogFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f20502b != null) {
            this.f20502b = null;
            this.f20503c.setOnClickListener(null);
            this.f20503c = null;
            this.f20504d.setOnClickListener(null);
            this.f20504d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
