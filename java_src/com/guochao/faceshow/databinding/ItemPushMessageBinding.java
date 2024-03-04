package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class ItemPushMessageBinding implements ViewBinding {
    @NonNull
    public final TextView expand;
    @NonNull
    public final NormalCircleImageView imgTopics;
    @NonNull
    public final TextView introduce;
    @NonNull
    public final ConstraintLayout item;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView tvName;
    @NonNull
    public final TextView tvTime;

    private ItemPushMessageBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView2, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = constraintLayout;
        this.expand = textView;
        this.imgTopics = normalCircleImageView;
        this.introduce = textView2;
        this.item = constraintLayout2;
        this.tvName = textView3;
        this.tvTime = textView4;
    }

    @NonNull
    public static ItemPushMessageBinding bind(@NonNull View view) {
        int i9 = R.id.expand;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.expand);
        if (textView != null) {
            i9 = R.id.img_topics;
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.img_topics);
            if (normalCircleImageView != null) {
                i9 = R.id.introduce;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.introduce);
                if (textView2 != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i9 = R.id.tv_name;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                    if (textView3 != null) {
                        i9 = R.id.tv_time;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                        if (textView4 != null) {
                            return new ItemPushMessageBinding(constraintLayout, textView, normalCircleImageView, textView2, constraintLayout, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemPushMessageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPushMessageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_push_message, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
