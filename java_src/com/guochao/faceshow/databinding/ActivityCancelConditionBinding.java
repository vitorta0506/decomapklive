package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.ObservableScrollView;
/* loaded from: classes2.dex */
public final class ActivityCancelConditionBinding implements ViewBinding {
    @NonNull
    public final TextView cancelAccountConditionTip;
    @NonNull
    public final TextView conditionDetail2;
    @NonNull
    public final TextView conditionDetail3;
    @NonNull
    public final TextView conditionDetail4;
    @NonNull
    public final LinearLayout firstWarnLay;
    @NonNull
    public final LinearLayout forthWarnLay;
    @NonNull
    public final ImageView imageView;
    @NonNull
    public final TextView nextStep;
    @NonNull
    private final ObservableScrollView rootView;
    @NonNull
    public final LinearLayout secondWarnLay;
    @NonNull
    public final TextView textView;
    @NonNull
    public final LinearLayout thirdWarnLay;

    private ActivityCancelConditionBinding(@NonNull ObservableScrollView observableScrollView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView5, @NonNull LinearLayout linearLayout3, @NonNull TextView textView6, @NonNull LinearLayout linearLayout4) {
        this.rootView = observableScrollView;
        this.cancelAccountConditionTip = textView;
        this.conditionDetail2 = textView2;
        this.conditionDetail3 = textView3;
        this.conditionDetail4 = textView4;
        this.firstWarnLay = linearLayout;
        this.forthWarnLay = linearLayout2;
        this.imageView = imageView;
        this.nextStep = textView5;
        this.secondWarnLay = linearLayout3;
        this.textView = textView6;
        this.thirdWarnLay = linearLayout4;
    }

    @NonNull
    public static ActivityCancelConditionBinding bind(@NonNull View view) {
        int i9 = R.id.cancel_account_condition_tip;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel_account_condition_tip);
        if (textView != null) {
            i9 = R.id.condition_detail2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.condition_detail2);
            if (textView2 != null) {
                i9 = R.id.condition_detail3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.condition_detail3);
                if (textView3 != null) {
                    i9 = R.id.condition_detail4;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.condition_detail4);
                    if (textView4 != null) {
                        i9 = R.id.first_warn_lay;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.first_warn_lay);
                        if (linearLayout != null) {
                            i9 = R.id.forth_warn_lay;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forth_warn_lay);
                            if (linearLayout2 != null) {
                                i9 = R.id.image_view;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image_view);
                                if (imageView != null) {
                                    i9 = R.id.next_step;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.next_step);
                                    if (textView5 != null) {
                                        i9 = R.id.second_warn_lay;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.second_warn_lay);
                                        if (linearLayout3 != null) {
                                            i9 = R.id.text_view;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.text_view);
                                            if (textView6 != null) {
                                                i9 = R.id.third_warn_lay;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.third_warn_lay);
                                                if (linearLayout4 != null) {
                                                    return new ActivityCancelConditionBinding((ObservableScrollView) view, textView, textView2, textView3, textView4, linearLayout, linearLayout2, imageView, textView5, linearLayout3, textView6, linearLayout4);
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
    public static ActivityCancelConditionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityCancelConditionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_cancel_condition, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ObservableScrollView getRoot() {
        return this.rootView;
    }
}
