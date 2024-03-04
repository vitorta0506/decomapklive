package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.DatePickerView;
/* loaded from: classes3.dex */
public class ForcedUpdateActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ForcedUpdateActivity f20303c;

    /* renamed from: d  reason: collision with root package name */
    private View f20304d;

    /* renamed from: e  reason: collision with root package name */
    private View f20305e;

    /* renamed from: f  reason: collision with root package name */
    private View f20306f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForcedUpdateActivity f20307a;

        a(ForcedUpdateActivity forcedUpdateActivity) {
            this.f20307a = forcedUpdateActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20307a.initGender(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForcedUpdateActivity f20309a;

        b(ForcedUpdateActivity forcedUpdateActivity) {
            this.f20309a = forcedUpdateActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20309a.initGender(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForcedUpdateActivity f20311a;

        c(ForcedUpdateActivity forcedUpdateActivity) {
            this.f20311a = forcedUpdateActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20311a.confirmJumpMainAcitivity(view);
        }
    }

    @UiThread
    public ForcedUpdateActivity_ViewBinding(ForcedUpdateActivity forcedUpdateActivity, View view) {
        super(forcedUpdateActivity, view);
        this.f20303c = forcedUpdateActivity;
        View c10 = butterknife.internal.c.c(view, R.id.girl_fram, "field 'mGirl' and method 'initGender'");
        forcedUpdateActivity.mGirl = (ViewGroup) butterknife.internal.c.a(c10, R.id.girl_fram, "field 'mGirl'", ViewGroup.class);
        this.f20304d = c10;
        c10.setOnClickListener(new a(forcedUpdateActivity));
        View c11 = butterknife.internal.c.c(view, R.id.boy_fram, "field 'mBoy' and method 'initGender'");
        forcedUpdateActivity.mBoy = (ViewGroup) butterknife.internal.c.a(c11, R.id.boy_fram, "field 'mBoy'", ViewGroup.class);
        this.f20305e = c11;
        c11.setOnClickListener(new b(forcedUpdateActivity));
        forcedUpdateActivity.mDatePickerView = (DatePickerView) butterknife.internal.c.d(view, R.id.date_picker, "field 'mDatePickerView'", DatePickerView.class);
        View c12 = butterknife.internal.c.c(view, R.id.next, "method 'confirmJumpMainAcitivity'");
        this.f20306f = c12;
        c12.setOnClickListener(new c(forcedUpdateActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ForcedUpdateActivity forcedUpdateActivity = this.f20303c;
        if (forcedUpdateActivity != null) {
            this.f20303c = null;
            forcedUpdateActivity.mGirl = null;
            forcedUpdateActivity.mBoy = null;
            forcedUpdateActivity.mDatePickerView = null;
            this.f20304d.setOnClickListener(null);
            this.f20304d = null;
            this.f20305e.setOnClickListener(null);
            this.f20305e = null;
            this.f20306f.setOnClickListener(null);
            this.f20306f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
