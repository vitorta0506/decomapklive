package com.guochao.faceshow.aaspring.modulars.user.view;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes3.dex */
public class UserCenterSexLevel_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private UserCenterSexLevel f23261b;

    /* renamed from: c  reason: collision with root package name */
    private View f23262c;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserCenterSexLevel f23263a;

        a(UserCenterSexLevel userCenterSexLevel) {
            this.f23263a = userCenterSexLevel;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23263a.onViewClicked();
        }
    }

    @UiThread
    public UserCenterSexLevel_ViewBinding(UserCenterSexLevel userCenterSexLevel, View view) {
        this.f23261b = userCenterSexLevel;
        userCenterSexLevel.mvpIV = (ImageView) c.d(view, R.id.mvpIV, "field 'mvpIV'", ImageView.class);
        userCenterSexLevel.userGenderLay = (ViewGroup) c.d(view, R.id.user_gender_age, "field 'userGenderLay'", ViewGroup.class);
        userCenterSexLevel.userGender = (ImageView) c.d(view, R.id.user_gender, "field 'userGender'", ImageView.class);
        userCenterSexLevel.userAge = (TextView) c.d(view, R.id.user_age, "field 'userAge'", TextView.class);
        View findViewById = view.findViewById(R.id.user_level);
        userCenterSexLevel.userLevel = (LevelView) c.a(findViewById, R.id.user_level, "field 'userLevel'", LevelView.class);
        if (findViewById != null) {
            this.f23262c = findViewById;
            findViewById.setOnClickListener(new a(userCenterSexLevel));
        }
        userCenterSexLevel.vipLay = (VipIndicatorView) c.d(view, R.id.vip_indicator_view, "field 'vipLay'", VipIndicatorView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UserCenterSexLevel userCenterSexLevel = this.f23261b;
        if (userCenterSexLevel != null) {
            this.f23261b = null;
            userCenterSexLevel.mvpIV = null;
            userCenterSexLevel.userGenderLay = null;
            userCenterSexLevel.userGender = null;
            userCenterSexLevel.userAge = null;
            userCenterSexLevel.userLevel = null;
            userCenterSexLevel.vipLay = null;
            View view = this.f23262c;
            if (view != null) {
                view.setOnClickListener(null);
                this.f23262c = null;
                return;
            }
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
