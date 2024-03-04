package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public final class GreetingListActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private GreetingListActivity f16838c;

    @UiThread
    public GreetingListActivity_ViewBinding(GreetingListActivity greetingListActivity, View view) {
        super(greetingListActivity, view);
        this.f16838c = greetingListActivity;
        greetingListActivity.recylcerView = (RecyclerView) c.d(view, R.id.recycler_view, "field 'recylcerView'", RecyclerView.class);
        greetingListActivity.emptyView = c.c(view, R.id.my_empty_page, "field 'emptyView'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        GreetingListActivity greetingListActivity = this.f16838c;
        if (greetingListActivity != null) {
            this.f16838c = null;
            greetingListActivity.recylcerView = null;
            greetingListActivity.emptyView = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
