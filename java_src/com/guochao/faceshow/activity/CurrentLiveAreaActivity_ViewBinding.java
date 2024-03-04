package com.guochao.faceshow.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ListView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class CurrentLiveAreaActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private CurrentLiveAreaActivity f24522c;

    @UiThread
    public CurrentLiveAreaActivity_ViewBinding(CurrentLiveAreaActivity currentLiveAreaActivity, View view) {
        super(currentLiveAreaActivity, view);
        this.f24522c = currentLiveAreaActivity;
        currentLiveAreaActivity.lvCountry = (ListView) butterknife.internal.c.d(view, R.id.lvCountry, "field 'lvCountry'", ListView.class);
        currentLiveAreaActivity.et_search = (EditText) butterknife.internal.c.d(view, R.id.et_search, "field 'et_search'", EditText.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        CurrentLiveAreaActivity currentLiveAreaActivity = this.f24522c;
        if (currentLiveAreaActivity != null) {
            this.f24522c = null;
            currentLiveAreaActivity.lvCountry = null;
            currentLiveAreaActivity.et_search = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
