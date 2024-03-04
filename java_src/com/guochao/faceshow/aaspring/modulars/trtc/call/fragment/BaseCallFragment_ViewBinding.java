package com.guochao.faceshow.aaspring.modulars.trtc.call.fragment;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BaseCallFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseCallFragment f22001b;

    @UiThread
    public BaseCallFragment_ViewBinding(BaseCallFragment baseCallFragment, View view) {
        this.f22001b = baseCallFragment;
        baseCallFragment.animView = (FrameLayout) c.b(view, R.id.anim_view, "field 'animView'", FrameLayout.class);
        baseCallFragment.mViewChatArea = c.c(view, R.id.chat_area, "field 'mViewChatArea'");
        baseCallFragment.mViewWidget = c.c(view, R.id.status_wight, "field 'mViewWidget'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseCallFragment baseCallFragment = this.f22001b;
        if (baseCallFragment != null) {
            this.f22001b = null;
            baseCallFragment.animView = null;
            baseCallFragment.mViewChatArea = null;
            baseCallFragment.mViewWidget = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
