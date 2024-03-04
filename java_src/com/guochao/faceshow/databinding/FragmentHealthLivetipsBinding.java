package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentHealthLivetipsBinding implements ViewBinding {
    @NonNull
    public final ImageView close;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ScrollView scrollLayout;
    @NonNull
    public final TextView sure;
    @NonNull
    public final TextView title;
    @NonNull
    public final TextView tvWaitingTip;

    private FragmentHealthLivetipsBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ScrollView scrollView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.close = imageView;
        this.scrollLayout = scrollView;
        this.sure = textView;
        this.title = textView2;
        this.tvWaitingTip = textView3;
    }

    @NonNull
    public static FragmentHealthLivetipsBinding bind(@NonNull View view) {
        int i9 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i9 = R.id.scroll_layout;
            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scroll_layout);
            if (scrollView != null) {
                i9 = R.id.sure;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.sure);
                if (textView != null) {
                    i9 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView2 != null) {
                        i9 = R.id.tv_waiting_tip;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_waiting_tip);
                        if (textView3 != null) {
                            return new FragmentHealthLivetipsBinding((FrameLayout) view, imageView, scrollView, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentHealthLivetipsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentHealthLivetipsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_health_livetips, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
