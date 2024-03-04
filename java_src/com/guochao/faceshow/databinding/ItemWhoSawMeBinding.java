package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class ItemWhoSawMeBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final View dividerLine;
    @NonNull
    public final ImageView iconFocus;
    @NonNull
    public final LinearLayout llContent;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView userName;
    @NonNull
    public final TextView userSign;
    @NonNull
    public final TextView watchTime;

    private ItemWhoSawMeBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull View view, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.avatarView = headPortraitView;
        this.dividerLine = view;
        this.iconFocus = imageView;
        this.llContent = linearLayout2;
        this.userName = textView;
        this.userSign = textView2;
        this.watchTime = textView3;
    }

    @NonNull
    public static ItemWhoSawMeBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.divider_line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider_line);
            if (findChildViewById != null) {
                i9 = R.id.icon_focus;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_focus);
                if (imageView != null) {
                    i9 = R.id.ll_content;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_content);
                    if (linearLayout != null) {
                        i9 = R.id.user_name;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                        if (textView != null) {
                            i9 = R.id.user_sign;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_sign);
                            if (textView2 != null) {
                                i9 = R.id.watch_time;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.watch_time);
                                if (textView3 != null) {
                                    return new ItemWhoSawMeBinding((LinearLayout) view, headPortraitView, findChildViewById, imageView, linearLayout, textView, textView2, textView3);
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
    public static ItemWhoSawMeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemWhoSawMeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_who_saw_me, viewGroup, false);
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
