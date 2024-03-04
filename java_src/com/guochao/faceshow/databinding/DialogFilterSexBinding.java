package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogFilterSexBinding implements ViewBinding {
    @NonNull
    public final View bgEmpty;
    @NonNull
    public final ImageView bgManFilter;
    @NonNull
    public final ImageView bgNoneFilter;
    @NonNull
    public final ImageView bgWomanFilter;
    @NonNull
    public final ImageView manChecker;
    @NonNull
    public final LinearLayout manCheckerLay;
    @NonNull
    public final ImageView noneChecker;
    @NonNull
    public final LinearLayout noneCheckerLay;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView womenChecker;
    @NonNull
    public final LinearLayout womenCheckerLay;

    private DialogFilterSexBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView5, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView6, @NonNull LinearLayout linearLayout3) {
        this.rootView = frameLayout;
        this.bgEmpty = view;
        this.bgManFilter = imageView;
        this.bgNoneFilter = imageView2;
        this.bgWomanFilter = imageView3;
        this.manChecker = imageView4;
        this.manCheckerLay = linearLayout;
        this.noneChecker = imageView5;
        this.noneCheckerLay = linearLayout2;
        this.womenChecker = imageView6;
        this.womenCheckerLay = linearLayout3;
    }

    @NonNull
    public static DialogFilterSexBinding bind(@NonNull View view) {
        int i9 = R.id.bg_empty;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_empty);
        if (findChildViewById != null) {
            i9 = R.id.bg_man_filter;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_man_filter);
            if (imageView != null) {
                i9 = R.id.bg_none_filter;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_none_filter);
                if (imageView2 != null) {
                    i9 = R.id.bg_woman_filter;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_woman_filter);
                    if (imageView3 != null) {
                        i9 = R.id.man_checker;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.man_checker);
                        if (imageView4 != null) {
                            i9 = R.id.man_checker_lay;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.man_checker_lay);
                            if (linearLayout != null) {
                                i9 = R.id.none_checker;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.none_checker);
                                if (imageView5 != null) {
                                    i9 = R.id.none_checker_lay;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.none_checker_lay);
                                    if (linearLayout2 != null) {
                                        i9 = R.id.women_checker;
                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.women_checker);
                                        if (imageView6 != null) {
                                            i9 = R.id.women_checker_lay;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.women_checker_lay);
                                            if (linearLayout3 != null) {
                                                return new DialogFilterSexBinding((FrameLayout) view, findChildViewById, imageView, imageView2, imageView3, imageView4, linearLayout, imageView5, linearLayout2, imageView6, linearLayout3);
                                            }
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
    public static DialogFilterSexBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogFilterSexBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_filter_sex, viewGroup, false);
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
