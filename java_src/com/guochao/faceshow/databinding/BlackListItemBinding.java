package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class BlackListItemBinding implements ViewBinding {
    @NonNull
    public final TextView btnRemove;
    @NonNull
    public final NormalCircleImageView civHeader;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvNickName;

    private BlackListItemBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.btnRemove = textView;
        this.civHeader = normalCircleImageView;
        this.tvNickName = textView2;
    }

    @NonNull
    public static BlackListItemBinding bind(@NonNull View view) {
        int i9 = R.id.btnRemove;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnRemove);
        if (textView != null) {
            i9 = R.id.civHeader;
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.civHeader);
            if (normalCircleImageView != null) {
                i9 = R.id.tvNickName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNickName);
                if (textView2 != null) {
                    return new BlackListItemBinding((LinearLayout) view, textView, normalCircleImageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static BlackListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static BlackListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.black_list_item, viewGroup, false);
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
