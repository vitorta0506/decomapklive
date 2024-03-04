package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class ItemAuthorityNotifycationBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView iconItem;
    @NonNull
    public final TextView primaryTitle;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView secondaryTitle;
    @NonNull
    public final TextView timeHistory;
    @NonNull
    public final TextView unReadNum;
    @NonNull
    public final View userDivider;

    private ItemAuthorityNotifycationBinding(@NonNull RelativeLayout relativeLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull View view) {
        this.rootView = relativeLayout;
        this.iconItem = normalCircleImageView;
        this.primaryTitle = textView;
        this.secondaryTitle = textView2;
        this.timeHistory = textView3;
        this.unReadNum = textView4;
        this.userDivider = view;
    }

    @NonNull
    public static ItemAuthorityNotifycationBinding bind(@NonNull View view) {
        int i9 = R.id.icon_item;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.icon_item);
        if (normalCircleImageView != null) {
            i9 = R.id.primary_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.primary_title);
            if (textView != null) {
                i9 = R.id.secondary_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.secondary_title);
                if (textView2 != null) {
                    i9 = R.id.time_history;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.time_history);
                    if (textView3 != null) {
                        i9 = R.id.un_read_num;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.un_read_num);
                        if (textView4 != null) {
                            i9 = R.id.user_divider;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.user_divider);
                            if (findChildViewById != null) {
                                return new ItemAuthorityNotifycationBinding((RelativeLayout) view, normalCircleImageView, textView, textView2, textView3, textView4, findChildViewById);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemAuthorityNotifycationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemAuthorityNotifycationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_authority_notifycation, viewGroup, false);
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
