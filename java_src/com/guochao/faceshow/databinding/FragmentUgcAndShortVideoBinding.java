package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentUgcAndShortVideoBinding implements ViewBinding {
    @NonNull
    public final TextView dynamic;
    @NonNull
    public final ImageView endIcon;
    @NonNull
    public final ImageView indicator1;
    @NonNull
    public final ImageView indicator2;
    @NonNull
    public final RadioButton rb1;
    @NonNull
    public final RadioButton rb2;
    @NonNull

    /* renamed from: rg  reason: collision with root package name */
    public final RadioGroup f25205rg;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView sanjiao;
    @NonNull
    public final LinearLayout title;
    @NonNull
    public final TextView video;
    @NonNull
    public final FrameLayout videoMenu;
    @NonNull
    public final LinearLayout viewLL;
    @NonNull
    public final ViewPager viewPager;

    private FragmentUgcAndShortVideoBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RadioGroup radioGroup, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout2, @NonNull ViewPager viewPager) {
        this.rootView = frameLayout;
        this.dynamic = textView;
        this.endIcon = imageView;
        this.indicator1 = imageView2;
        this.indicator2 = imageView3;
        this.rb1 = radioButton;
        this.rb2 = radioButton2;
        this.f25205rg = radioGroup;
        this.sanjiao = imageView4;
        this.title = linearLayout;
        this.video = textView2;
        this.videoMenu = frameLayout2;
        this.viewLL = linearLayout2;
        this.viewPager = viewPager;
    }

    @NonNull
    public static FragmentUgcAndShortVideoBinding bind(@NonNull View view) {
        int i9 = R.id.dynamic;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dynamic);
        if (textView != null) {
            i9 = R.id.end_icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.end_icon);
            if (imageView != null) {
                i9 = R.id.indicator_1;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.indicator_1);
                if (imageView2 != null) {
                    i9 = R.id.indicator_2;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.indicator_2);
                    if (imageView3 != null) {
                        i9 = R.id.rb1;
                        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb1);
                        if (radioButton != null) {
                            i9 = R.id.rb2;
                            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb2);
                            if (radioButton2 != null) {
                                i9 = R.id.f16048rg;
                                RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, R.id.f16048rg);
                                if (radioGroup != null) {
                                    i9 = R.id.sanjiao;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.sanjiao);
                                    if (imageView4 != null) {
                                        i9 = R.id.title;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.title);
                                        if (linearLayout != null) {
                                            i9 = R.id.video;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.video);
                                            if (textView2 != null) {
                                                i9 = R.id.video_menu;
                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.video_menu);
                                                if (frameLayout != null) {
                                                    i9 = R.id.viewLL;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.viewLL);
                                                    if (linearLayout2 != null) {
                                                        i9 = R.id.view_pager;
                                                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                                        if (viewPager != null) {
                                                            return new FragmentUgcAndShortVideoBinding((FrameLayout) view, textView, imageView, imageView2, imageView3, radioButton, radioButton2, radioGroup, imageView4, linearLayout, textView2, frameLayout, linearLayout2, viewPager);
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
    public static FragmentUgcAndShortVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentUgcAndShortVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_ugc_and_short_video, viewGroup, false);
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
