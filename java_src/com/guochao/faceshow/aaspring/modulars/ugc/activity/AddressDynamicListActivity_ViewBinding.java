package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class AddressDynamicListActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private AddressDynamicListActivity f22107c;

    @UiThread
    public AddressDynamicListActivity_ViewBinding(AddressDynamicListActivity addressDynamicListActivity, View view) {
        super(addressDynamicListActivity, view);
        this.f22107c = addressDynamicListActivity;
        addressDynamicListActivity.addressTV = (TextView) butterknife.internal.c.d(view, R.id.addressTV, "field 'addressTV'", TextView.class);
        addressDynamicListActivity.countTV = (TextView) butterknife.internal.c.d(view, R.id.countTV, "field 'countTV'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        AddressDynamicListActivity addressDynamicListActivity = this.f22107c;
        if (addressDynamicListActivity != null) {
            this.f22107c = null;
            addressDynamicListActivity.addressTV = null;
            addressDynamicListActivity.countTV = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
