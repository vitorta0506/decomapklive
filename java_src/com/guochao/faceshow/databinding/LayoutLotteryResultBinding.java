package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutLotteryResultBinding implements ViewBinding {
    @NonNull
    public final TextView diamondCount;
    @NonNull
    public final LinearLayout freeDiamonds;
    @NonNull
    public final TextView iKnow;
    @NonNull
    public final LinearLayout newAvatar;
    @NonNull
    private final LinearLayout rootView;

    private LayoutLotteryResultBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.diamondCount = textView;
        this.freeDiamonds = linearLayout2;
        this.iKnow = textView2;
        this.newAvatar = linearLayout3;
    }

    @NonNull
    public static LayoutLotteryResultBinding bind(@NonNull View view) {
        int i9 = R.id.diamond_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.diamond_count);
        if (textView != null) {
            i9 = R.id.free_diamonds;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.free_diamonds);
            if (linearLayout != null) {
                i9 = R.id.i_know;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.i_know);
                if (textView2 != null) {
                    i9 = R.id.new_avatar;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.new_avatar);
                    if (linearLayout2 != null) {
                        return new LayoutLotteryResultBinding((LinearLayout) view, textView, linearLayout, textView2, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLotteryResultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLotteryResultBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_lottery_result, viewGroup, false);
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
