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
import com.guochao.faceshow.aaspring.views.ExpandableImageTextView;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
import com.guochao.faceshow.aaspring.views.TabLayout;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityVideoTypesNewBinding implements ViewBinding {
    @NonNull
    public final NewCircleImageView avatar;
    @NonNull
    public final ExpandableImageTextView content;
    @NonNull
    public final TextView creater;
    @NonNull
    public final TextView join;
    @NonNull
    public final LinearLayout mainLayout;
    @NonNull
    private final View rootView;
    @NonNull
    public final ImageView showmore;
    @NonNull
    public final TabLayout tabs;
    @NonNull
    public final TextView userCount;
    @NonNull
    public final RtlViewPager viewpager;

    private ActivityVideoTypesNewBinding(@NonNull View view, @NonNull NewCircleImageView newCircleImageView, @NonNull ExpandableImageTextView expandableImageTextView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TabLayout tabLayout, @NonNull TextView textView3, @NonNull RtlViewPager rtlViewPager) {
        this.rootView = view;
        this.avatar = newCircleImageView;
        this.content = expandableImageTextView;
        this.creater = textView;
        this.join = textView2;
        this.mainLayout = linearLayout;
        this.showmore = imageView;
        this.tabs = tabLayout;
        this.userCount = textView3;
        this.viewpager = rtlViewPager;
    }

    @NonNull
    public static ActivityVideoTypesNewBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NewCircleImageView newCircleImageView = (NewCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (newCircleImageView != null) {
            i9 = R.id.content;
            ExpandableImageTextView expandableImageTextView = (ExpandableImageTextView) ViewBindings.findChildViewById(view, R.id.content);
            if (expandableImageTextView != null) {
                i9 = R.id.creater;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.creater);
                if (textView != null) {
                    i9 = R.id.join;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.join);
                    if (textView2 != null) {
                        i9 = R.id.main_layout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main_layout);
                        if (linearLayout != null) {
                            i9 = R.id.showmore;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.showmore);
                            if (imageView != null) {
                                i9 = R.id.tabs;
                                TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabs);
                                if (tabLayout != null) {
                                    i9 = R.id.user_count;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_count);
                                    if (textView3 != null) {
                                        i9 = R.id.viewpager;
                                        RtlViewPager rtlViewPager = (RtlViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
                                        if (rtlViewPager != null) {
                                            return new ActivityVideoTypesNewBinding(view, newCircleImageView, expandableImageTextView, textView, textView2, linearLayout, imageView, tabLayout, textView3, rtlViewPager);
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
    public static ActivityVideoTypesNewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.activity_video_types_new, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
