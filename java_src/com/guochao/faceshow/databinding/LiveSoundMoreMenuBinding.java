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
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.rd.PageIndicatorView;
/* loaded from: classes2.dex */
public final class LiveSoundMoreMenuBinding implements ViewBinding {
    @NonNull
    public final TextView modelTitle;
    @NonNull
    public final PageIndicatorView pageIndicatorView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ViewPager viewPager;

    private LiveSoundMoreMenuBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull PageIndicatorView pageIndicatorView, @NonNull ViewPager viewPager) {
        this.rootView = linearLayout;
        this.modelTitle = textView;
        this.pageIndicatorView = pageIndicatorView;
        this.viewPager = viewPager;
    }

    @NonNull
    public static LiveSoundMoreMenuBinding bind(@NonNull View view) {
        int i9 = R.id.model_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.model_title);
        if (textView != null) {
            i9 = R.id.pageIndicatorView;
            PageIndicatorView pageIndicatorView = (PageIndicatorView) ViewBindings.findChildViewById(view, R.id.pageIndicatorView);
            if (pageIndicatorView != null) {
                i9 = R.id.view_pager;
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                if (viewPager != null) {
                    return new LiveSoundMoreMenuBinding((LinearLayout) view, textView, pageIndicatorView, viewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveSoundMoreMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveSoundMoreMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_sound_more_menu, viewGroup, false);
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
