package com.guochao.faceshow.mine.view;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class MyFollowActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private MyFollowActivity f25632c;

    @UiThread
    public MyFollowActivity_ViewBinding(MyFollowActivity myFollowActivity, View view) {
        super(myFollowActivity, view);
        this.f25632c = myFollowActivity;
        myFollowActivity.recyclerContentArea = c.c(view, R.id.recycler_content_area, "field 'recyclerContentArea'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        MyFollowActivity myFollowActivity = this.f25632c;
        if (myFollowActivity != null) {
            this.f25632c = null;
            myFollowActivity.recyclerContentArea = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
