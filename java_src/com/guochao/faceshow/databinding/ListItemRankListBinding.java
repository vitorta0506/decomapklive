package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
/* loaded from: classes2.dex */
public final class ListItemRankListBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView focus;
    @NonNull
    public final ImageView icon;
    @NonNull
    public final TextView index;
    @NonNull
    public final LevelView levelView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView sendOrReceive;
    @NonNull
    public final TextView userName;
    @NonNull
    public final TextView value;

    private ListItemRankListBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull LevelView levelView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.focus = imageView;
        this.icon = imageView2;
        this.index = textView;
        this.levelView = levelView;
        this.sendOrReceive = textView2;
        this.userName = textView3;
        this.value = textView4;
    }

    @NonNull
    public static ListItemRankListBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.focus;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.focus);
            if (imageView != null) {
                i9 = R.id.icon;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
                if (imageView2 != null) {
                    i9 = R.id.index;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.index);
                    if (textView != null) {
                        i9 = R.id.level_view;
                        LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view);
                        if (levelView != null) {
                            i9 = R.id.send_or_receive;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.send_or_receive);
                            if (textView2 != null) {
                                i9 = R.id.user_name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                if (textView3 != null) {
                                    i9 = R.id.value;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.value);
                                    if (textView4 != null) {
                                        return new ListItemRankListBinding((FrameLayout) view, headPortraitView, imageView, imageView2, textView, levelView, textView2, textView3, textView4);
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
    public static ListItemRankListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemRankListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_rank_list, viewGroup, false);
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
