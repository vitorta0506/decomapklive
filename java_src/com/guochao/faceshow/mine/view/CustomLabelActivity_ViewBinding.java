package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class CustomLabelActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private CustomLabelActivity f25575c;

    @UiThread
    public CustomLabelActivity_ViewBinding(CustomLabelActivity customLabelActivity, View view) {
        super(customLabelActivity, view);
        this.f25575c = customLabelActivity;
        customLabelActivity.etTag = (EditText) c.d(view, R.id.etTag, "field 'etTag'", EditText.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        CustomLabelActivity customLabelActivity = this.f25575c;
        if (customLabelActivity != null) {
            this.f25575c = null;
            customLabelActivity.etTag = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
