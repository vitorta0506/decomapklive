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
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
/* loaded from: classes2.dex */
public final class FragmentPkTypeSelectBinding implements ViewBinding {
    @NonNull
    public final AvatarGroupView avatarGroupView;
    @NonNull
    public final LinearLayout llPkRecord;
    @NonNull
    public final FrameLayout rlFriendMatch;
    @NonNull
    public final FrameLayout rlRandomMatch;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvFbNumber;
    @NonNull
    public final TextView tvPkFriendToMatch;
    @NonNull
    public final TextView tvWinNumber;

    private FragmentPkTypeSelectBinding(@NonNull FrameLayout frameLayout, @NonNull AvatarGroupView avatarGroupView, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.avatarGroupView = avatarGroupView;
        this.llPkRecord = linearLayout;
        this.rlFriendMatch = frameLayout2;
        this.rlRandomMatch = frameLayout3;
        this.tvFbNumber = textView;
        this.tvPkFriendToMatch = textView2;
        this.tvWinNumber = textView3;
    }

    @NonNull
    public static FragmentPkTypeSelectBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_group_view;
        AvatarGroupView avatarGroupView = (AvatarGroupView) ViewBindings.findChildViewById(view, R.id.avatar_group_view);
        if (avatarGroupView != null) {
            i9 = R.id.ll_pk_record;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_pk_record);
            if (linearLayout != null) {
                i9 = R.id.rl_friend_match;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rl_friend_match);
                if (frameLayout != null) {
                    i9 = R.id.rl_random_match;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rl_random_match);
                    if (frameLayout2 != null) {
                        i9 = R.id.tv_fb_number;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fb_number);
                        if (textView != null) {
                            i9 = R.id.tv_pk_friend_to_match;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pk_friend_to_match);
                            if (textView2 != null) {
                                i9 = R.id.tv_win_number;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_win_number);
                                if (textView3 != null) {
                                    return new FragmentPkTypeSelectBinding((FrameLayout) view, avatarGroupView, linearLayout, frameLayout, frameLayout2, textView, textView2, textView3);
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
    public static FragmentPkTypeSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentPkTypeSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_pk_type_select, viewGroup, false);
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
