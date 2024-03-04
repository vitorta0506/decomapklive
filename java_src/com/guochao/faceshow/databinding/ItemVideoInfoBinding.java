package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatioFrameLayout;
/* loaded from: classes2.dex */
public final class ItemVideoInfoBinding implements ViewBinding {
    @NonNull
    public final TextView hintCount;
    @NonNull
    public final CardView item;
    @NonNull
    public final ImageView liftIv;
    @NonNull
    private final RatioFrameLayout rootView;
    @NonNull
    public final TextView sortTv;
    @NonNull
    public final TextView videoOfficialFlag;

    private ItemVideoInfoBinding(@NonNull RatioFrameLayout ratioFrameLayout, @NonNull TextView textView, @NonNull CardView cardView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = ratioFrameLayout;
        this.hintCount = textView;
        this.item = cardView;
        this.liftIv = imageView;
        this.sortTv = textView2;
        this.videoOfficialFlag = textView3;
    }

    @NonNull
    public static ItemVideoInfoBinding bind(@NonNull View view) {
        int i9 = R.id.hint_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.hint_count);
        if (textView != null) {
            i9 = R.id.item;
            CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.item);
            if (cardView != null) {
                i9 = R.id.lift_iv;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lift_iv);
                if (imageView != null) {
                    i9 = R.id.sort_tv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.sort_tv);
                    if (textView2 != null) {
                        i9 = R.id.video_official_flag;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.video_official_flag);
                        if (textView3 != null) {
                            return new ItemVideoInfoBinding((RatioFrameLayout) view, textView, cardView, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemVideoInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemVideoInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_video_info, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RatioFrameLayout getRoot() {
        return this.rootView;
    }
}
