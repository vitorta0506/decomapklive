package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextSwitcher;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentComboGiftDetailBinding implements ViewBinding {
    @NonNull
    public final ImageView backIV;
    @NonNull
    public final TextSwitcher countTV;
    @NonNull
    public final LinearLayout example1LL;
    @NonNull
    public final LinearLayout example2LL;
    @NonNull
    public final LinearLayout example3LL;
    @NonNull
    public final LinearLayout example4LL;
    @NonNull
    public final ImageView giftIV;
    @NonNull
    public final LinearLayout giftInfoListLL;
    @NonNull
    public final TextView giftTV;
    @NonNull
    public final TextView gotoGiftTV;
    @NonNull
    public final ImageView recordIV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView rule1;
    @NonNull
    public final ImageView tipsIV;

    private FragmentComboGiftDetailBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextSwitcher textSwitcher, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout6, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull TextView textView3, @NonNull ImageView imageView4) {
        this.rootView = linearLayout;
        this.backIV = imageView;
        this.countTV = textSwitcher;
        this.example1LL = linearLayout2;
        this.example2LL = linearLayout3;
        this.example3LL = linearLayout4;
        this.example4LL = linearLayout5;
        this.giftIV = imageView2;
        this.giftInfoListLL = linearLayout6;
        this.giftTV = textView;
        this.gotoGiftTV = textView2;
        this.recordIV = imageView3;
        this.rule1 = textView3;
        this.tipsIV = imageView4;
    }

    @NonNull
    public static FragmentComboGiftDetailBinding bind(@NonNull View view) {
        int i9 = R.id.backIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backIV);
        if (imageView != null) {
            i9 = R.id.countTV;
            TextSwitcher textSwitcher = (TextSwitcher) ViewBindings.findChildViewById(view, R.id.countTV);
            if (textSwitcher != null) {
                i9 = R.id.example1LL;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.example1LL);
                if (linearLayout != null) {
                    i9 = R.id.example2LL;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.example2LL);
                    if (linearLayout2 != null) {
                        i9 = R.id.example3LL;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.example3LL);
                        if (linearLayout3 != null) {
                            i9 = R.id.example4LL;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.example4LL);
                            if (linearLayout4 != null) {
                                i9 = R.id.giftIV;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.giftIV);
                                if (imageView2 != null) {
                                    i9 = R.id.giftInfoListLL;
                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.giftInfoListLL);
                                    if (linearLayout5 != null) {
                                        i9 = R.id.giftTV;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.giftTV);
                                        if (textView != null) {
                                            i9 = R.id.gotoGiftTV;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gotoGiftTV);
                                            if (textView2 != null) {
                                                i9 = R.id.recordIV;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.recordIV);
                                                if (imageView3 != null) {
                                                    i9 = R.id.rule_1;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.rule_1);
                                                    if (textView3 != null) {
                                                        i9 = R.id.tipsIV;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.tipsIV);
                                                        if (imageView4 != null) {
                                                            return new FragmentComboGiftDetailBinding((LinearLayout) view, imageView, textSwitcher, linearLayout, linearLayout2, linearLayout3, linearLayout4, imageView2, linearLayout5, textView, textView2, imageView3, textView3, imageView4);
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
    public static FragmentComboGiftDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentComboGiftDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_combo_gift_detail, viewGroup, false);
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
