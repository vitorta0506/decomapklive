package com.guochao.faceshow.aaspring.modulars.onevone.face2face;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class UserGenderAgeHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private UserGenderAgeHolder f20910b;

    @UiThread
    public UserGenderAgeHolder_ViewBinding(UserGenderAgeHolder userGenderAgeHolder, View view) {
        this.f20910b = userGenderAgeHolder;
        userGenderAgeHolder.userGender = (ImageView) butterknife.internal.c.d(view, R.id.user_gender, "field 'userGender'", ImageView.class);
        userGenderAgeHolder.userAge = (TextView) butterknife.internal.c.d(view, R.id.user_age, "field 'userAge'", TextView.class);
        userGenderAgeHolder.userGenderLay = (ViewGroup) butterknife.internal.c.b(view, R.id.user_gender_age, "field 'userGenderLay'", ViewGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UserGenderAgeHolder userGenderAgeHolder = this.f20910b;
        if (userGenderAgeHolder != null) {
            this.f20910b = null;
            userGenderAgeHolder.userGender = null;
            userGenderAgeHolder.userAge = null;
            userGenderAgeHolder.userGenderLay = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
