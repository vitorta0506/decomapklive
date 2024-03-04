package com.guochao.faceshow.aaspring.modulars.ugc.publish;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class PublishImageSelector_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PublishImageSelector f22922b;

    @UiThread
    public PublishImageSelector_ViewBinding(PublishImageSelector publishImageSelector, View view) {
        this.f22922b = publishImageSelector;
        publishImageSelector.rvContent = (RecyclerView) c.d(view, R.id.rv_content, "field 'rvContent'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PublishImageSelector publishImageSelector = this.f22922b;
        if (publishImageSelector != null) {
            this.f22922b = null;
            publishImageSelector.rvContent = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
