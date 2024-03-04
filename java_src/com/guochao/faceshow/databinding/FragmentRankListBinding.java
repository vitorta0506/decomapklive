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
import com.guochao.faceshow.aaspring.views.LevelView;
/* loaded from: classes2.dex */
public final class FragmentRankListBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final TextView bottomTips;
    @NonNull
    public final LinearLayout bottomView;
    @NonNull
    public final LinearLayout contentArea;
    @NonNull
    public final LinearLayout emptyView;
    @NonNull
    public final LinearLayout emptyView1;
    @NonNull
    public final ImageView icon;
    @NonNull
    public final TextView index;
    @NonNull
    public final LevelView levelView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView sendOrReceive;
    @NonNull
    public final LinearLayout spaceArea;
    @NonNull
    public final TextView unit;
    @NonNull
    public final TextView userName;
    @NonNull
    public final TextView value;

    private FragmentRankListBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull LevelView levelView, @NonNull TextView textView3, @NonNull LinearLayout linearLayout6, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = linearLayout;
        this.avatarView = headPortraitView;
        this.bottomTips = textView;
        this.bottomView = linearLayout2;
        this.contentArea = linearLayout3;
        this.emptyView = linearLayout4;
        this.emptyView1 = linearLayout5;
        this.icon = imageView;
        this.index = textView2;
        this.levelView = levelView;
        this.sendOrReceive = textView3;
        this.spaceArea = linearLayout6;
        this.unit = textView4;
        this.userName = textView5;
        this.value = textView6;
    }

    @NonNull
    public static FragmentRankListBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.bottom_tips;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.bottom_tips);
            if (textView != null) {
                i9 = R.id.bottom_view;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_view);
                if (linearLayout != null) {
                    i9 = R.id.content_area;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_area);
                    if (linearLayout2 != null) {
                        i9 = R.id.empty_view;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.empty_view);
                        if (linearLayout3 != null) {
                            i9 = R.id.empty_view1;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.empty_view1);
                            if (linearLayout4 != null) {
                                i9 = R.id.icon;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
                                if (imageView != null) {
                                    i9 = R.id.index;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.index);
                                    if (textView2 != null) {
                                        i9 = R.id.level_view;
                                        LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view);
                                        if (levelView != null) {
                                            i9 = R.id.send_or_receive;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.send_or_receive);
                                            if (textView3 != null) {
                                                i9 = R.id.space_area;
                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.space_area);
                                                if (linearLayout5 != null) {
                                                    i9 = R.id.unit;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.unit);
                                                    if (textView4 != null) {
                                                        i9 = R.id.user_name;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                                        if (textView5 != null) {
                                                            i9 = R.id.value;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.value);
                                                            if (textView6 != null) {
                                                                return new FragmentRankListBinding((LinearLayout) view, headPortraitView, textView, linearLayout, linearLayout2, linearLayout3, linearLayout4, imageView, textView2, levelView, textView3, linearLayout5, textView4, textView5, textView6);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentRankListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentRankListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_rank_list, viewGroup, false);
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
