package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityChooseLoginTypeBinding implements ViewBinding {
    @NonNull
    public final FrameLayout googleLogin;
    @NonNull
    public final LinearLayout layLogin;
    @NonNull
    public final FrameLayout phoneLogin;
    @NonNull
    public final TextView privacyTip;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final FrameLayout thirdPartyLogin;

    private ActivityChooseLoginTypeBinding(@NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull FrameLayout frameLayout3) {
        this.rootView = constraintLayout;
        this.googleLogin = frameLayout;
        this.layLogin = linearLayout;
        this.phoneLogin = frameLayout2;
        this.privacyTip = textView;
        this.thirdPartyLogin = frameLayout3;
    }

    @NonNull
    public static ActivityChooseLoginTypeBinding bind(@NonNull View view) {
        int i9 = R.id.google_login;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.google_login);
        if (frameLayout != null) {
            i9 = R.id.lay_login;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_login);
            if (linearLayout != null) {
                i9 = R.id.phone_login;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.phone_login);
                if (frameLayout2 != null) {
                    i9 = R.id.privacy_tip;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.privacy_tip);
                    if (textView != null) {
                        i9 = R.id.third_party_login;
                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.third_party_login);
                        if (frameLayout3 != null) {
                            return new ActivityChooseLoginTypeBinding((ConstraintLayout) view, frameLayout, linearLayout, frameLayout2, textView, frameLayout3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityChooseLoginTypeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityChooseLoginTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_choose_login_type, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
