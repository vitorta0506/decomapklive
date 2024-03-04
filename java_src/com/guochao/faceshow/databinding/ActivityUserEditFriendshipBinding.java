package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityUserEditFriendshipBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bgLL;
    @NonNull
    public final TextView foreignerCountry;
    @NonNull
    public final TextView localCountry;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView save;
    @NonNull
    public final TextView tvHotChat;
    @NonNull
    public final TextView tvOldAge;
    @NonNull
    public final TextView tvSmallAge;
    @NonNull
    public final TextView tvSoulChat;

    private ActivityUserEditFriendshipBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.rootView = linearLayout;
        this.bgLL = linearLayout2;
        this.foreignerCountry = textView;
        this.localCountry = textView2;
        this.save = textView3;
        this.tvHotChat = textView4;
        this.tvOldAge = textView5;
        this.tvSmallAge = textView6;
        this.tvSoulChat = textView7;
    }

    @NonNull
    public static ActivityUserEditFriendshipBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.foreigner_country;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.foreigner_country);
        if (textView != null) {
            i9 = R.id.local_country;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.local_country);
            if (textView2 != null) {
                i9 = R.id.save;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.save);
                if (textView3 != null) {
                    i9 = R.id.tv_hot_chat;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hot_chat);
                    if (textView4 != null) {
                        i9 = R.id.tv_old_age;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_old_age);
                        if (textView5 != null) {
                            i9 = R.id.tv_small_age;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_small_age);
                            if (textView6 != null) {
                                i9 = R.id.tv_soul_chat;
                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_soul_chat);
                                if (textView7 != null) {
                                    return new ActivityUserEditFriendshipBinding(linearLayout, linearLayout, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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
    public static ActivityUserEditFriendshipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUserEditFriendshipBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_user_edit_friendship, viewGroup, false);
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
