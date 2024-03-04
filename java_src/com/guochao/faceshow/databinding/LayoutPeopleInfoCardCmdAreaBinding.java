package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutPeopleInfoCardCmdAreaBinding implements ViewBinding {
    @NonNull
    public final ImageView admin;
    @NonNull
    public final FrameLayout adminArea;
    @NonNull
    public final LinearLayout cmdArea;
    @NonNull
    public final ImageView kick;
    @NonNull
    public final FrameLayout kickArea;
    @NonNull
    public final ImageView mic;
    @NonNull
    public final FrameLayout micArea;
    @NonNull
    public final ImageView mute;
    @NonNull
    public final FrameLayout muteArea;
    @NonNull
    private final LinearLayout rootView;

    private LayoutPeopleInfoCardCmdAreaBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView4, @NonNull FrameLayout frameLayout4) {
        this.rootView = linearLayout;
        this.admin = imageView;
        this.adminArea = frameLayout;
        this.cmdArea = linearLayout2;
        this.kick = imageView2;
        this.kickArea = frameLayout2;
        this.mic = imageView3;
        this.micArea = frameLayout3;
        this.mute = imageView4;
        this.muteArea = frameLayout4;
    }

    @NonNull
    public static LayoutPeopleInfoCardCmdAreaBinding bind(@NonNull View view) {
        int i9 = R.id.admin;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.admin);
        if (imageView != null) {
            i9 = R.id.admin_area;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.admin_area);
            if (frameLayout != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i9 = R.id.kick;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.kick);
                if (imageView2 != null) {
                    i9 = R.id.kick_area;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.kick_area);
                    if (frameLayout2 != null) {
                        i9 = R.id.mic;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.mic);
                        if (imageView3 != null) {
                            i9 = R.id.mic_area;
                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.mic_area);
                            if (frameLayout3 != null) {
                                i9 = R.id.mute;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.mute);
                                if (imageView4 != null) {
                                    i9 = R.id.mute_area;
                                    FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.mute_area);
                                    if (frameLayout4 != null) {
                                        return new LayoutPeopleInfoCardCmdAreaBinding(linearLayout, imageView, frameLayout, linearLayout, imageView2, frameLayout2, imageView3, frameLayout3, imageView4, frameLayout4);
                                    }
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
    public static LayoutPeopleInfoCardCmdAreaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPeopleInfoCardCmdAreaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_people_info_card_cmd_area, viewGroup, false);
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
