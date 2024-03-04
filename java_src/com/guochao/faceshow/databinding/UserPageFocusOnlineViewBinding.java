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
public final class UserPageFocusOnlineViewBinding implements ViewBinding {
    @NonNull
    public final TextView focusPlusText;
    @NonNull
    public final TextView focusText;
    @NonNull
    public final LinearLayout llUserLike;
    @NonNull
    public final TextView onlineText;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvUserLike;
    @NonNull
    public final LinearLayout userPageFocus;
    @NonNull
    public final LinearLayout userPageOnline;

    private UserPageFocusOnlineViewBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4) {
        this.rootView = linearLayout;
        this.focusPlusText = textView;
        this.focusText = textView2;
        this.llUserLike = linearLayout2;
        this.onlineText = textView3;
        this.tvUserLike = textView4;
        this.userPageFocus = linearLayout3;
        this.userPageOnline = linearLayout4;
    }

    @NonNull
    public static UserPageFocusOnlineViewBinding bind(@NonNull View view) {
        int i9 = R.id.focus_plus_text;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.focus_plus_text);
        if (textView != null) {
            i9 = R.id.focus_text;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.focus_text);
            if (textView2 != null) {
                i9 = R.id.ll_user_like;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_user_like);
                if (linearLayout != null) {
                    i9 = R.id.online_text;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.online_text);
                    if (textView3 != null) {
                        i9 = R.id.tv_user_like;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_like);
                        if (textView4 != null) {
                            i9 = R.id.user_page_focus;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_page_focus);
                            if (linearLayout2 != null) {
                                i9 = R.id.user_page_online;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_page_online);
                                if (linearLayout3 != null) {
                                    return new UserPageFocusOnlineViewBinding((LinearLayout) view, textView, textView2, linearLayout, textView3, textView4, linearLayout2, linearLayout3);
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
    public static UserPageFocusOnlineViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static UserPageFocusOnlineViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_page_focus_online_view, viewGroup, false);
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
