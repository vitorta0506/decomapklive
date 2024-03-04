package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class FragmentLotteryBinding implements ViewBinding {
    @NonNull
    public final FrameLayout content;
    @NonNull
    public final LayoutLotterGridBinding grid;
    @NonNull
    public final LayoutLotteryResultBinding result;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SVGAImageView svga;

    private FragmentLotteryBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull LayoutLotterGridBinding layoutLotterGridBinding, @NonNull LayoutLotteryResultBinding layoutLotteryResultBinding, @NonNull SVGAImageView sVGAImageView) {
        this.rootView = frameLayout;
        this.content = frameLayout2;
        this.grid = layoutLotterGridBinding;
        this.result = layoutLotteryResultBinding;
        this.svga = sVGAImageView;
    }

    @NonNull
    public static FragmentLotteryBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.grid;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.grid);
        if (findChildViewById != null) {
            LayoutLotterGridBinding bind = LayoutLotterGridBinding.bind(findChildViewById);
            i9 = R.id.result;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.result);
            if (findChildViewById2 != null) {
                LayoutLotteryResultBinding bind2 = LayoutLotteryResultBinding.bind(findChildViewById2);
                i9 = R.id.svga;
                SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.svga);
                if (sVGAImageView != null) {
                    return new FragmentLotteryBinding(frameLayout, frameLayout, bind, bind2, sVGAImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLotteryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLotteryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_lottery, viewGroup, false);
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
