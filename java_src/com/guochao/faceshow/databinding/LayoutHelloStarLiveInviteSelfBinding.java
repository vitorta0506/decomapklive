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
public final class LayoutHelloStarLiveInviteSelfBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvContent;
    @NonNull
    public final TextView tvInToLive;

    private LayoutHelloStarLiveInviteSelfBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.tvContent = textView;
        this.tvInToLive = textView2;
    }

    @NonNull
    public static LayoutHelloStarLiveInviteSelfBinding bind(@NonNull View view) {
        int i9 = R.id.tv_content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
        if (textView != null) {
            i9 = R.id.tv_in_to_live;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_in_to_live);
            if (textView2 != null) {
                return new LayoutHelloStarLiveInviteSelfBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutHelloStarLiveInviteSelfBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutHelloStarLiveInviteSelfBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_hello_star_live_invite_self, viewGroup, false);
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
