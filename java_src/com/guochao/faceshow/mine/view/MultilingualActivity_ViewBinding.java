package com.guochao.faceshow.mine.view;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class MultilingualActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private MultilingualActivity f25624c;

    @UiThread
    public MultilingualActivity_ViewBinding(MultilingualActivity multilingualActivity, View view) {
        super(multilingualActivity, view);
        this.f25624c = multilingualActivity;
        multilingualActivity.lvLanguage = (RecyclerView) c.d(view, R.id.lvLanguage, "field 'lvLanguage'", RecyclerView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        MultilingualActivity multilingualActivity = this.f25624c;
        if (multilingualActivity != null) {
            this.f25624c = null;
            multilingualActivity.lvLanguage = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
