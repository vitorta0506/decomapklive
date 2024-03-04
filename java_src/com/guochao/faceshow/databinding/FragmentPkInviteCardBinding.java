package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class FragmentPkInviteCardBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarUser;
    @NonNull
    public final ImageButton btnAgree;
    @NonNull
    public final ImageButton btnRefuse;
    @NonNull
    public final ImageView inviteType;
    @NonNull
    public final ImageView ivSelectState;
    @NonNull
    public final LinearLayout laySelectState;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvInviteName;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final LinearLayout userInfo1Layout;

    private FragmentPkInviteCardBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageButton imageButton, @NonNull ImageButton imageButton2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2) {
        this.rootView = frameLayout;
        this.avatarUser = headPortraitView;
        this.btnAgree = imageButton;
        this.btnRefuse = imageButton2;
        this.inviteType = imageView;
        this.ivSelectState = imageView2;
        this.laySelectState = linearLayout;
        this.tvInviteName = textView;
        this.tvNickName = textView2;
        this.userInfo1Layout = linearLayout2;
    }

    @NonNull
    public static FragmentPkInviteCardBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_user;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_user);
        if (headPortraitView != null) {
            i9 = R.id.btn_agree;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_agree);
            if (imageButton != null) {
                i9 = R.id.btn_refuse;
                ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_refuse);
                if (imageButton2 != null) {
                    i9 = R.id.invite_type;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.invite_type);
                    if (imageView != null) {
                        i9 = R.id.iv_select_state;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_select_state);
                        if (imageView2 != null) {
                            i9 = R.id.lay_select_state;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_select_state);
                            if (linearLayout != null) {
                                i9 = R.id.tv_invite_name;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_invite_name);
                                if (textView != null) {
                                    i9 = R.id.tv_nick_name;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nick_name);
                                    if (textView2 != null) {
                                        i9 = R.id.user_info_1_layout;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_1_layout);
                                        if (linearLayout2 != null) {
                                            return new FragmentPkInviteCardBinding((FrameLayout) view, headPortraitView, imageButton, imageButton2, imageView, imageView2, linearLayout, textView, textView2, linearLayout2);
                                        }
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
    public static FragmentPkInviteCardBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentPkInviteCardBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_pk_invite_card, viewGroup, false);
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
