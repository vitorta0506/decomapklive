package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentLittleLinkmicInfoBinding implements ViewBinding {
    @NonNull
    public final ImageView avatar;
    @NonNull
    public final TextView countDownTips;
    @NonNull
    public final TextView debugInfo;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView userName;
    @NonNull
    public final FrameLayout videoContent;

    private FragmentLittleLinkmicInfoBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.avatar = imageView;
        this.countDownTips = textView;
        this.debugInfo = textView2;
        this.userName = textView3;
        this.videoContent = frameLayout2;
    }

    @NonNull
    public static FragmentLittleLinkmicInfoBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (imageView != null) {
            i9 = R.id.count_down_tips;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_down_tips);
            if (textView != null) {
                i9 = R.id.debug_info;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.debug_info);
                if (textView2 != null) {
                    i9 = R.id.user_name;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                    if (textView3 != null) {
                        FrameLayout frameLayout = (FrameLayout) view;
                        return new FragmentLittleLinkmicInfoBinding(frameLayout, imageView, textView, textView2, textView3, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLittleLinkmicInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLittleLinkmicInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_little_linkmic_info, viewGroup, false);
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
