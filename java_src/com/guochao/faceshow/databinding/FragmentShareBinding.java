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
public final class FragmentShareBinding implements ViewBinding {
    @NonNull
    public final TextView cancel;
    @NonNull
    public final ImageView close;
    @NonNull
    public final LinearLayout copyLink;
    @NonNull
    public final LinearLayout deleteVideo;
    @NonNull
    public final LinearLayout loginBottomLayout;
    @NonNull
    public final LinearLayout noInterest;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    public final LinearLayout report;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout saveBtn;

    private FragmentShareBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7) {
        this.rootView = linearLayout;
        this.cancel = textView;
        this.close = imageView;
        this.copyLink = linearLayout2;
        this.deleteVideo = linearLayout3;
        this.loginBottomLayout = linearLayout4;
        this.noInterest = linearLayout5;
        this.recyclerView = recyclerView;
        this.report = linearLayout6;
        this.saveBtn = linearLayout7;
    }

    @NonNull
    public static FragmentShareBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i9 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
            if (imageView != null) {
                i9 = R.id.copy_link;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.copy_link);
                if (linearLayout != null) {
                    i9 = R.id.delete_video;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.delete_video);
                    if (linearLayout2 != null) {
                        i9 = R.id.login_bottom_layout;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.login_bottom_layout);
                        if (linearLayout3 != null) {
                            i9 = R.id.no_interest;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.no_interest);
                            if (linearLayout4 != null) {
                                i9 = R.id.recycler_view;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                                if (recyclerView != null) {
                                    i9 = R.id.report;
                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.report);
                                    if (linearLayout5 != null) {
                                        i9 = R.id.save_btn;
                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.save_btn);
                                        if (linearLayout6 != null) {
                                            return new FragmentShareBinding((LinearLayout) view, textView, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, recyclerView, linearLayout5, linearLayout6);
                                        }
                                    }
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
    public static FragmentShareBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentShareBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_share, viewGroup, false);
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
