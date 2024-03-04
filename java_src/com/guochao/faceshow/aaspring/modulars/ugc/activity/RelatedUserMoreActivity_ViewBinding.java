package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class RelatedUserMoreActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private RelatedUserMoreActivity f22370c;

    @UiThread
    public RelatedUserMoreActivity_ViewBinding(RelatedUserMoreActivity relatedUserMoreActivity, View view) {
        super(relatedUserMoreActivity, view);
        this.f22370c = relatedUserMoreActivity;
        relatedUserMoreActivity.locationTipsView = butterknife.internal.c.c(view, R.id.layout_location, "field 'locationTipsView'");
        relatedUserMoreActivity.include = butterknife.internal.c.c(view, R.id.include, "field 'include'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        RelatedUserMoreActivity relatedUserMoreActivity = this.f22370c;
        if (relatedUserMoreActivity != null) {
            this.f22370c = null;
            relatedUserMoreActivity.locationTipsView = null;
            relatedUserMoreActivity.include = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
