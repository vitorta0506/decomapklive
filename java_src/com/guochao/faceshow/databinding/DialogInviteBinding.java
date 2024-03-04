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
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.RatioFrameLayout;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes2.dex */
public final class DialogInviteBinding implements ViewBinding {
    @NonNull
    public final TextView btnConfirm;
    @NonNull
    public final ImageView closeIV;
    @NonNull
    public final TextView confirmTip;
    @NonNull
    public final LinearLayout layoutConfirm;
    @NonNull
    private final RatioFrameLayout rootView;
    @NonNull
    public final LinearLayout tabLay;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final RtlViewPager vpContent;

    private DialogInviteBinding(@NonNull RatioFrameLayout ratioFrameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TabLayout tabLayout, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = ratioFrameLayout;
        this.btnConfirm = textView;
        this.closeIV = imageView;
        this.confirmTip = textView2;
        this.layoutConfirm = linearLayout;
        this.tabLay = linearLayout2;
        this.tabs = tabLayout;
        this.vpContent = rtlViewPager;
    }

    @NonNull
    public static DialogInviteBinding bind(@NonNull View view) {
        int i9 = R.id.btn_confirm;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_confirm);
        if (textView != null) {
            i9 = R.id.closeIV;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.closeIV);
            if (imageView != null) {
                i9 = R.id.confirm_tip;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.confirm_tip);
                if (textView2 != null) {
                    i9 = R.id.layout_confirm;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_confirm);
                    if (linearLayout != null) {
                        i9 = R.id.tab_lay;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tab_lay);
                        if (linearLayout2 != null) {
                            i9 = R.id.tabs;
                            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                            if (tabLayout != null) {
                                i9 = R.id.vp_content;
                                RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.vp_content);
                                if (rtlViewPager != null) {
                                    return new DialogInviteBinding((RatioFrameLayout) view, textView, imageView, textView2, linearLayout, linearLayout2, tabLayout, rtlViewPager);
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
    public static DialogInviteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogInviteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_invite, viewGroup, false);
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
