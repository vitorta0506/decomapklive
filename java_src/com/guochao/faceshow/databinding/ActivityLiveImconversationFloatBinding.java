package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class ActivityLiveImconversationFloatBinding implements ViewBinding {
    @NonNull
    public final ImageView clear;
    @NonNull
    public final LayoutEmptyViewNoTextBinding empty;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView title;
    @NonNull
    public final TextView unReadNum;

    private ActivityLiveImconversationFloatBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LayoutEmptyViewNoTextBinding layoutEmptyViewNoTextBinding, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.clear = imageView;
        this.empty = layoutEmptyViewNoTextBinding;
        this.recyclerView = recyclerView;
        this.title = textView;
        this.unReadNum = textView2;
    }

    @NonNull
    public static ActivityLiveImconversationFloatBinding bind(@NonNull View view) {
        int i9 = R.id.clear;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.clear);
        if (imageView != null) {
            i9 = R.id.empty;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty);
            if (findChildViewById != null) {
                LayoutEmptyViewNoTextBinding bind = LayoutEmptyViewNoTextBinding.bind(findChildViewById);
                i9 = R.id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                if (recyclerView != null) {
                    i9 = R.id.title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView != null) {
                        i9 = R.id.un_read_num;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.un_read_num);
                        if (textView2 != null) {
                            return new ActivityLiveImconversationFloatBinding((LinearLayout) view, imageView, bind, recyclerView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityLiveImconversationFloatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityLiveImconversationFloatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_live_imconversation_float, viewGroup, false);
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