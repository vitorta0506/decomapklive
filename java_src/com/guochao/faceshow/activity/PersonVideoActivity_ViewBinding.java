package com.guochao.faceshow.activity;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class PersonVideoActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PersonVideoActivity f24743c;

    /* renamed from: d  reason: collision with root package name */
    private View f24744d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PersonVideoActivity f24745a;

        a(PersonVideoActivity personVideoActivity) {
            this.f24745a = personVideoActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24745a.back(view);
        }
    }

    @UiThread
    public PersonVideoActivity_ViewBinding(PersonVideoActivity personVideoActivity, View view) {
        super(personVideoActivity, view);
        this.f24743c = personVideoActivity;
        View c10 = butterknife.internal.c.c(view, R.id.back_button, "method 'back'");
        this.f24744d = c10;
        c10.setOnClickListener(new a(personVideoActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        if (this.f24743c != null) {
            this.f24743c = null;
            this.f24744d.setOnClickListener(null);
            this.f24744d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
