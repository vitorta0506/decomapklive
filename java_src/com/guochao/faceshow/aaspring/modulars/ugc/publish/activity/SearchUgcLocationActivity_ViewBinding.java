package com.guochao.faceshow.aaspring.modulars.ugc.publish.activity;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class SearchUgcLocationActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private SearchUgcLocationActivity f22985c;

    @UiThread
    public SearchUgcLocationActivity_ViewBinding(SearchUgcLocationActivity searchUgcLocationActivity, View view) {
        super(searchUgcLocationActivity, view);
        this.f22985c = searchUgcLocationActivity;
        searchUgcLocationActivity.mEditTextSearch = (EditText) c.d(view, R.id.et_search, "field 'mEditTextSearch'", EditText.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        SearchUgcLocationActivity searchUgcLocationActivity = this.f22985c;
        if (searchUgcLocationActivity != null) {
            this.f22985c = null;
            searchUgcLocationActivity.mEditTextSearch = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
