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
/* loaded from: classes2.dex */
public final class ChristmasActivityPrizeDialogBinding implements ViewBinding {
    @NonNull
    public final ImageView dialogClose;
    @NonNull
    public final TextView getPrize;
    @NonNull
    public final ImageView giftPic;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView textContent;

    private ChristmasActivityPrizeDialogBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.dialogClose = imageView;
        this.getPrize = textView;
        this.giftPic = imageView2;
        this.textContent = textView2;
    }

    @NonNull
    public static ChristmasActivityPrizeDialogBinding bind(@NonNull View view) {
        int i9 = R.id.dialog_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dialog_close);
        if (imageView != null) {
            i9 = R.id.get_prize;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.get_prize);
            if (textView != null) {
                i9 = R.id.gift_pic;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_pic);
                if (imageView2 != null) {
                    i9 = R.id.text_content;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.text_content);
                    if (textView2 != null) {
                        return new ChristmasActivityPrizeDialogBinding((LinearLayout) view, imageView, textView, imageView2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ChristmasActivityPrizeDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ChristmasActivityPrizeDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.christmas_activity_prize_dialog, viewGroup, false);
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
