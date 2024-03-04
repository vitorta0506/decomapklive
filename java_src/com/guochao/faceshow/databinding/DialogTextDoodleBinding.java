package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogTextDoodleBinding implements ViewBinding {
    @NonNull
    public final TextView complete;
    @NonNull
    public final EditText etText;
    @NonNull
    public final ImageView ivBg;
    @NonNull
    public final ImageView ivMode;
    @NonNull
    public final LinearLayout llBottom;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView tvCancel;

    private DialogTextDoodleBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.complete = textView;
        this.etText = editText;
        this.ivBg = imageView;
        this.ivMode = imageView2;
        this.llBottom = linearLayout;
        this.recyclerView = recyclerView;
        this.tvCancel = textView2;
    }

    @NonNull
    public static DialogTextDoodleBinding bind(@NonNull View view) {
        int i9 = R.id.complete;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.complete);
        if (textView != null) {
            i9 = R.id.et_text;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_text);
            if (editText != null) {
                i9 = R.id.iv_bg;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bg);
                if (imageView != null) {
                    i9 = R.id.iv_mode;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_mode);
                    if (imageView2 != null) {
                        i9 = R.id.ll_bottom;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_bottom);
                        if (linearLayout != null) {
                            i9 = R.id.recycler_view;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                            if (recyclerView != null) {
                                i9 = R.id.tv_cancel;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cancel);
                                if (textView2 != null) {
                                    return new DialogTextDoodleBinding((RelativeLayout) view, textView, editText, imageView, imageView2, linearLayout, recyclerView, textView2);
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
    public static DialogTextDoodleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogTextDoodleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_text_doodle, viewGroup, false);
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
