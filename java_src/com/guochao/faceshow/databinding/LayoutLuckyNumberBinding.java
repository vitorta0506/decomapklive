package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.BorderImageView;
import com.guochao.faceshow.aaspring.views.LuckyNumberItemProgressView;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutLuckyNumberBinding implements ViewBinding {
    @NonNull
    public final BorderImageView avatar;
    @NonNull
    public final ImageView cardBg;
    @NonNull
    public final NormalCircleImageView flag;
    @NonNull
    public final ImageView gender;
    @NonNull
    public final LuckyNumberItemProgressView infoArea;
    @NonNull
    public final ImageView mask;
    @NonNull
    public final TextView nickname;
    @NonNull
    private final FrameLayout rootView;

    private LayoutLuckyNumberBinding(@NonNull FrameLayout frameLayout, @NonNull BorderImageView borderImageView, @NonNull ImageView imageView, @NonNull NormalCircleImageView normalCircleImageView, @NonNull ImageView imageView2, @NonNull LuckyNumberItemProgressView luckyNumberItemProgressView, @NonNull ImageView imageView3, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.avatar = borderImageView;
        this.cardBg = imageView;
        this.flag = normalCircleImageView;
        this.gender = imageView2;
        this.infoArea = luckyNumberItemProgressView;
        this.mask = imageView3;
        this.nickname = textView;
    }

    @NonNull
    public static LayoutLuckyNumberBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        BorderImageView borderImageView = (BorderImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (borderImageView != null) {
            i9 = R.id.card_bg;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.card_bg);
            if (imageView != null) {
                i9 = R.id.flag;
                NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.flag);
                if (normalCircleImageView != null) {
                    i9 = R.id.gender;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.gender);
                    if (imageView2 != null) {
                        i9 = R.id.info_area;
                        LuckyNumberItemProgressView luckyNumberItemProgressView = (LuckyNumberItemProgressView) ViewBindings.findChildViewById(view, R.id.info_area);
                        if (luckyNumberItemProgressView != null) {
                            i9 = R.id.mask;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.mask);
                            if (imageView3 != null) {
                                i9 = R.id.nickname;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
                                if (textView != null) {
                                    return new LayoutLuckyNumberBinding((FrameLayout) view, borderImageView, imageView, normalCircleImageView, imageView2, luckyNumberItemProgressView, imageView3, textView);
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
    public static LayoutLuckyNumberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLuckyNumberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_lucky_number, viewGroup, false);
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
