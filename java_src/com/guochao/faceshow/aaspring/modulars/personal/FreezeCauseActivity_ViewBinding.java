package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class FreezeCauseActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private FreezeCauseActivity f21200c;

    @UiThread
    public FreezeCauseActivity_ViewBinding(FreezeCauseActivity freezeCauseActivity, View view) {
        super(freezeCauseActivity, view);
        this.f21200c = freezeCauseActivity;
        freezeCauseActivity.tvFreezeCause = (TextView) butterknife.internal.c.d(view, R.id.tv_freeze_cause, "field 'tvFreezeCause'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        FreezeCauseActivity freezeCauseActivity = this.f21200c;
        if (freezeCauseActivity != null) {
            this.f21200c = null;
            freezeCauseActivity.tvFreezeCause = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
