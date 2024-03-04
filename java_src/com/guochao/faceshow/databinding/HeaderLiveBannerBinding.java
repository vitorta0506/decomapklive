package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
import com.rd.PageIndicatorView;
import com.youth.banner.Banner;
/* loaded from: classes2.dex */
public final class HeaderLiveBannerBinding implements ViewBinding {
    @NonNull
    public final LinearLayout activityArea;
    @NonNull
    public final AvatarGroupView avatarGroupView;
    @NonNull
    public final Banner banner;
    @NonNull
    public final PageIndicatorView pageIndicatorView;
    @NonNull
    public final LinearLayout rankArea;
    @NonNull
    private final LinearLayout rootView;

    private HeaderLiveBannerBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull AvatarGroupView avatarGroupView, @NonNull Banner banner, @NonNull PageIndicatorView pageIndicatorView, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.activityArea = linearLayout2;
        this.avatarGroupView = avatarGroupView;
        this.banner = banner;
        this.pageIndicatorView = pageIndicatorView;
        this.rankArea = linearLayout3;
    }

    @NonNull
    public static HeaderLiveBannerBinding bind(@NonNull View view) {
        int i9 = R.id.activity_area;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.activity_area);
        if (linearLayout != null) {
            i9 = R.id.avatar_group_view;
            AvatarGroupView avatarGroupView = (AvatarGroupView) ViewBindings.findChildViewById(view, R.id.avatar_group_view);
            if (avatarGroupView != null) {
                i9 = R.id.banner;
                Banner banner = (Banner) ViewBindings.findChildViewById(view, R.id.banner);
                if (banner != null) {
                    i9 = R.id.pageIndicatorView;
                    PageIndicatorView pageIndicatorView = (PageIndicatorView) ViewBindings.findChildViewById(view, R.id.pageIndicatorView);
                    if (pageIndicatorView != null) {
                        i9 = R.id.rank_area;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rank_area);
                        if (linearLayout2 != null) {
                            return new HeaderLiveBannerBinding((LinearLayout) view, linearLayout, avatarGroupView, banner, pageIndicatorView, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static HeaderLiveBannerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static HeaderLiveBannerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.header_live_banner, viewGroup, false);
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
