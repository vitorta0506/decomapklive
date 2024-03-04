package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityDateSetBinding implements ViewBinding {
    @NonNull
    public final TextView info;
    @NonNull
    public final LinearLayout llPermissions;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvPermissions;
    @NonNull
    public final TextView tvVideoPrice;
    @NonNull
    public final TextView tvVoicePrice;
    @NonNull
    public final FrameLayout videoSetting;
    @NonNull
    public final FrameLayout voiceSetting;

    private ActivityDateSetBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2) {
        this.rootView = linearLayout;
        this.info = textView;
        this.llPermissions = linearLayout2;
        this.tvPermissions = textView2;
        this.tvVideoPrice = textView3;
        this.tvVoicePrice = textView4;
        this.videoSetting = frameLayout;
        this.voiceSetting = frameLayout2;
    }

    @NonNull
    public static ActivityDateSetBinding bind(@NonNull View view) {
        int i9 = R.id.info;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.info);
        if (textView != null) {
            i9 = R.id.ll_permissions;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_permissions);
            if (linearLayout != null) {
                i9 = R.id.tv_permissions;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_permissions);
                if (textView2 != null) {
                    i9 = R.id.tv_video_price;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_video_price);
                    if (textView3 != null) {
                        i9 = R.id.tv_voice_price;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_voice_price);
                        if (textView4 != null) {
                            i9 = R.id.video_setting;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.video_setting);
                            if (frameLayout != null) {
                                i9 = R.id.voice_setting;
                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.voice_setting);
                                if (frameLayout2 != null) {
                                    return new ActivityDateSetBinding((LinearLayout) view, textView, linearLayout, textView2, textView3, textView4, frameLayout, frameLayout2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityDateSetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityDateSetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_date_set, viewGroup, false);
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
