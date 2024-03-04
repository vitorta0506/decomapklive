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
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class ItemF2fMsgNormalBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView avatar;
    @NonNull
    public final ImageView close;
    @NonNull
    public final LinearLayout content;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout textArea;
    @NonNull
    public final TextView textView;
    @NonNull
    public final TextView transltedTv;

    private ItemF2fMsgNormalBinding(@NonNull LinearLayout linearLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.avatar = normalCircleImageView;
        this.close = imageView;
        this.content = linearLayout2;
        this.textArea = linearLayout3;
        this.textView = textView;
        this.transltedTv = textView2;
    }

    @NonNull
    public static ItemF2fMsgNormalBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (normalCircleImageView != null) {
            i9 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
            if (imageView != null) {
                i9 = R.id.content;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content);
                if (linearLayout != null) {
                    i9 = R.id.text_area;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.text_area);
                    if (linearLayout2 != null) {
                        i9 = R.id.text_view;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text_view);
                        if (textView != null) {
                            i9 = R.id.translted_tv;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.translted_tv);
                            if (textView2 != null) {
                                return new ItemF2fMsgNormalBinding((LinearLayout) view, normalCircleImageView, imageView, linearLayout, linearLayout2, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemF2fMsgNormalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemF2fMsgNormalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_f2f_msg_normal, viewGroup, false);
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
