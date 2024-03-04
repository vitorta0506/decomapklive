package com.guochao.faceshow.aaspring.modulars.user.view;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class UserPhotoWhoSaw_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private UserPhotoWhoSaw f23269b;

    /* renamed from: c  reason: collision with root package name */
    private View f23270c;

    /* renamed from: d  reason: collision with root package name */
    private View f23271d;

    /* renamed from: e  reason: collision with root package name */
    private View f23272e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserPhotoWhoSaw f23273a;

        a(UserPhotoWhoSaw userPhotoWhoSaw) {
            this.f23273a = userPhotoWhoSaw;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23273a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserPhotoWhoSaw f23275a;

        b(UserPhotoWhoSaw userPhotoWhoSaw) {
            this.f23275a = userPhotoWhoSaw;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23275a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserPhotoWhoSaw f23277a;

        c(UserPhotoWhoSaw userPhotoWhoSaw) {
            this.f23277a = userPhotoWhoSaw;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23277a.onViewClicked(view);
        }
    }

    @UiThread
    public UserPhotoWhoSaw_ViewBinding(UserPhotoWhoSaw userPhotoWhoSaw, View view) {
        this.f23269b = userPhotoWhoSaw;
        View c10 = butterknife.internal.c.c(view, R.id.first_photo, "field 'firstPhoto' and method 'onViewClicked'");
        userPhotoWhoSaw.firstPhoto = (ImageView) butterknife.internal.c.a(c10, R.id.first_photo, "field 'firstPhoto'", ImageView.class);
        this.f23270c = c10;
        c10.setOnClickListener(new a(userPhotoWhoSaw));
        View c11 = butterknife.internal.c.c(view, R.id.second_photo, "field 'secondPhoto' and method 'onViewClicked'");
        userPhotoWhoSaw.secondPhoto = (ImageView) butterknife.internal.c.a(c11, R.id.second_photo, "field 'secondPhoto'", ImageView.class);
        this.f23271d = c11;
        c11.setOnClickListener(new b(userPhotoWhoSaw));
        View c12 = butterknife.internal.c.c(view, R.id.third_photo, "field 'thirdPhoto' and method 'onViewClicked'");
        userPhotoWhoSaw.thirdPhoto = (ImageView) butterknife.internal.c.a(c12, R.id.third_photo, "field 'thirdPhoto'", ImageView.class);
        this.f23272e = c12;
        c12.setOnClickListener(new c(userPhotoWhoSaw));
        userPhotoWhoSaw.view2 = butterknife.internal.c.c(view, R.id.view2, "field 'view2'");
        userPhotoWhoSaw.view3 = butterknife.internal.c.c(view, R.id.view3, "field 'view3'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UserPhotoWhoSaw userPhotoWhoSaw = this.f23269b;
        if (userPhotoWhoSaw != null) {
            this.f23269b = null;
            userPhotoWhoSaw.firstPhoto = null;
            userPhotoWhoSaw.secondPhoto = null;
            userPhotoWhoSaw.thirdPhoto = null;
            userPhotoWhoSaw.view2 = null;
            userPhotoWhoSaw.view3 = null;
            this.f23270c.setOnClickListener(null);
            this.f23270c = null;
            this.f23271d.setOnClickListener(null);
            this.f23271d = null;
            this.f23272e.setOnClickListener(null);
            this.f23272e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
