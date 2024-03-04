package com.guochao.faceshow.aaspring.modulars.push.base;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public final class InAppNotificationFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private InAppNotificationFragment f21645b;

    @UiThread
    public InAppNotificationFragment_ViewBinding(InAppNotificationFragment inAppNotificationFragment, View view) {
        this.f21645b = inAppNotificationFragment;
        inAppNotificationFragment.title = (TextView) c.d(view, R.id.title, "field 'title'", TextView.class);
        inAppNotificationFragment.content = (TextView) c.d(view, R.id.content, "field 'content'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        InAppNotificationFragment inAppNotificationFragment = this.f21645b;
        if (inAppNotificationFragment != null) {
            this.f21645b = null;
            inAppNotificationFragment.title = null;
            inAppNotificationFragment.content = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
