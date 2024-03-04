package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class ListItemPeopleNearbyBinding implements ViewBinding {
    @NonNull
    public final View dividerLine;
    @NonNull
    public final ImageView iconFocus;
    @NonNull
    public final LinearLayout llPeopleNearby;
    @NonNull
    public final LinearLayoutCompat llTime;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvDistance;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final TextView tvSignature;
    @NonNull
    public final TextView tvTime;
    @NonNull
    public final HeadPortraitView userAvatar;

    private ListItemPeopleNearbyBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayoutCompat linearLayoutCompat, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull HeadPortraitView headPortraitView) {
        this.rootView = linearLayout;
        this.dividerLine = view;
        this.iconFocus = imageView;
        this.llPeopleNearby = linearLayout2;
        this.llTime = linearLayoutCompat;
        this.tvDistance = textView;
        this.tvNickName = textView2;
        this.tvSignature = textView3;
        this.tvTime = textView4;
        this.userAvatar = headPortraitView;
    }

    @NonNull
    public static ListItemPeopleNearbyBinding bind(@NonNull View view) {
        int i9 = R.id.divider_line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider_line);
        if (findChildViewById != null) {
            i9 = R.id.icon_focus;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_focus);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i9 = R.id.ll_time;
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, R.id.ll_time);
                if (linearLayoutCompat != null) {
                    i9 = R.id.tv_distance;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_distance);
                    if (textView != null) {
                        i9 = R.id.tv_nick_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nick_name);
                        if (textView2 != null) {
                            i9 = R.id.tv_signature;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_signature);
                            if (textView3 != null) {
                                i9 = R.id.tv_time;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                                if (textView4 != null) {
                                    i9 = R.id.user_avatar;
                                    HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                                    if (headPortraitView != null) {
                                        return new ListItemPeopleNearbyBinding(linearLayout, findChildViewById, imageView, linearLayout, linearLayoutCompat, textView, textView2, textView3, textView4, headPortraitView);
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
    public static ListItemPeopleNearbyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemPeopleNearbyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_people_nearby, viewGroup, false);
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
