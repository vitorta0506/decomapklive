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
public final class FragmentLiveFloatGreetingListBinding implements ViewBinding {
    @NonNull
    public final ImageView back;
    @NonNull
    public final SlListNodataBinding emptyView;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView title;

    private FragmentLiveFloatGreetingListBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SlListNodataBinding slListNodataBinding, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.back = imageView;
        this.emptyView = slListNodataBinding;
        this.recyclerView = recyclerView;
        this.title = textView;
    }

    @NonNull
    public static FragmentLiveFloatGreetingListBinding bind(@NonNull View view) {
        int i9 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i9 = R.id.empty_view;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty_view);
            if (findChildViewById != null) {
                SlListNodataBinding bind = SlListNodataBinding.bind(findChildViewById);
                i9 = R.id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                if (recyclerView != null) {
                    i9 = R.id.title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView != null) {
                        return new FragmentLiveFloatGreetingListBinding((LinearLayout) view, imageView, bind, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLiveFloatGreetingListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveFloatGreetingListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_float_greeting_list, viewGroup, false);
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
