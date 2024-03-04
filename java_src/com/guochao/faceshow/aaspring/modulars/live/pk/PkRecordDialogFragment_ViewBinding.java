package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class PkRecordDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PkRecordDialogFragment f19711b;

    @UiThread
    public PkRecordDialogFragment_ViewBinding(PkRecordDialogFragment pkRecordDialogFragment, View view) {
        this.f19711b = pkRecordDialogFragment;
        pkRecordDialogFragment.llContent = (LinearLayout) c.d(view, R.id.ll_content, "field 'llContent'", LinearLayout.class);
        pkRecordDialogFragment.pkSession = (TextView) c.d(view, R.id.pk_session, "field 'pkSession'", TextView.class);
        pkRecordDialogFragment.pkWin = (TextView) c.d(view, R.id.pk_win, "field 'pkWin'", TextView.class);
        pkRecordDialogFragment.pkWinRate = (TextView) c.d(view, R.id.pk_win_rate, "field 'pkWinRate'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PkRecordDialogFragment pkRecordDialogFragment = this.f19711b;
        if (pkRecordDialogFragment != null) {
            this.f19711b = null;
            pkRecordDialogFragment.llContent = null;
            pkRecordDialogFragment.pkSession = null;
            pkRecordDialogFragment.pkWin = null;
            pkRecordDialogFragment.pkWinRate = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
