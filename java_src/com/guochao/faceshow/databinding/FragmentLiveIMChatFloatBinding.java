package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentLiveIMChatFloatBinding implements ViewBinding {
    @NonNull
    public final ImageView back;
    @NonNull
    public final ImageView ivMore;
    @NonNull
    public final FrameLayout rootView;
    @NonNull
    private final LinearLayout rootView_;
    @NonNull
    public final TextView titleName;

    private FragmentLiveIMChatFloatBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView_ = linearLayout;
        this.back = imageView;
        this.ivMore = imageView2;
        this.rootView = frameLayout;
        this.titleName = textView;
    }

    @NonNull
    public static FragmentLiveIMChatFloatBinding bind(@NonNull View view) {
        int i9 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i9 = R.id.iv_more;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_more);
            if (imageView2 != null) {
                i9 = R.id.root_view;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.root_view);
                if (frameLayout != null) {
                    i9 = R.id.title_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title_name);
                    if (textView != null) {
                        return new FragmentLiveIMChatFloatBinding((LinearLayout) view, imageView, imageView2, frameLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLiveIMChatFloatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveIMChatFloatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_i_m_chat_float, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView_;
    }
}
