package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class LayoutHourRankAnimBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatar;
    @NonNull
    public final SvgaImageViewV2 bigAnim;
    @NonNull
    public final FrameLayout hourRankAnim;
    @NonNull
    public final TextView nickName;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SvgaImageViewV2 smallAnim;
    @NonNull
    public final FrameLayout smallAnimArea;

    private LayoutHourRankAnimBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull SvgaImageViewV2 svgaImageViewV22, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.avatar = headPortraitView;
        this.bigAnim = svgaImageViewV2;
        this.hourRankAnim = frameLayout2;
        this.nickName = textView;
        this.smallAnim = svgaImageViewV22;
        this.smallAnimArea = frameLayout3;
    }

    @NonNull
    public static LayoutHourRankAnimBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (headPortraitView != null) {
            i9 = R.id.big_anim;
            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.big_anim);
            if (svgaImageViewV2 != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                i9 = R.id.nick_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nick_name);
                if (textView != null) {
                    i9 = R.id.smallAnim;
                    SvgaImageViewV2 svgaImageViewV22 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.smallAnim);
                    if (svgaImageViewV22 != null) {
                        i9 = R.id.smallAnimArea;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.smallAnimArea);
                        if (frameLayout2 != null) {
                            return new LayoutHourRankAnimBinding(frameLayout, headPortraitView, svgaImageViewV2, frameLayout, textView, svgaImageViewV22, frameLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutHourRankAnimBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutHourRankAnimBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_hour_rank_anim, viewGroup, false);
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
