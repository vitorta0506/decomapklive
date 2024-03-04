package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class AreaSelectActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private AreaSelectActivity f20174c;

    @UiThread
    public AreaSelectActivity_ViewBinding(AreaSelectActivity areaSelectActivity, View view) {
        super(areaSelectActivity, view);
        this.f20174c = areaSelectActivity;
        areaSelectActivity.et_search = (EditText) c.d(view, R.id.et_search, "field 'et_search'", EditText.class);
        areaSelectActivity.iv_empty = (ImageView) c.d(view, R.id.iv_empty, "field 'iv_empty'", ImageView.class);
        areaSelectActivity.in_date = (FrameLayout) c.d(view, R.id.in_date, "field 'in_date'", FrameLayout.class);
        areaSelectActivity.searchLay = c.c(view, R.id.search_lay, "field 'searchLay'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        AreaSelectActivity areaSelectActivity = this.f20174c;
        if (areaSelectActivity != null) {
            this.f20174c = null;
            areaSelectActivity.et_search = null;
            areaSelectActivity.iv_empty = null;
            areaSelectActivity.in_date = null;
            areaSelectActivity.searchLay = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
