package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class FragmentUserInfoAboutMeBinding implements ViewBinding {
    @NonNull
    public final DisTouchRecyclerView characterTags;
    @NonNull
    public final LinearLayout contentArea;
    @NonNull
    public final NormalCircleImageView firstAvatar;
    @NonNull
    private final NestedScrollView rootView;
    @NonNull
    public final NormalCircleImageView secondAvatar;
    @NonNull
    public final NormalCircleImageView thirdAvatar;
    @NonNull
    public final LinearLayout topFansLay;
    @NonNull
    public final TextView tvEmotional;
    @NonNull
    public final TextView tvFriendship;
    @NonNull
    public final TextView tvLanguage;
    @NonNull
    public final TextView tvPlaceNow;
    @NonNull
    public final TextView userBirthday;
    @NonNull
    public final TextView userGender;
    @NonNull
    public final TextView userName;
    @NonNull
    public final TextView userOccupation;
    @NonNull
    public final TextView userSignature;

    private FragmentUserInfoAboutMeBinding(@NonNull NestedScrollView nestedScrollView, @NonNull DisTouchRecyclerView disTouchRecyclerView, @NonNull LinearLayout linearLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull NormalCircleImageView normalCircleImageView2, @NonNull NormalCircleImageView normalCircleImageView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9) {
        this.rootView = nestedScrollView;
        this.characterTags = disTouchRecyclerView;
        this.contentArea = linearLayout;
        this.firstAvatar = normalCircleImageView;
        this.secondAvatar = normalCircleImageView2;
        this.thirdAvatar = normalCircleImageView3;
        this.topFansLay = linearLayout2;
        this.tvEmotional = textView;
        this.tvFriendship = textView2;
        this.tvLanguage = textView3;
        this.tvPlaceNow = textView4;
        this.userBirthday = textView5;
        this.userGender = textView6;
        this.userName = textView7;
        this.userOccupation = textView8;
        this.userSignature = textView9;
    }

    @NonNull
    public static FragmentUserInfoAboutMeBinding bind(@NonNull View view) {
        int i9 = R.id.character_tags;
        DisTouchRecyclerView disTouchRecyclerView = (DisTouchRecyclerView) ViewBindings.findChildViewById(view, R.id.character_tags);
        if (disTouchRecyclerView != null) {
            i9 = R.id.content_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_area);
            if (linearLayout != null) {
                i9 = R.id.first_avatar;
                NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.first_avatar);
                if (normalCircleImageView != null) {
                    i9 = R.id.second_avatar;
                    NormalCircleImageView normalCircleImageView2 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.second_avatar);
                    if (normalCircleImageView2 != null) {
                        i9 = R.id.third_avatar;
                        NormalCircleImageView normalCircleImageView3 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.third_avatar);
                        if (normalCircleImageView3 != null) {
                            i9 = R.id.top_fans_lay;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.top_fans_lay);
                            if (linearLayout2 != null) {
                                i9 = R.id.tv_emotional;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_emotional);
                                if (textView != null) {
                                    i9 = R.id.tv_friendship;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_friendship);
                                    if (textView2 != null) {
                                        i9 = R.id.tv_language;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_language);
                                        if (textView3 != null) {
                                            i9 = R.id.tv_place_now;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_place_now);
                                            if (textView4 != null) {
                                                i9 = R.id.user_birthday;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.user_birthday);
                                                if (textView5 != null) {
                                                    i9 = R.id.user_gender;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.user_gender);
                                                    if (textView6 != null) {
                                                        i9 = R.id.user_name;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                                        if (textView7 != null) {
                                                            i9 = R.id.user_occupation;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.user_occupation);
                                                            if (textView8 != null) {
                                                                i9 = R.id.user_signature;
                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.user_signature);
                                                                if (textView9 != null) {
                                                                    return new FragmentUserInfoAboutMeBinding((NestedScrollView) view, disTouchRecyclerView, linearLayout, normalCircleImageView, normalCircleImageView2, normalCircleImageView3, linearLayout2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
    public static FragmentUserInfoAboutMeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentUserInfoAboutMeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_user_info_about_me, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public NestedScrollView getRoot() {
        return this.rootView;
    }
}
