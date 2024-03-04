package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class ItemCollectionLayoutBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView bgVideo;
    @NonNull
    public final TextView content;
    @NonNull
    public final ImageView iconVideo;
    @NonNull
    public final FrameLayout iconVideoLay;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView timeHistory;
    @NonNull
    public final View userDivider;
    @NonNull
    public final TextView userName;
    @NonNull
    public final LinearLayout userNameLay;

    private ItemCollectionLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout, @NonNull TextView textView2, @NonNull View view, @NonNull TextView textView3, @NonNull LinearLayout linearLayout) {
        this.rootView = relativeLayout;
        this.avatarView = headPortraitView;
        this.bgVideo = imageView;
        this.content = textView;
        this.iconVideo = imageView2;
        this.iconVideoLay = frameLayout;
        this.timeHistory = textView2;
        this.userDivider = view;
        this.userName = textView3;
        this.userNameLay = linearLayout;
    }

    @NonNull
    public static ItemCollectionLayoutBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.bg_video;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_video);
            if (imageView != null) {
                i9 = R.id.content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                if (textView != null) {
                    i9 = R.id.icon_video;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_video);
                    if (imageView2 != null) {
                        i9 = R.id.icon_video_lay;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.icon_video_lay);
                        if (frameLayout != null) {
                            i9 = R.id.time_history;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.time_history);
                            if (textView2 != null) {
                                i9 = R.id.user_divider;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.user_divider);
                                if (findChildViewById != null) {
                                    i9 = R.id.user_name;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                    if (textView3 != null) {
                                        i9 = R.id.user_name_lay;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_name_lay);
                                        if (linearLayout != null) {
                                            return new ItemCollectionLayoutBinding((RelativeLayout) view, headPortraitView, imageView, textView, imageView2, frameLayout, textView2, findChildViewById, textView3, linearLayout);
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
    public static ItemCollectionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemCollectionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_collection_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
