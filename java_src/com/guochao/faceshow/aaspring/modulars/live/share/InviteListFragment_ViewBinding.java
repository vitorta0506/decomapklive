package com.guochao.faceshow.aaspring.modulars.live.share;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class InviteListFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private InviteListFragment f19893b;

    @UiThread
    public InviteListFragment_ViewBinding(InviteListFragment inviteListFragment, View view) {
        this.f19893b = inviteListFragment;
        inviteListFragment.emptyView = c.c(view, R.id.empty_view, "field 'emptyView'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        InviteListFragment inviteListFragment = this.f19893b;
        if (inviteListFragment != null) {
            this.f19893b = null;
            inviteListFragment.emptyView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
