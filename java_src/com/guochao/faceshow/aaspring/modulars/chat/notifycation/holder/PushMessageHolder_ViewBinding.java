package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes3.dex */
public class PushMessageHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PushMessageHolder f17187b;

    @UiThread
    public PushMessageHolder_ViewBinding(PushMessageHolder pushMessageHolder, View view) {
        this.f17187b = pushMessageHolder;
        pushMessageHolder.cv = (NormalCircleImageView) c.d(view, R.id.img_topics, "field 'cv'", NormalCircleImageView.class);
        pushMessageHolder.tvName = (TextView) c.d(view, R.id.tv_name, "field 'tvName'", TextView.class);
        pushMessageHolder.tvTime = (TextView) c.d(view, R.id.tv_time, "field 'tvTime'", TextView.class);
        pushMessageHolder.introduce = (TextView) c.d(view, R.id.introduce, "field 'introduce'", TextView.class);
        pushMessageHolder.expand = (TextView) c.d(view, R.id.expand, "field 'expand'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PushMessageHolder pushMessageHolder = this.f17187b;
        if (pushMessageHolder != null) {
            this.f17187b = null;
            pushMessageHolder.cv = null;
            pushMessageHolder.tvName = null;
            pushMessageHolder.tvTime = null;
            pushMessageHolder.introduce = null;
            pushMessageHolder.expand = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
