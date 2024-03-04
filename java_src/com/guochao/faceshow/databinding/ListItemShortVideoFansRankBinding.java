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
/* loaded from: classes2.dex */
public final class ListItemShortVideoFansRankBinding implements ViewBinding {
    @NonNull
    public final TextView count;
    @NonNull
    public final HeadPortraitView headView;
    @NonNull
    public final ImageView ivRank;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvRank;
    @NonNull
    public final TextView userName;

    private ListItemShortVideoFansRankBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.count = textView;
        this.headView = headPortraitView;
        this.ivRank = imageView;
        this.tvRank = textView2;
        this.userName = textView3;
    }

    @NonNull
    public static ListItemShortVideoFansRankBinding bind(@NonNull View view) {
        int i9 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            i9 = R.id.head_view;
            HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head_view);
            if (headPortraitView != null) {
                i9 = R.id.iv_rank;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_rank);
                if (imageView != null) {
                    i9 = R.id.tv_rank;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rank);
                    if (textView2 != null) {
                        i9 = R.id.user_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                        if (textView3 != null) {
                            return new ListItemShortVideoFansRankBinding((FrameLayout) view, textView, headPortraitView, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemShortVideoFansRankBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemShortVideoFansRankBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_short_video_fans_rank, viewGroup, false);
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
