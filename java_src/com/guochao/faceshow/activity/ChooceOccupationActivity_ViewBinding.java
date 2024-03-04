package com.guochao.faceshow.activity;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class ChooceOccupationActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ChooceOccupationActivity f24504c;

    /* renamed from: d  reason: collision with root package name */
    private View f24505d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChooceOccupationActivity f24506a;

        a(ChooceOccupationActivity chooceOccupationActivity) {
            this.f24506a = chooceOccupationActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24506a.getEvent(view);
        }
    }

    @UiThread
    public ChooceOccupationActivity_ViewBinding(ChooceOccupationActivity chooceOccupationActivity, View view) {
        super(chooceOccupationActivity, view);
        this.f24504c = chooceOccupationActivity;
        View c10 = butterknife.internal.c.c(view, R.id.choose_occupation, "method 'getEvent'");
        this.f24505d = c10;
        c10.setOnClickListener(new a(chooceOccupationActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        if (this.f24504c != null) {
            this.f24504c = null;
            this.f24505d.setOnClickListener(null);
            this.f24505d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
