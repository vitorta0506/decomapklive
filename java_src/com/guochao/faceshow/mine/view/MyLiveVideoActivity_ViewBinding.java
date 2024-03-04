package com.guochao.faceshow.mine.view;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class MyLiveVideoActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private MyLiveVideoActivity f25634c;

    @UiThread
    public MyLiveVideoActivity_ViewBinding(MyLiveVideoActivity myLiveVideoActivity, View view) {
        super(myLiveVideoActivity, view);
        this.f25634c = myLiveVideoActivity;
        myLiveVideoActivity.recyclerContentArea = c.c(view, R.id.recycler_content_area, "field 'recyclerContentArea'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        MyLiveVideoActivity myLiveVideoActivity = this.f25634c;
        if (myLiveVideoActivity != null) {
            this.f25634c = null;
            myLiveVideoActivity.recyclerContentArea = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
