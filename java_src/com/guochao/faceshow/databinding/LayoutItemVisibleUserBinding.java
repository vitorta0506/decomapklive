package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutItemVisibleUserBinding implements ViewBinding {
    @NonNull
    public final RelativeLayout contentLay;
    @NonNull
    public final ImageView primaryArrow;
    @NonNull
    public final ImageView primaryArrowRight;
    @NonNull
    public final TextView primaryContent;
    @NonNull
    public final TextView primaryTitle;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView secondaryContentWarning;
    @NonNull
    public final ImageView secondaryFirstChecker;
    @NonNull
    public final LinearLayout secondaryFirstLay;
    @NonNull
    public final TextView secondaryFirstTitle;
    @NonNull
    public final LinearLayout secondaryLay;
    @NonNull
    public final ImageView secondarySecondChecker;
    @NonNull
    public final LinearLayout secondarySecondLay;
    @NonNull
    public final TextView secondarySecondTitle;

    private LayoutItemVisibleUserBinding(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout4, @NonNull TextView textView5) {
        this.rootView = linearLayout;
        this.contentLay = relativeLayout;
        this.primaryArrow = imageView;
        this.primaryArrowRight = imageView2;
        this.primaryContent = textView;
        this.primaryTitle = textView2;
        this.secondaryContentWarning = textView3;
        this.secondaryFirstChecker = imageView3;
        this.secondaryFirstLay = linearLayout2;
        this.secondaryFirstTitle = textView4;
        this.secondaryLay = linearLayout3;
        this.secondarySecondChecker = imageView4;
        this.secondarySecondLay = linearLayout4;
        this.secondarySecondTitle = textView5;
    }

    @NonNull
    public static LayoutItemVisibleUserBinding bind(@NonNull View view) {
        int i9 = R.id.content_lay;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.content_lay);
        if (relativeLayout != null) {
            i9 = R.id.primary_arrow;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.primary_arrow);
            if (imageView != null) {
                i9 = R.id.primary_arrow_right;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.primary_arrow_right);
                if (imageView2 != null) {
                    i9 = R.id.primary_content;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.primary_content);
                    if (textView != null) {
                        i9 = R.id.primary_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.primary_title);
                        if (textView2 != null) {
                            i9 = R.id.secondary_content_warning;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.secondary_content_warning);
                            if (textView3 != null) {
                                i9 = R.id.secondary_first_checker;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.secondary_first_checker);
                                if (imageView3 != null) {
                                    i9 = R.id.secondary_first_lay;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.secondary_first_lay);
                                    if (linearLayout != null) {
                                        i9 = R.id.secondary_first_title;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.secondary_first_title);
                                        if (textView4 != null) {
                                            i9 = R.id.secondary_lay;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.secondary_lay);
                                            if (linearLayout2 != null) {
                                                i9 = R.id.secondary_second_checker;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.secondary_second_checker);
                                                if (imageView4 != null) {
                                                    i9 = R.id.secondary_second_lay;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.secondary_second_lay);
                                                    if (linearLayout3 != null) {
                                                        i9 = R.id.secondary_second_title;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.secondary_second_title);
                                                        if (textView5 != null) {
                                                            return new LayoutItemVisibleUserBinding((LinearLayout) view, relativeLayout, imageView, imageView2, textView, textView2, textView3, imageView3, linearLayout, textView4, linearLayout2, imageView4, linearLayout3, textView5);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutItemVisibleUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutItemVisibleUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_item_visible_user, viewGroup, false);
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
