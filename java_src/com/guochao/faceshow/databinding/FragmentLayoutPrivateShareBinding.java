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
/* loaded from: classes2.dex */
public final class FragmentLayoutPrivateShareBinding implements ViewBinding {
    @NonNull
    public final TextView cancel;
    @NonNull
    public final LinearLayout deleteVideo;
    @NonNull
    public final LinearLayout loginBottomLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout saveBtn;
    @NonNull
    public final LinearLayout upToPublic;

    private FragmentLayoutPrivateShareBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5) {
        this.rootView = linearLayout;
        this.cancel = textView;
        this.deleteVideo = linearLayout2;
        this.loginBottomLayout = linearLayout3;
        this.saveBtn = linearLayout4;
        this.upToPublic = linearLayout5;
    }

    @NonNull
    public static FragmentLayoutPrivateShareBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i9 = R.id.delete_video;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.delete_video);
            if (linearLayout != null) {
                i9 = R.id.login_bottom_layout;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.login_bottom_layout);
                if (linearLayout2 != null) {
                    i9 = R.id.save_btn;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.save_btn);
                    if (linearLayout3 != null) {
                        i9 = R.id.up_to_public;
                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.up_to_public);
                        if (linearLayout4 != null) {
                            return new FragmentLayoutPrivateShareBinding((LinearLayout) view, textView, linearLayout, linearLayout2, linearLayout3, linearLayout4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLayoutPrivateShareBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLayoutPrivateShareBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_layout_private_share, viewGroup, false);
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
