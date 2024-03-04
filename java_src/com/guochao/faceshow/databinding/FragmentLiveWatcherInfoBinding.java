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
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class FragmentLiveWatcherInfoBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView background;
    @NonNull
    public final ImageView close;
    @NonNull
    public final TextView endTitle;
    @NonNull
    public final TextView fansAdded;
    @NonNull
    public final TextView fcoinAdded;
    @NonNull
    public final TextView focus;
    @NonNull
    public final CardView item1;
    @NonNull
    public final CardView item2;
    @NonNull
    public final CardView item3;
    @NonNull
    public final LinearLayout line2;
    @NonNull
    public final TextView liveTotalPeople;
    @NonNull
    public final FrameLayout mainContent;
    @NonNull
    public final LinearLayout recommendView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView userName;

    private FragmentLiveWatcherInfoBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull CardView cardView, @NonNull CardView cardView2, @NonNull CardView cardView3, @NonNull LinearLayout linearLayout, @NonNull TextView textView5, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView6) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.background = imageView;
        this.close = imageView2;
        this.endTitle = textView;
        this.fansAdded = textView2;
        this.fcoinAdded = textView3;
        this.focus = textView4;
        this.item1 = cardView;
        this.item2 = cardView2;
        this.item3 = cardView3;
        this.line2 = linearLayout;
        this.liveTotalPeople = textView5;
        this.mainContent = frameLayout2;
        this.recommendView = linearLayout2;
        this.userName = textView6;
    }

    @NonNull
    public static FragmentLiveWatcherInfoBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.background;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.background);
            if (imageView != null) {
                i9 = R.id.close;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
                if (imageView2 != null) {
                    i9 = R.id.end_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.end_title);
                    if (textView != null) {
                        i9 = R.id.fans_added;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.fans_added);
                        if (textView2 != null) {
                            i9 = R.id.fcoin_added;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.fcoin_added);
                            if (textView3 != null) {
                                i9 = R.id.focus;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.focus);
                                if (textView4 != null) {
                                    i9 = R.id.item1;
                                    CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.item1);
                                    if (cardView != null) {
                                        i9 = R.id.item2;
                                        CardView cardView2 = (CardView) ViewBindings.findChildViewById(view, R.id.item2);
                                        if (cardView2 != null) {
                                            i9 = R.id.item3;
                                            CardView cardView3 = (CardView) ViewBindings.findChildViewById(view, R.id.item3);
                                            if (cardView3 != null) {
                                                i9 = R.id.line_2;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.line_2);
                                                if (linearLayout != null) {
                                                    i9 = R.id.live_total_people;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.live_total_people);
                                                    if (textView5 != null) {
                                                        FrameLayout frameLayout = (FrameLayout) view;
                                                        i9 = R.id.recommend_view;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.recommend_view);
                                                        if (linearLayout2 != null) {
                                                            i9 = R.id.user_name;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                                            if (textView6 != null) {
                                                                return new FragmentLiveWatcherInfoBinding(frameLayout, headPortraitView, imageView, imageView2, textView, textView2, textView3, textView4, cardView, cardView2, cardView3, linearLayout, textView5, frameLayout, linearLayout2, textView6);
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
    public static FragmentLiveWatcherInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveWatcherInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_watcher_info, viewGroup, false);
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
