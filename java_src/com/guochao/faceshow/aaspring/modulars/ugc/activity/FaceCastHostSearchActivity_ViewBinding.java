package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class FaceCastHostSearchActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private FaceCastHostSearchActivity f22218c;

    @UiThread
    public FaceCastHostSearchActivity_ViewBinding(FaceCastHostSearchActivity faceCastHostSearchActivity, View view) {
        super(faceCastHostSearchActivity, view);
        this.f22218c = faceCastHostSearchActivity;
        faceCastHostSearchActivity.tvTips = (TextView) butterknife.internal.c.d(view, R.id.tv_tips, "field 'tvTips'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        FaceCastHostSearchActivity faceCastHostSearchActivity = this.f22218c;
        if (faceCastHostSearchActivity != null) {
            this.f22218c = null;
            faceCastHostSearchActivity.tvTips = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
