package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemLiveBroadcastBinding implements ViewBinding {
    @NonNull
    public final TextView earnings;
    @NonNull
    public final TextView fansAdd;
    @NonNull
    public final CardView imgTopics;
    @NonNull
    public final ImageView imgs;
    @NonNull
    public final LinearLayoutCompat layInfor;
    @NonNull
    public final TextView liveDuration;
    @NonNull
    public final TextView liveTime;
    @NonNull
    public final TextView liveType;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView totalCount;

    private ItemLiveBroadcastBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull CardView cardView, @NonNull ImageView imageView, @NonNull LinearLayoutCompat linearLayoutCompat, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = constraintLayout;
        this.earnings = textView;
        this.fansAdd = textView2;
        this.imgTopics = cardView;
        this.imgs = imageView;
        this.layInfor = linearLayoutCompat;
        this.liveDuration = textView3;
        this.liveTime = textView4;
        this.liveType = textView5;
        this.totalCount = textView6;
    }

    @NonNull
    public static ItemLiveBroadcastBinding bind(@NonNull View view) {
        int i9 = R.id.earnings;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.earnings);
        if (textView != null) {
            i9 = R.id.fansAdd;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.fansAdd);
            if (textView2 != null) {
                i9 = R.id.img_topics;
                CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.img_topics);
                if (cardView != null) {
                    i9 = R.id.imgs;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imgs);
                    if (imageView != null) {
                        i9 = R.id.lay_infor;
                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, R.id.lay_infor);
                        if (linearLayoutCompat != null) {
                            i9 = R.id.live_duration;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.live_duration);
                            if (textView3 != null) {
                                i9 = R.id.live_time;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.live_time);
                                if (textView4 != null) {
                                    i9 = R.id.live_type;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.live_type);
                                    if (textView5 != null) {
                                        i9 = R.id.totalCount;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.totalCount);
                                        if (textView6 != null) {
                                            return new ItemLiveBroadcastBinding((ConstraintLayout) view, textView, textView2, cardView, imageView, linearLayoutCompat, textView3, textView4, textView5, textView6);
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
    public static ItemLiveBroadcastBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemLiveBroadcastBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_live_broadcast, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
