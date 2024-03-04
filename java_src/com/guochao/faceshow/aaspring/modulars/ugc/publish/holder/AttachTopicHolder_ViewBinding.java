package com.guochao.faceshow.aaspring.modulars.ugc.publish.holder;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class AttachTopicHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private AttachTopicHolder f23004b;

    @UiThread
    public AttachTopicHolder_ViewBinding(AttachTopicHolder attachTopicHolder, View view) {
        this.f23004b = attachTopicHolder;
        attachTopicHolder.topicName = (TextView) c.d(view, R.id.topic_name, "field 'topicName'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AttachTopicHolder attachTopicHolder = this.f23004b;
        if (attachTopicHolder != null) {
            this.f23004b = null;
            attachTopicHolder.topicName = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
