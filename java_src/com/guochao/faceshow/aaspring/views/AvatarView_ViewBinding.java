package com.guochao.faceshow.aaspring.views;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes3.dex */
public class AvatarView_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private AvatarView f23521b;

    @UiThread
    public AvatarView_ViewBinding(AvatarView avatarView, View view) {
        this.f23521b = avatarView;
        avatarView.mAvatarImageView = (NormalCircleImageView) butterknife.internal.c.d(view, R.id.avatar, "field 'mAvatarImageView'", NormalCircleImageView.class);
        avatarView.mAvatarPendantImageView = (ImageView) butterknife.internal.c.d(view, R.id.avatar_pedant, "field 'mAvatarPendantImageView'", ImageView.class);
        avatarView.mCountryFlagImageView = (NormalCircleImageView) butterknife.internal.c.d(view, R.id.flag, "field 'mCountryFlagImageView'", NormalCircleImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AvatarView avatarView = this.f23521b;
        if (avatarView != null) {
            this.f23521b = null;
            avatarView.mAvatarImageView = null;
            avatarView.mAvatarPendantImageView = null;
            avatarView.mCountryFlagImageView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
