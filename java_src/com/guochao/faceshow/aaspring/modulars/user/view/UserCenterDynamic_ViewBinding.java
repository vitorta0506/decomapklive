package com.guochao.faceshow.aaspring.modulars.user.view;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RoundImageView;
/* loaded from: classes3.dex */
public class UserCenterDynamic_ViewBinding implements Unbinder {
    @UiThread
    public UserCenterDynamic_ViewBinding(UserCenterDynamic userCenterDynamic, View view) {
        RoundImageView roundImageView = (RoundImageView) c.d(view, R.id.first_image, "field 'firstImage'", RoundImageView.class);
        throw null;
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        throw new IllegalStateException("Bindings already cleared.");
    }
}
