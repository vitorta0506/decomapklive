package com.guochao.faceshow.aaspring.modulars.personal.dressup;

import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class MyDressUpActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private MyDressUpActivity f21476c;

    @UiThread
    public MyDressUpActivity_ViewBinding(MyDressUpActivity myDressUpActivity, View view) {
        super(myDressUpActivity, view);
        this.f21476c = myDressUpActivity;
        myDressUpActivity.tabs = (TabLayout) c.d(view, R.id.tabs, "field 'tabs'", TabLayout.class);
        myDressUpActivity.vpContent = (RtlViewPager) c.d(view, R.id.vp_content, "field 'vpContent'", RtlViewPager.class);
        myDressUpActivity.lay_content = (RelativeLayout) c.d(view, R.id.lay_content, "field 'lay_content'", RelativeLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        MyDressUpActivity myDressUpActivity = this.f21476c;
        if (myDressUpActivity != null) {
            this.f21476c = null;
            myDressUpActivity.tabs = null;
            myDressUpActivity.vpContent = null;
            myDressUpActivity.lay_content = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
