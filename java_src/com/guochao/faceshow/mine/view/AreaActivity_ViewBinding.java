package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.EditText;
import android.widget.ListView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class AreaActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private AreaActivity f25480c;

    @UiThread
    public AreaActivity_ViewBinding(AreaActivity areaActivity, View view) {
        super(areaActivity, view);
        this.f25480c = areaActivity;
        areaActivity.lvCountry = (ListView) c.d(view, R.id.lvCountry, "field 'lvCountry'", ListView.class);
        areaActivity.et_search = (EditText) c.d(view, R.id.et_search, "field 'et_search'", EditText.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        AreaActivity areaActivity = this.f25480c;
        if (areaActivity != null) {
            this.f25480c = null;
            areaActivity.lvCountry = null;
            areaActivity.et_search = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
