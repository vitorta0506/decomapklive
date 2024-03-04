package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class FragmentPkInviteBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarUser;
    @NonNull
    public final ImageButton btnHangup;
    @NonNull
    public final SVGAImageView pkRandomGif;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvTitleName;

    private FragmentPkInviteBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageButton imageButton, @NonNull SVGAImageView sVGAImageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.avatarUser = headPortraitView;
        this.btnHangup = imageButton;
        this.pkRandomGif = sVGAImageView;
        this.tvTitleName = textView;
    }

    @NonNull
    public static FragmentPkInviteBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_user;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_user);
        if (headPortraitView != null) {
            i9 = R.id.btn_hangup;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_hangup);
            if (imageButton != null) {
                i9 = R.id.pk_random_gif;
                SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.pk_random_gif);
                if (sVGAImageView != null) {
                    i9 = R.id.tv_title_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_name);
                    if (textView != null) {
                        return new FragmentPkInviteBinding((LinearLayout) view, headPortraitView, imageButton, sVGAImageView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentPkInviteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentPkInviteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_pk_invite, viewGroup, false);
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
