package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityVideoTypesBinding implements ViewBinding {
    @NonNull
    public final ImageView albumCover;
    @NonNull
    public final TextView creater;
    @NonNull
    public final TextView join;
    @NonNull
    public final LinearLayout mainLayout;
    @NonNull
    public final ImageView playIcon;
    @NonNull
    private final View rootView;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final LinearLayout useMusic;
    @NonNull
    public final TextView userCount;
    @NonNull
    public final RtlViewPager viewpager;

    private ActivityVideoTypesBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView2, @NonNull TabLayout tabLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = view;
        this.albumCover = imageView;
        this.creater = textView;
        this.join = textView2;
        this.mainLayout = linearLayout;
        this.playIcon = imageView2;
        this.tabs = tabLayout;
        this.useMusic = linearLayout2;
        this.userCount = textView3;
        this.viewpager = rtlViewPager;
    }

    @NonNull
    public static ActivityVideoTypesBinding bind(@NonNull View view) {
        int i9 = R.id.album_cover;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.album_cover);
        if (imageView != null) {
            i9 = R.id.creater;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.creater);
            if (textView != null) {
                i9 = R.id.join;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.join);
                if (textView2 != null) {
                    i9 = R.id.main_layout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main_layout);
                    if (linearLayout != null) {
                        i9 = R.id.play_icon;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.play_icon);
                        if (imageView2 != null) {
                            i9 = R.id.tabs;
                            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                            if (tabLayout != null) {
                                i9 = R.id.useMusic;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.useMusic);
                                if (linearLayout2 != null) {
                                    i9 = R.id.user_count;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_count);
                                    if (textView3 != null) {
                                        i9 = R.id.viewpager;
                                        RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
                                        if (rtlViewPager != null) {
                                            return new ActivityVideoTypesBinding(view, imageView, textView, textView2, linearLayout, imageView2, tabLayout, linearLayout2, textView3, rtlViewPager);
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
    public static ActivityVideoTypesBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.activity_video_types, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
