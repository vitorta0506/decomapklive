package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityPrivacyDistanceBinding implements ViewBinding {
    @NonNull
    public final RadioButton rbClose;
    @NonNull
    public final RadioButton rbDefault;
    @NonNull
    public final RadioButton rbNotNeighborhood;
    @NonNull
    public final RadioButton rbOnlyToFriends;
    @NonNull
    public final RelativeLayout rlCloseLayout;
    @NonNull
    public final RelativeLayout rlDefaultLayout;
    @NonNull
    public final RelativeLayout rlNotNeighborhoodLayout;
    @NonNull
    public final RelativeLayout rlOnlyToFriendsLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvClose;
    @NonNull
    public final TextView tvCloseTip;
    @NonNull
    public final TextView tvDefault;
    @NonNull
    public final TextView tvDefaultTip;
    @NonNull
    public final TextView tvNotNeighborhood;
    @NonNull
    public final TextView tvNotNeighborhoodTip;
    @NonNull
    public final TextView tvOnlyToFriends;
    @NonNull
    public final TextView tvOnlyToFriendsTip;

    private ActivityPrivacyDistanceBinding(@NonNull LinearLayout linearLayout, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RadioButton radioButton3, @NonNull RadioButton radioButton4, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.rootView = linearLayout;
        this.rbClose = radioButton;
        this.rbDefault = radioButton2;
        this.rbNotNeighborhood = radioButton3;
        this.rbOnlyToFriends = radioButton4;
        this.rlCloseLayout = relativeLayout;
        this.rlDefaultLayout = relativeLayout2;
        this.rlNotNeighborhoodLayout = relativeLayout3;
        this.rlOnlyToFriendsLayout = relativeLayout4;
        this.tvClose = textView;
        this.tvCloseTip = textView2;
        this.tvDefault = textView3;
        this.tvDefaultTip = textView4;
        this.tvNotNeighborhood = textView5;
        this.tvNotNeighborhoodTip = textView6;
        this.tvOnlyToFriends = textView7;
        this.tvOnlyToFriendsTip = textView8;
    }

    @NonNull
    public static ActivityPrivacyDistanceBinding bind(@NonNull View view) {
        int i9 = R.id.rbClose;
        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.rbClose);
        if (radioButton != null) {
            i9 = R.id.rbDefault;
            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rbDefault);
            if (radioButton2 != null) {
                i9 = R.id.rbNotNeighborhood;
                RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rbNotNeighborhood);
                if (radioButton3 != null) {
                    i9 = R.id.rbOnlyToFriends;
                    RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rbOnlyToFriends);
                    if (radioButton4 != null) {
                        i9 = R.id.rlCloseLayout;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlCloseLayout);
                        if (relativeLayout != null) {
                            i9 = R.id.rlDefaultLayout;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlDefaultLayout);
                            if (relativeLayout2 != null) {
                                i9 = R.id.rlNotNeighborhoodLayout;
                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlNotNeighborhoodLayout);
                                if (relativeLayout3 != null) {
                                    i9 = R.id.rlOnlyToFriendsLayout;
                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlOnlyToFriendsLayout);
                                    if (relativeLayout4 != null) {
                                        i9 = R.id.tvClose;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvClose);
                                        if (textView != null) {
                                            i9 = R.id.tvCloseTip;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvCloseTip);
                                            if (textView2 != null) {
                                                i9 = R.id.tvDefault;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDefault);
                                                if (textView3 != null) {
                                                    i9 = R.id.tvDefaultTip;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDefaultTip);
                                                    if (textView4 != null) {
                                                        i9 = R.id.tvNotNeighborhood;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNotNeighborhood);
                                                        if (textView5 != null) {
                                                            i9 = R.id.tvNotNeighborhoodTip;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNotNeighborhoodTip);
                                                            if (textView6 != null) {
                                                                i9 = R.id.tvOnlyToFriends;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tvOnlyToFriends);
                                                                if (textView7 != null) {
                                                                    i9 = R.id.tvOnlyToFriendsTip;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tvOnlyToFriendsTip);
                                                                    if (textView8 != null) {
                                                                        return new ActivityPrivacyDistanceBinding((LinearLayout) view, radioButton, radioButton2, radioButton3, radioButton4, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
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
    public static ActivityPrivacyDistanceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPrivacyDistanceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_privacy_distance, viewGroup, false);
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
