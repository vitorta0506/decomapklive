package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityCancelAccountBinding implements ViewBinding {
    @NonNull
    public final ViewStub emailCodeLay;
    @NonNull
    public final TextView nextStep;
    @NonNull
    public final TextView otherType;
    @NonNull
    public final ViewStub passwordLayout;
    @NonNull
    public final ViewStub phoneCodeLay;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ViewStub thirdLayout;

    private ActivityCancelAccountBinding(@NonNull LinearLayout linearLayout, @NonNull ViewStub viewStub, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ViewStub viewStub2, @NonNull ViewStub viewStub3, @NonNull ViewStub viewStub4) {
        this.rootView = linearLayout;
        this.emailCodeLay = viewStub;
        this.nextStep = textView;
        this.otherType = textView2;
        this.passwordLayout = viewStub2;
        this.phoneCodeLay = viewStub3;
        this.thirdLayout = viewStub4;
    }

    @NonNull
    public static ActivityCancelAccountBinding bind(@NonNull View view) {
        int i9 = R.id.email_code_lay;
        ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.email_code_lay);
        if (viewStub != null) {
            i9 = R.id.next_step;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.next_step);
            if (textView != null) {
                i9 = R.id.other_type;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.other_type);
                if (textView2 != null) {
                    i9 = R.id.password_layout;
                    ViewStub viewStub2 = (ViewStub) ViewBindings.findChildViewById(view, R.id.password_layout);
                    if (viewStub2 != null) {
                        i9 = R.id.phone_code_lay;
                        ViewStub viewStub3 = (ViewStub) ViewBindings.findChildViewById(view, R.id.phone_code_lay);
                        if (viewStub3 != null) {
                            i9 = R.id.third_layout;
                            ViewStub viewStub4 = (ViewStub) ViewBindings.findChildViewById(view, R.id.third_layout);
                            if (viewStub4 != null) {
                                return new ActivityCancelAccountBinding((LinearLayout) view, viewStub, textView, textView2, viewStub2, viewStub3, viewStub4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_cancel_account, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
