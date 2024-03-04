package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
public final class LayoutRankListHeaderThirdAreaBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final LinearLayout clickArea;
    @NonNull
    public final LinearLayout contentArea;
    @NonNull
    public final LinearLayout emptyArea;
    @NonNull
    public final ImageView focus;
    @NonNull
    public final ImageView icon;
    @NonNull
    public final LevelView levelView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final FrameLayout thirdArea;
    @NonNull
    public final TextView unit;
    @NonNull
    public final TextView userName;
    @NonNull
    public final TextView value;

    private LayoutRankListHeaderThirdAreaBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LevelView levelView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.clickArea = linearLayout;
        this.contentArea = linearLayout2;
        this.emptyArea = linearLayout3;
        this.focus = imageView;
        this.icon = imageView2;
        this.levelView = levelView;
        this.thirdArea = frameLayout2;
        this.unit = textView;
        this.userName = textView2;
        this.value = textView3;
    }

    @NonNull
    public static LayoutRankListHeaderThirdAreaBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.click_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.click_area);
            if (linearLayout != null) {
                i9 = R.id.content_area;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_area);
                if (linearLayout2 != null) {
                    i9 = R.id.empty_area;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.empty_area);
                    if (linearLayout3 != null) {
                        i9 = R.id.focus;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.focus);
                        if (imageView != null) {
                            i9 = R.id.icon;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
                            if (imageView2 != null) {
                                i9 = R.id.level_view;
                                LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view);
                                if (levelView != null) {
                                    FrameLayout frameLayout = (FrameLayout) view;
                                    i9 = R.id.unit;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.unit);
                                    if (textView != null) {
                                        i9 = R.id.user_name;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                        if (textView2 != null) {
                                            i9 = R.id.value;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.value);
                                            if (textView3 != null) {
                                                return new LayoutRankListHeaderThirdAreaBinding(frameLayout, headPortraitView, linearLayout, linearLayout2, linearLayout3, imageView, imageView2, levelView, frameLayout, textView, textView2, textView3);
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
    public static LayoutRankListHeaderThirdAreaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRankListHeaderThirdAreaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_rank_list_header_third_area, viewGroup, false);
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
