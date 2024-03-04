package com.guochao.faceshow.aaspring.modulars.user.vip;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class WhoSawMeActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private WhoSawMeActivity f23296c;

    @UiThread
    public WhoSawMeActivity_ViewBinding(WhoSawMeActivity whoSawMeActivity, View view) {
        super(whoSawMeActivity, view);
        this.f23296c = whoSawMeActivity;
        whoSawMeActivity.recyclerContentArea = c.c(view, R.id.recycler_content_area, "field 'recyclerContentArea'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WhoSawMeActivity whoSawMeActivity = this.f23296c;
        if (whoSawMeActivity != null) {
            this.f23296c = null;
            whoSawMeActivity.recyclerContentArea = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
