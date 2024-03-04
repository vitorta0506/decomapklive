package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TabLayout;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityTopicHomeBinding implements ViewBinding {
    @NonNull
    public final AppBarLayout appbar;
    @NonNull
    public final TextView author;
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final View bottomDivider;
    @NonNull
    public final LinearLayout btnArea;
    @NonNull
    public final ImageView close;
    @NonNull
    public final FrameLayout content;
    @NonNull
    public final RelativeLayout contentArea;
    @NonNull
    public final TextView count;
    @NonNull
    public final ImageView mask;
    @NonNull
    public final LinearLayout notExist;
    @NonNull
    public final ImageView publish;
    @NonNull
    public final ImageView publishIV;
    @NonNull
    public final ImageView publishPicture;
    @NonNull
    public final ImageView publishVideo;
    @NonNull
    public final CoordinatorLayout realContent;
    @NonNull
    private final View rootView;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final TabLayout tabsSticky;
    @NonNull
    public final FrameLayout tabsStickyArea;
    @NonNull
    public final ImageView topBackground;
    @NonNull
    public final Space topSpace;
    @NonNull
    public final TextView topicName;
    @NonNull
    public final RtlViewPager viewPager;

    private ActivityTopicHomeBinding(@NonNull View view, @NonNull AppBarLayout appBarLayout, @NonNull TextView textView, @NonNull HeadPortraitView headPortraitView, @NonNull View view2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull CoordinatorLayout coordinatorLayout, @NonNull TabLayout tabLayout, @NonNull TabLayout tabLayout2, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView7, @NonNull Space space, @NonNull TextView textView3, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = view;
        this.appbar = appBarLayout;
        this.author = textView;
        this.avatarView = headPortraitView;
        this.bottomDivider = view2;
        this.btnArea = linearLayout;
        this.close = imageView;
        this.content = frameLayout;
        this.contentArea = relativeLayout;
        this.count = textView2;
        this.mask = imageView2;
        this.notExist = linearLayout2;
        this.publish = imageView3;
        this.publishIV = imageView4;
        this.publishPicture = imageView5;
        this.publishVideo = imageView6;
        this.realContent = coordinatorLayout;
        this.tabs = tabLayout;
        this.tabsSticky = tabLayout2;
        this.tabsStickyArea = frameLayout2;
        this.topBackground = imageView7;
        this.topSpace = space;
        this.topicName = textView3;
        this.viewPager = rtlViewPager;
    }

    @NonNull
    public static ActivityTopicHomeBinding bind(@NonNull View view) {
        int i9 = R.id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (appBarLayout != null) {
            i9 = R.id.author;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.author);
            if (textView != null) {
                i9 = R.id.avatar_view;
                HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
                if (headPortraitView != null) {
                    i9 = R.id.bottom_divider;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.bottom_divider);
                    if (findChildViewById != null) {
                        i9 = R.id.btn_area;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.btn_area);
                        if (linearLayout != null) {
                            i9 = R.id.close;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
                            if (imageView != null) {
                                i9 = R.id.content;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.content);
                                if (frameLayout != null) {
                                    i9 = R.id.content_area;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.content_area);
                                    if (relativeLayout != null) {
                                        i9 = R.id.count;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.count);
                                        if (textView2 != null) {
                                            i9 = R.id.mask;
                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.mask);
                                            if (imageView2 != null) {
                                                i9 = R.id.not_exist;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.not_exist);
                                                if (linearLayout2 != null) {
                                                    i9 = R.id.publish;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.publish);
                                                    if (imageView3 != null) {
                                                        i9 = R.id.publishIV;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.publishIV);
                                                        if (imageView4 != null) {
                                                            i9 = R.id.publish_picture;
                                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.publish_picture);
                                                            if (imageView5 != null) {
                                                                i9 = R.id.publish_video;
                                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.publish_video);
                                                                if (imageView6 != null) {
                                                                    i9 = R.id.real_content;
                                                                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.real_content);
                                                                    if (coordinatorLayout != null) {
                                                                        i9 = R.id.tabs;
                                                                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                                                                        if (tabLayout != null) {
                                                                            i9 = R.id.tabs_sticky;
                                                                            TabLayout tabLayout2 = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs_sticky);
                                                                            if (tabLayout2 != null) {
                                                                                i9 = R.id.tabs_sticky_area;
                                                                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.tabs_sticky_area);
                                                                                if (frameLayout2 != null) {
                                                                                    i9 = R.id.top_background;
                                                                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.top_background);
                                                                                    if (imageView7 != null) {
                                                                                        i9 = R.id.top_space;
                                                                                        Space space = (Space) ViewBindings.findChildViewById(view, R.id.top_space);
                                                                                        if (space != null) {
                                                                                            i9 = R.id.topic_name;
                                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.topic_name);
                                                                                            if (textView3 != null) {
                                                                                                i9 = R.id.view_pager;
                                                                                                RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                                                                                if (rtlViewPager != null) {
                                                                                                    return new ActivityTopicHomeBinding(view, appBarLayout, textView, headPortraitView, findChildViewById, linearLayout, imageView, frameLayout, relativeLayout, textView2, imageView2, linearLayout2, imageView3, imageView4, imageView5, imageView6, coordinatorLayout, tabLayout, tabLayout2, frameLayout2, imageView7, space, textView3, rtlViewPager);
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
    public static ActivityTopicHomeBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.activity_topic_home, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
