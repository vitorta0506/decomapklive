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
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class UserPageGroupInfoItemBinding implements ViewBinding {
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final ImageView userPageGroupArrowImage;
    @NonNull
    public final TextView userPageGroupItemDesc;
    @NonNull
    public final NormalCircleImageView userPageGroupItemImg;
    @NonNull
    public final TextView userPageGroupItemName;
    @NonNull
    public final LinearLayout userPageGroupItemTextLy;

    private UserPageGroupInfoItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout) {
        this.rootView = relativeLayout;
        this.userPageGroupArrowImage = imageView;
        this.userPageGroupItemDesc = textView;
        this.userPageGroupItemImg = normalCircleImageView;
        this.userPageGroupItemName = textView2;
        this.userPageGroupItemTextLy = linearLayout;
    }

    @NonNull
    public static UserPageGroupInfoItemBinding bind(@NonNull View view) {
        int i9 = R.id.user_page_group_arrow_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.user_page_group_arrow_image);
        if (imageView != null) {
            i9 = R.id.user_page_group_item_desc;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_page_group_item_desc);
            if (textView != null) {
                i9 = R.id.user_page_group_item_img;
                NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.user_page_group_item_img);
                if (normalCircleImageView != null) {
                    i9 = R.id.user_page_group_item_name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_page_group_item_name);
                    if (textView2 != null) {
                        i9 = R.id.user_page_group_item_text_ly;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_page_group_item_text_ly);
                        if (linearLayout != null) {
                            return new UserPageGroupInfoItemBinding((RelativeLayout) view, imageView, textView, normalCircleImageView, textView2, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static UserPageGroupInfoItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static UserPageGroupInfoItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_page_group_info_item, viewGroup, false);
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
