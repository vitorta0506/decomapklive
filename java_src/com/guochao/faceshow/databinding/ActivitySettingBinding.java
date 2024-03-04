package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivitySettingBinding implements ViewBinding {
    @NonNull
    public final RelativeLayout accountSafeLay;
    @NonNull
    public final TextView btnExit;
    @NonNull
    public final RelativeLayout cacheAll;
    @NonNull
    public final LinearLayout cacheIm;
    @NonNull
    public final TextView currVersionText;
    @NonNull
    public final TextView debugWindow;
    @NonNull
    public final TextView enterDebug;
    @NonNull
    public final LinearLayout facecastArea;
    @NonNull
    public final FrameLayout pipFL;
    @NonNull
    public final TextView pipTV;
    @NonNull
    public final TextView pushSeting;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView testGoogleSign;
    @NonNull
    public final TextView tvAccountSafe;
    @NonNull
    public final ImageView tvAccountSafeEmail;
    @NonNull
    public final TextView tvCacheSize;
    @NonNull
    public final TextView tvCacheSizeChat;
    @NonNull
    public final TextView tvClearCache;
    @NonNull
    public final TextView tvClearCacheChat;
    @NonNull
    public final TextView tvCopyrightStatement;
    @NonNull
    public final TextView tvMultiLanguage;
    @NonNull
    public final TextView tvNetworkAnalysis;
    @NonNull
    public final TextView tvPrivacyPolicy;
    @NonNull
    public final TextView tvPrivacySet;
    @NonNull
    public final TextView tvRegion;
    @NonNull
    public final TextView tvTermsOfUse;

    private ActivitySettingBinding(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3, @NonNull FrameLayout frameLayout, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull ImageView imageView, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull TextView textView14, @NonNull TextView textView15, @NonNull TextView textView16, @NonNull TextView textView17, @NonNull TextView textView18, @NonNull TextView textView19) {
        this.rootView = linearLayout;
        this.accountSafeLay = relativeLayout;
        this.btnExit = textView;
        this.cacheAll = relativeLayout2;
        this.cacheIm = linearLayout2;
        this.currVersionText = textView2;
        this.debugWindow = textView3;
        this.enterDebug = textView4;
        this.facecastArea = linearLayout3;
        this.pipFL = frameLayout;
        this.pipTV = textView5;
        this.pushSeting = textView6;
        this.testGoogleSign = textView7;
        this.tvAccountSafe = textView8;
        this.tvAccountSafeEmail = imageView;
        this.tvCacheSize = textView9;
        this.tvCacheSizeChat = textView10;
        this.tvClearCache = textView11;
        this.tvClearCacheChat = textView12;
        this.tvCopyrightStatement = textView13;
        this.tvMultiLanguage = textView14;
        this.tvNetworkAnalysis = textView15;
        this.tvPrivacyPolicy = textView16;
        this.tvPrivacySet = textView17;
        this.tvRegion = textView18;
        this.tvTermsOfUse = textView19;
    }

    @NonNull
    public static ActivitySettingBinding bind(@NonNull View view) {
        int i9 = R.id.account_safe_lay;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.account_safe_lay);
        if (relativeLayout != null) {
            i9 = R.id.btnExit;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnExit);
            if (textView != null) {
                i9 = R.id.cache_all;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.cache_all);
                if (relativeLayout2 != null) {
                    i9 = R.id.cache_im;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.cache_im);
                    if (linearLayout != null) {
                        i9 = R.id.curr_version_text;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.curr_version_text);
                        if (textView2 != null) {
                            i9 = R.id.debug_window;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.debug_window);
                            if (textView3 != null) {
                                i9 = R.id.enter_debug;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.enter_debug);
                                if (textView4 != null) {
                                    i9 = R.id.facecast_area;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.facecast_area);
                                    if (linearLayout2 != null) {
                                        i9 = R.id.pipFL;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.pipFL);
                                        if (frameLayout != null) {
                                            i9 = R.id.pipTV;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.pipTV);
                                            if (textView5 != null) {
                                                i9 = R.id.push_seting;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.push_seting);
                                                if (textView6 != null) {
                                                    i9 = R.id.test_google_sign;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.test_google_sign);
                                                    if (textView7 != null) {
                                                        i9 = R.id.tvAccountSafe;
                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tvAccountSafe);
                                                        if (textView8 != null) {
                                                            i9 = R.id.tvAccountSafeEmail;
                                                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.tvAccountSafeEmail);
                                                            if (imageView != null) {
                                                                i9 = R.id.tvCacheSize;
                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tvCacheSize);
                                                                if (textView9 != null) {
                                                                    i9 = R.id.tvCacheSize_chat;
                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tvCacheSize_chat);
                                                                    if (textView10 != null) {
                                                                        i9 = R.id.tvClearCache;
                                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tvClearCache);
                                                                        if (textView11 != null) {
                                                                            i9 = R.id.tvClearCache_chat;
                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tvClearCache_chat);
                                                                            if (textView12 != null) {
                                                                                i9 = R.id.tvCopyrightStatement;
                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.tvCopyrightStatement);
                                                                                if (textView13 != null) {
                                                                                    i9 = R.id.tvMultiLanguage;
                                                                                    TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.tvMultiLanguage);
                                                                                    if (textView14 != null) {
                                                                                        i9 = R.id.tvNetworkAnalysis;
                                                                                        TextView textView15 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNetworkAnalysis);
                                                                                        if (textView15 != null) {
                                                                                            i9 = R.id.tvPrivacyPolicy;
                                                                                            TextView textView16 = (TextView) ViewBindings.findChildViewById(view, R.id.tvPrivacyPolicy);
                                                                                            if (textView16 != null) {
                                                                                                i9 = R.id.tvPrivacySet;
                                                                                                TextView textView17 = (TextView) ViewBindings.findChildViewById(view, R.id.tvPrivacySet);
                                                                                                if (textView17 != null) {
                                                                                                    i9 = R.id.tvRegion;
                                                                                                    TextView textView18 = (TextView) ViewBindings.findChildViewById(view, R.id.tvRegion);
                                                                                                    if (textView18 != null) {
                                                                                                        i9 = R.id.tvTermsOfUse;
                                                                                                        TextView textView19 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTermsOfUse);
                                                                                                        if (textView19 != null) {
                                                                                                            return new ActivitySettingBinding((LinearLayout) view, relativeLayout, textView, relativeLayout2, linearLayout, textView2, textView3, textView4, linearLayout2, frameLayout, textView5, textView6, textView7, textView8, imageView, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19);
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
    public static ActivitySettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_setting, viewGroup, false);
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
