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
public final class FragmentCallInviteCardBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarUser;
    @NonNull
    public final TextView blackThis;
    @NonNull
    public final ImageButton btnAgree;
    @NonNull
    public final ImageButton btnRefuse;
    @NonNull
    public final ImageButton chatIcon;
    @NonNull
    public final ImageView inviteType;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvInviteName;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final TextView tvTrtcPrice;
    @NonNull
    public final LinearLayout userInfo1Layout;

    private FragmentCallInviteCardBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView, @NonNull ImageButton imageButton, @NonNull ImageButton imageButton2, @NonNull ImageButton imageButton3, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.avatarUser = headPortraitView;
        this.blackThis = textView;
        this.btnAgree = imageButton;
        this.btnRefuse = imageButton2;
        this.chatIcon = imageButton3;
        this.inviteType = imageView;
        this.tvInviteName = textView2;
        this.tvNickName = textView3;
        this.tvTrtcPrice = textView4;
        this.userInfo1Layout = linearLayout;
    }

    @NonNull
    public static FragmentCallInviteCardBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_user;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_user);
        if (headPortraitView != null) {
            i9 = R.id.black_this;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.black_this);
            if (textView != null) {
                i9 = R.id.btn_agree;
                ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_agree);
                if (imageButton != null) {
                    i9 = R.id.btn_refuse;
                    ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_refuse);
                    if (imageButton2 != null) {
                        i9 = R.id.chat_icon;
                        ImageButton imageButton3 = (ImageButton) ViewBindings.findChildViewById(view, R.id.chat_icon);
                        if (imageButton3 != null) {
                            i9 = R.id.invite_type;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.invite_type);
                            if (imageView != null) {
                                i9 = R.id.tv_invite_name;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_invite_name);
                                if (textView2 != null) {
                                    i9 = R.id.tv_nick_name;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nick_name);
                                    if (textView3 != null) {
                                        i9 = R.id.tv_trtc_price;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_trtc_price);
                                        if (textView4 != null) {
                                            i9 = R.id.user_info_1_layout;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_info_1_layout);
                                            if (linearLayout != null) {
                                                return new FragmentCallInviteCardBinding((FrameLayout) view, headPortraitView, textView, imageButton, imageButton2, imageButton3, imageView, textView2, textView3, textView4, linearLayout);
                                            }
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
    public static FragmentCallInviteCardBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentCallInviteCardBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_call_invite_card, viewGroup, false);
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
