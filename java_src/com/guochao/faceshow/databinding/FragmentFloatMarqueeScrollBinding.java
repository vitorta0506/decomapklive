package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.DispatchTouchHorizontalScrollView;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class FragmentFloatMarqueeScrollBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final DispatchTouchHorizontalScrollView scrollView;
    @NonNull
    public final TextView tipType;
    @NonNull
    public final NormalCircleImageView userAvatar;

    private FragmentFloatMarqueeScrollBinding(@NonNull LinearLayout linearLayout, @NonNull DispatchTouchHorizontalScrollView dispatchTouchHorizontalScrollView, @NonNull TextView textView, @NonNull NormalCircleImageView normalCircleImageView) {
        this.rootView = linearLayout;
        this.scrollView = dispatchTouchHorizontalScrollView;
        this.tipType = textView;
        this.userAvatar = normalCircleImageView;
    }

    @NonNull
    public static FragmentFloatMarqueeScrollBinding bind(@NonNull View view) {
        int i9 = R.id.scroll_view;
        DispatchTouchHorizontalScrollView dispatchTouchHorizontalScrollView = (DispatchTouchHorizontalScrollView) ViewBindings.findChildViewById(view, R.id.scroll_view);
        if (dispatchTouchHorizontalScrollView != null) {
            i9 = R.id.tip_type;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tip_type);
            if (textView != null) {
                i9 = R.id.user_avatar;
                NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                if (normalCircleImageView != null) {
                    return new FragmentFloatMarqueeScrollBinding((LinearLayout) view, dispatchTouchHorizontalScrollView, textView, normalCircleImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentFloatMarqueeScrollBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFloatMarqueeScrollBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_float_marquee_scroll, viewGroup, false);
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
