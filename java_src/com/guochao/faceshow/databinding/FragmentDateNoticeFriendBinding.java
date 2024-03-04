package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentDateNoticeFriendBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView skip;
    @NonNull
    public final TextView tellEverybody;

    private FragmentDateNoticeFriendBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.skip = textView;
        this.tellEverybody = textView2;
    }

    @NonNull
    public static FragmentDateNoticeFriendBinding bind(@NonNull View view) {
        int i9 = R.id.skip;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.skip);
        if (textView != null) {
            i9 = R.id.tell_everybody;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tell_everybody);
            if (textView2 != null) {
                return new FragmentDateNoticeFriendBinding((FrameLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentDateNoticeFriendBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentDateNoticeFriendBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_date_notice_friend, viewGroup, false);
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
