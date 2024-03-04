package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class FragmentLiveBroadcasterInfoBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final TextView backButton;
    @NonNull
    public final ImageView background;
    @NonNull
    public final ImageView close;
    @NonNull
    public final TextView fansAdded;
    @NonNull
    public final TextView fcoinAdded;
    @NonNull
    public final LinearLayout line1;
    @NonNull
    public final LinearLayout line2;
    @NonNull
    public final TextView liveDuration;
    @NonNull
    public final TextView liveNumbers;
    @NonNull
    public final TextView liveTotalPeople;
    @NonNull
    public final FrameLayout mainContent;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView title;
    @NonNull
    public final TextView userName;

    private FragmentLiveBroadcasterInfoBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull FrameLayout frameLayout2, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.backButton = textView;
        this.background = imageView;
        this.close = imageView2;
        this.fansAdded = textView2;
        this.fcoinAdded = textView3;
        this.line1 = linearLayout;
        this.line2 = linearLayout2;
        this.liveDuration = textView4;
        this.liveNumbers = textView5;
        this.liveTotalPeople = textView6;
        this.mainContent = frameLayout2;
        this.title = textView7;
        this.userName = textView8;
    }

    @NonNull
    public static FragmentLiveBroadcasterInfoBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.back_button;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.back_button);
            if (textView != null) {
                i9 = R.id.background;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.background);
                if (imageView != null) {
                    i9 = R.id.close;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
                    if (imageView2 != null) {
                        i9 = R.id.fans_added;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.fans_added);
                        if (textView2 != null) {
                            i9 = R.id.fcoin_added;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.fcoin_added);
                            if (textView3 != null) {
                                i9 = R.id.line_1;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.line_1);
                                if (linearLayout != null) {
                                    i9 = R.id.line_2;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.line_2);
                                    if (linearLayout2 != null) {
                                        i9 = R.id.live_duration;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.live_duration);
                                        if (textView4 != null) {
                                            i9 = R.id.live_numbers;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.live_numbers);
                                            if (textView5 != null) {
                                                i9 = R.id.live_total_people;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.live_total_people);
                                                if (textView6 != null) {
                                                    FrameLayout frameLayout = (FrameLayout) view;
                                                    i9 = R.id.title;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                    if (textView7 != null) {
                                                        i9 = R.id.user_name;
                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                                        if (textView8 != null) {
                                                            return new FragmentLiveBroadcasterInfoBinding(frameLayout, headPortraitView, textView, imageView, imageView2, textView2, textView3, linearLayout, linearLayout2, textView4, textView5, textView6, frameLayout, textView7, textView8);
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
    public static FragmentLiveBroadcasterInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveBroadcasterInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_broadcaster_info, viewGroup, false);
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
