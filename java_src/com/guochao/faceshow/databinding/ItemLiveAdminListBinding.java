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
public final class ItemLiveAdminListBinding implements ViewBinding {
    @NonNull
    public final TextView btnCancelAdmin;
    @NonNull
    public final NormalCircleImageView civHeader;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final TextView tvTips;

    private ItemLiveAdminListBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = relativeLayout;
        this.btnCancelAdmin = textView;
        this.civHeader = normalCircleImageView;
        this.tvNickName = textView2;
        this.tvTips = textView3;
    }

    @NonNull
    public static ItemLiveAdminListBinding bind(@NonNull View view) {
        int i9 = R.id.btnCancelAdmin;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnCancelAdmin);
        if (textView != null) {
            i9 = R.id.civHeader;
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.civHeader);
            if (normalCircleImageView != null) {
                i9 = R.id.tvNickName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNickName);
                if (textView2 != null) {
                    i9 = R.id.tvTips;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTips);
                    if (textView3 != null) {
                        return new ItemLiveAdminListBinding((RelativeLayout) view, textView, normalCircleImageView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemLiveAdminListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemLiveAdminListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_live_admin_list, viewGroup, false);
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
