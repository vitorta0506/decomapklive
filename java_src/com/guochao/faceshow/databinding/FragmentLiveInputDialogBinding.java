package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentLiveInputDialogBinding implements ViewBinding {
    @NonNull
    public final ImageView btnSend;
    @NonNull
    public final ImageView guideDanmu;
    @NonNull
    public final EditText liveBottomEditText;
    @NonNull
    public final LinearLayout liveBottomInputLy;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final FrameLayout switchLiveDanmu;

    private FragmentLiveInputDialogBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull EditText editText, @NonNull LinearLayout linearLayout2, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.btnSend = imageView;
        this.guideDanmu = imageView2;
        this.liveBottomEditText = editText;
        this.liveBottomInputLy = linearLayout2;
        this.switchLiveDanmu = frameLayout;
    }

    @NonNull
    public static FragmentLiveInputDialogBinding bind(@NonNull View view) {
        int i9 = R.id.btn_send;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_send);
        if (imageView != null) {
            i9 = R.id.guide_danmu;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.guide_danmu);
            if (imageView2 != null) {
                i9 = R.id.live_bottom_edit_text;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.live_bottom_edit_text);
                if (editText != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i9 = R.id.switch_live_danmu;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.switch_live_danmu);
                    if (frameLayout != null) {
                        return new FragmentLiveInputDialogBinding(linearLayout, imageView, imageView2, editText, linearLayout, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLiveInputDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveInputDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_input_dialog, viewGroup, false);
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
