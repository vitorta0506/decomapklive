package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class UserPageTrankTopViewBinding implements ViewBinding {
    @NonNull
    public final LinearLayout moreArrowBtnLy;
    @NonNull
    public final ImageView moreArrowImage;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final ImageView showTypeIcon;
    @NonNull
    public final TextView showTypeText;
    @NonNull
    public final RelativeLayout trankTopHeadLy;

    private UserPageTrankTopViewBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.moreArrowBtnLy = linearLayout;
        this.moreArrowImage = imageView;
        this.showTypeIcon = imageView2;
        this.showTypeText = textView;
        this.trankTopHeadLy = relativeLayout2;
    }

    @NonNull
    public static UserPageTrankTopViewBinding bind(@NonNull View view) {
        int i9 = R.id.more_arrow_btn_ly;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.more_arrow_btn_ly);
        if (linearLayout != null) {
            i9 = R.id.more_arrow_image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.more_arrow_image);
            if (imageView != null) {
                i9 = R.id.show_type_icon;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.show_type_icon);
                if (imageView2 != null) {
                    i9 = R.id.show_type_text;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.show_type_text);
                    if (textView != null) {
                        i9 = R.id.trank_top_head_ly;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.trank_top_head_ly);
                        if (relativeLayout != null) {
                            return new UserPageTrankTopViewBinding((RelativeLayout) view, linearLayout, imageView, imageView2, textView, relativeLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static UserPageTrankTopViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static UserPageTrankTopViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_page_trank_top_view, viewGroup, false);
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
