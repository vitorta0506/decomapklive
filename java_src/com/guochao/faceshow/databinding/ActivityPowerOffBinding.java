package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityPowerOffBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView textStep1;
    @NonNull
    public final TextView textStep2;
    @NonNull
    public final TextView textStep3;
    @NonNull
    public final TextView textStep4;
    @NonNull
    public final TextView textStep5;
    @NonNull
    public final TextView textTitle;

    private ActivityPowerOffBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = frameLayout;
        this.textStep1 = textView;
        this.textStep2 = textView2;
        this.textStep3 = textView3;
        this.textStep4 = textView4;
        this.textStep5 = textView5;
        this.textTitle = textView6;
    }

    @NonNull
    public static ActivityPowerOffBinding bind(@NonNull View view) {
        int i9 = R.id.text_step1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text_step1);
        if (textView != null) {
            i9 = R.id.text_step2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.text_step2);
            if (textView2 != null) {
                i9 = R.id.text_step3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.text_step3);
                if (textView3 != null) {
                    i9 = R.id.text_step4;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.text_step4);
                    if (textView4 != null) {
                        i9 = R.id.text_step5;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.text_step5);
                        if (textView5 != null) {
                            i9 = R.id.text_title;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.text_title);
                            if (textView6 != null) {
                                return new ActivityPowerOffBinding((FrameLayout) view, textView, textView2, textView3, textView4, textView5, textView6);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPowerOffBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPowerOffBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_power_off, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
