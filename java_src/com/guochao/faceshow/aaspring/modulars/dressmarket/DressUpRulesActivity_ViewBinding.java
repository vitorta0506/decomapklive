package com.guochao.faceshow.aaspring.modulars.dressmarket;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class DressUpRulesActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private DressUpRulesActivity f17633c;

    @UiThread
    public DressUpRulesActivity_ViewBinding(DressUpRulesActivity dressUpRulesActivity, View view) {
        super(dressUpRulesActivity, view);
        this.f17633c = dressUpRulesActivity;
        dressUpRulesActivity.mTextView = (TextView) c.d(view, R.id.content, "field 'mTextView'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        DressUpRulesActivity dressUpRulesActivity = this.f17633c;
        if (dressUpRulesActivity != null) {
            this.f17633c = null;
            dressUpRulesActivity.mTextView = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
