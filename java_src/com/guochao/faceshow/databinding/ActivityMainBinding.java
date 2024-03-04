package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityMainBinding implements ViewBinding {
    @NonNull
    public final TextView activityUnreadNum;
    @NonNull
    public final LottieAnimationView lottiImage1;
    @NonNull
    public final LottieAnimationView lottiImage2;
    @NonNull
    public final LottieAnimationView lottiImage3;
    @NonNull
    public final LottieAnimationView lottiImage4;
    @NonNull
    public final FrameLayout mainTabs;
    @NonNull
    private final View rootView;
    @NonNull
    public final ImageView tabIcon1;
    @NonNull
    public final ImageView tabIcon2;
    @NonNull
    public final ImageView tabIcon3;
    @NonNull
    public final ImageView tabIcon4;
    @NonNull
    public final ImageView tabIconBg;
    @NonNull
    public final FrameLayout tabcontent;
    @NonNull
    public final LinearLayout tabs;
    @NonNull
    public final ViewStub userGuide;

    private ActivityMainBinding(@NonNull View view, @NonNull TextView textView, @NonNull LottieAnimationView lottieAnimationView, @NonNull LottieAnimationView lottieAnimationView2, @NonNull LottieAnimationView lottieAnimationView3, @NonNull LottieAnimationView lottieAnimationView4, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout, @NonNull ViewStub viewStub) {
        this.rootView = view;
        this.activityUnreadNum = textView;
        this.lottiImage1 = lottieAnimationView;
        this.lottiImage2 = lottieAnimationView2;
        this.lottiImage3 = lottieAnimationView3;
        this.lottiImage4 = lottieAnimationView4;
        this.mainTabs = frameLayout;
        this.tabIcon1 = imageView;
        this.tabIcon2 = imageView2;
        this.tabIcon3 = imageView3;
        this.tabIcon4 = imageView4;
        this.tabIconBg = imageView5;
        this.tabcontent = frameLayout2;
        this.tabs = linearLayout;
        this.userGuide = viewStub;
    }

    @NonNull
    public static ActivityMainBinding bind(@NonNull View view) {
        int i9 = R.id.activity_unread_num;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.activity_unread_num);
        if (textView != null) {
            i9 = R.id.lotti_image_1;
            LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.lotti_image_1);
            if (lottieAnimationView != null) {
                i9 = R.id.lotti_image_2;
                LottieAnimationView lottieAnimationView2 = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.lotti_image_2);
                if (lottieAnimationView2 != null) {
                    i9 = R.id.lotti_image_3;
                    LottieAnimationView lottieAnimationView3 = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.lotti_image_3);
                    if (lottieAnimationView3 != null) {
                        i9 = R.id.lotti_image_4;
                        LottieAnimationView lottieAnimationView4 = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.lotti_image_4);
                        if (lottieAnimationView4 != null) {
                            i9 = R.id.main_tabs;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.main_tabs);
                            if (frameLayout != null) {
                                i9 = R.id.tab_icon1;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.tab_icon1);
                                if (imageView != null) {
                                    i9 = R.id.tab_icon2;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.tab_icon2);
                                    if (imageView2 != null) {
                                        i9 = R.id.tab_icon3;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.tab_icon3);
                                        if (imageView3 != null) {
                                            i9 = R.id.tab_icon4;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.tab_icon4);
                                            if (imageView4 != null) {
                                                i9 = R.id.tab_icon_bg;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.tab_icon_bg);
                                                if (imageView5 != null) {
                                                    i9 = 16908305;
                                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, 16908305);
                                                    if (frameLayout2 != null) {
                                                        i9 = R.id.tabs;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                                                        if (linearLayout != null) {
                                                            i9 = R.id.user_guide;
                                                            ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, R.id.user_guide);
                                                            if (viewStub != null) {
                                                                return new ActivityMainBinding(view, textView, lottieAnimationView, lottieAnimationView2, lottieAnimationView3, lottieAnimationView4, frameLayout, imageView, imageView2, imageView3, imageView4, imageView5, frameLayout2, linearLayout, viewStub);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityMainBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.activity_main, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
