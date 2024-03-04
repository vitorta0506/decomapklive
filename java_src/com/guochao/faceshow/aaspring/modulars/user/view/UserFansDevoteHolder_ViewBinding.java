package com.guochao.faceshow.aaspring.modulars.user.view;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes3.dex */
public class UserFansDevoteHolder_ViewBinding implements Unbinder {
    @UiThread
    public UserFansDevoteHolder_ViewBinding(UserFansDevoteHolder userFansDevoteHolder, View view) {
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) c.d(view, R.id.first_item, "field 'firstItem'", NormalCircleImageView.class);
        throw null;
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        throw new IllegalStateException("Bindings already cleared.");
    }
}
