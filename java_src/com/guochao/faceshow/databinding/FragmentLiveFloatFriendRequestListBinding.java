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
public final class FragmentLiveFloatFriendRequestListBinding implements ViewBinding {
    @NonNull
    public final ImageView back;
    @NonNull
    public final FrameLayout realContent;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView title;

    private FragmentLiveFloatFriendRequestListBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.back = imageView;
        this.realContent = frameLayout;
        this.title = textView;
    }

    @NonNull
    public static FragmentLiveFloatFriendRequestListBinding bind(@NonNull View view) {
        int i9 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i9 = R.id.real_content;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.real_content);
            if (frameLayout != null) {
                i9 = R.id.title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView != null) {
                    return new FragmentLiveFloatFriendRequestListBinding((LinearLayout) view, imageView, frameLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLiveFloatFriendRequestListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveFloatFriendRequestListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_float_friend_request_list, viewGroup, false);
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
