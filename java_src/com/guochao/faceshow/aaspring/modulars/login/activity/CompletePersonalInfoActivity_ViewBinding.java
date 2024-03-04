package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class CompletePersonalInfoActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private CompletePersonalInfoActivity f20242c;

    /* renamed from: d  reason: collision with root package name */
    private View f20243d;

    /* renamed from: e  reason: collision with root package name */
    private View f20244e;

    /* renamed from: f  reason: collision with root package name */
    private View f20245f;

    /* renamed from: g  reason: collision with root package name */
    private View f20246g;

    /* renamed from: h  reason: collision with root package name */
    private View f20247h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CompletePersonalInfoActivity f20248a;

        a(CompletePersonalInfoActivity completePersonalInfoActivity) {
            this.f20248a = completePersonalInfoActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20248a.selectHeaderImg(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CompletePersonalInfoActivity f20250a;

        b(CompletePersonalInfoActivity completePersonalInfoActivity) {
            this.f20250a = completePersonalInfoActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20250a.selectGender(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CompletePersonalInfoActivity f20252a;

        c(CompletePersonalInfoActivity completePersonalInfoActivity) {
            this.f20252a = completePersonalInfoActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20252a.selectGender(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CompletePersonalInfoActivity f20254a;

        d(CompletePersonalInfoActivity completePersonalInfoActivity) {
            this.f20254a = completePersonalInfoActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20254a.selectGender(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CompletePersonalInfoActivity f20256a;

        e(CompletePersonalInfoActivity completePersonalInfoActivity) {
            this.f20256a = completePersonalInfoActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20256a.confirm(view);
        }
    }

    @UiThread
    public CompletePersonalInfoActivity_ViewBinding(CompletePersonalInfoActivity completePersonalInfoActivity, View view) {
        super(completePersonalInfoActivity, view);
        this.f20242c = completePersonalInfoActivity;
        View c10 = butterknife.internal.c.c(view, R.id.avatar, "field 'mImageView' and method 'selectHeaderImg'");
        completePersonalInfoActivity.mImageView = (ImageView) butterknife.internal.c.a(c10, R.id.avatar, "field 'mImageView'", ImageView.class);
        this.f20243d = c10;
        c10.setOnClickListener(new a(completePersonalInfoActivity));
        completePersonalInfoActivity.mEditText = (EditText) butterknife.internal.c.d(view, R.id.edit_text, "field 'mEditText'", EditText.class);
        completePersonalInfoActivity.etInviteCode = (EditText) butterknife.internal.c.d(view, R.id.invite_code, "field 'etInviteCode'", EditText.class);
        View c11 = butterknife.internal.c.c(view, R.id.girl_fram, "field 'mGirl' and method 'selectGender'");
        completePersonalInfoActivity.mGirl = (TextView) butterknife.internal.c.a(c11, R.id.girl_fram, "field 'mGirl'", TextView.class);
        this.f20244e = c11;
        c11.setOnClickListener(new b(completePersonalInfoActivity));
        View c12 = butterknife.internal.c.c(view, R.id.boy_fram, "field 'mBoy' and method 'selectGender'");
        completePersonalInfoActivity.mBoy = (TextView) butterknife.internal.c.a(c12, R.id.boy_fram, "field 'mBoy'", TextView.class);
        this.f20245f = c12;
        c12.setOnClickListener(new c(completePersonalInfoActivity));
        View c13 = butterknife.internal.c.c(view, R.id.select_birthday, "field 'select_birthday' and method 'selectGender'");
        completePersonalInfoActivity.select_birthday = (TextView) butterknife.internal.c.a(c13, R.id.select_birthday, "field 'select_birthday'", TextView.class);
        this.f20246g = c13;
        c13.setOnClickListener(new d(completePersonalInfoActivity));
        View c14 = butterknife.internal.c.c(view, R.id.next, "field 'next' and method 'confirm'");
        completePersonalInfoActivity.next = (TextView) butterknife.internal.c.a(c14, R.id.next, "field 'next'", TextView.class);
        this.f20247h = c14;
        c14.setOnClickListener(new e(completePersonalInfoActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        CompletePersonalInfoActivity completePersonalInfoActivity = this.f20242c;
        if (completePersonalInfoActivity != null) {
            this.f20242c = null;
            completePersonalInfoActivity.mImageView = null;
            completePersonalInfoActivity.mEditText = null;
            completePersonalInfoActivity.etInviteCode = null;
            completePersonalInfoActivity.mGirl = null;
            completePersonalInfoActivity.mBoy = null;
            completePersonalInfoActivity.select_birthday = null;
            completePersonalInfoActivity.next = null;
            this.f20243d.setOnClickListener(null);
            this.f20243d = null;
            this.f20244e.setOnClickListener(null);
            this.f20244e = null;
            this.f20245f.setOnClickListener(null);
            this.f20245f = null;
            this.f20246g.setOnClickListener(null);
            this.f20246g = null;
            this.f20247h.setOnClickListener(null);
            this.f20247h = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
