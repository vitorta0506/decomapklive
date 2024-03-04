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
public final class ItemPkRecordBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarMyUser;
    @NonNull
    public final HeadPortraitView avatarSideUser;
    @NonNull
    public final ImageView ivPkResult;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvMyFbNumber;
    @NonNull
    public final TextView tvPkTime;
    @NonNull
    public final TextView tvSideFbNumber;

    private ItemPkRecordBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull HeadPortraitView headPortraitView2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.avatarMyUser = headPortraitView;
        this.avatarSideUser = headPortraitView2;
        this.ivPkResult = imageView;
        this.tvMyFbNumber = textView;
        this.tvPkTime = textView2;
        this.tvSideFbNumber = textView3;
    }

    @NonNull
    public static ItemPkRecordBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_my_user;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_my_user);
        if (headPortraitView != null) {
            i9 = R.id.avatar_side_user;
            HeadPortraitView headPortraitView2 = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_side_user);
            if (headPortraitView2 != null) {
                i9 = R.id.iv_pk_result;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pk_result);
                if (imageView != null) {
                    i9 = R.id.tv_my_fb_number;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_my_fb_number);
                    if (textView != null) {
                        i9 = R.id.tv_pk_time;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pk_time);
                        if (textView2 != null) {
                            i9 = R.id.tv_side_fb_number;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_side_fb_number);
                            if (textView3 != null) {
                                return new ItemPkRecordBinding((LinearLayout) view, headPortraitView, headPortraitView2, imageView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemPkRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPkRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_pk_record, viewGroup, false);
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
