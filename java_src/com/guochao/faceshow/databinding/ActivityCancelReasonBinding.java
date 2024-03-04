package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityCancelReasonBinding implements ViewBinding {
    @NonNull
    public final ImageView bgConfig;
    @NonNull
    public final RecyclerView contentData;
    @NonNull
    public final EditText eidtText;
    @NonNull
    public final TextView nextStep;
    @NonNull
    private final LinearLayout rootView;

    private ActivityCancelReasonBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull EditText editText, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.bgConfig = imageView;
        this.contentData = recyclerView;
        this.eidtText = editText;
        this.nextStep = textView;
    }

    @NonNull
    public static ActivityCancelReasonBinding bind(@NonNull View view) {
        int i9 = R.id.bg_config;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_config);
        if (imageView != null) {
            i9 = R.id.content_data;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.content_data);
            if (recyclerView != null) {
                i9 = R.id.eidt_text;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.eidt_text);
                if (editText != null) {
                    i9 = R.id.next_step;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.next_step);
                    if (textView != null) {
                        return new ActivityCancelReasonBinding((LinearLayout) view, imageView, recyclerView, editText, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityCancelReasonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityCancelReasonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_cancel_reason, viewGroup, false);
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
