package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class RichListDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private RichListDialogFragment f19324b;

    @UiThread
    public RichListDialogFragment_ViewBinding(RichListDialogFragment richListDialogFragment, View view) {
        this.f19324b = richListDialogFragment;
        richListDialogFragment.ivClose = (ImageView) butterknife.internal.c.d(view, R.id.iv_close, "field 'ivClose'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RichListDialogFragment richListDialogFragment = this.f19324b;
        if (richListDialogFragment != null) {
            this.f19324b = null;
            richListDialogFragment.ivClose = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
