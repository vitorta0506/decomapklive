package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public final class DeleteAccountInfoActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private DeleteAccountInfoActivity f20258c;

    /* renamed from: d  reason: collision with root package name */
    private View f20259d;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DeleteAccountInfoActivity f20260a;

        a(DeleteAccountInfoActivity deleteAccountInfoActivity) {
            this.f20260a = deleteAccountInfoActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20260a.click(view);
        }
    }

    @UiThread
    public DeleteAccountInfoActivity_ViewBinding(DeleteAccountInfoActivity deleteAccountInfoActivity, View view) {
        super(deleteAccountInfoActivity, view);
        this.f20258c = deleteAccountInfoActivity;
        View c10 = c.c(view, R.id.exit, "method 'click'");
        this.f20259d = c10;
        c10.setOnClickListener(new a(deleteAccountInfoActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        if (this.f20258c != null) {
            this.f20258c = null;
            this.f20259d.setOnClickListener(null);
            this.f20259d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
