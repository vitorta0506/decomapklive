package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class DynamicVideoListActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private DynamicVideoListActivity f22213c;

    /* renamed from: d  reason: collision with root package name */
    private View f22214d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DynamicVideoListActivity f22215a;

        a(DynamicVideoListActivity dynamicVideoListActivity) {
            this.f22215a = dynamicVideoListActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22215a.back(view);
        }
    }

    @UiThread
    public DynamicVideoListActivity_ViewBinding(DynamicVideoListActivity dynamicVideoListActivity, View view) {
        super(dynamicVideoListActivity, view);
        this.f22213c = dynamicVideoListActivity;
        View c10 = butterknife.internal.c.c(view, R.id.back_button, "method 'back'");
        this.f22214d = c10;
        c10.setOnClickListener(new a(dynamicVideoListActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        if (this.f22213c != null) {
            this.f22213c = null;
            this.f22214d.setOnClickListener(null);
            this.f22214d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
