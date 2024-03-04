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
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView;
/* loaded from: classes2.dex */
public final class HeaderLiveDiscoveryBinding implements ViewBinding {
    @NonNull
    public final DisTouchRecyclerView discoveryContent;
    @NonNull
    public final TextView discoveryMore;
    @NonNull
    private final LinearLayout rootView;

    private HeaderLiveDiscoveryBinding(@NonNull LinearLayout linearLayout, @NonNull DisTouchRecyclerView disTouchRecyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.discoveryContent = disTouchRecyclerView;
        this.discoveryMore = textView;
    }

    @NonNull
    public static HeaderLiveDiscoveryBinding bind(@NonNull View view) {
        int i9 = R.id.discovery_content;
        DisTouchRecyclerView disTouchRecyclerView = (DisTouchRecyclerView) ViewBindings.findChildViewById(view, R.id.discovery_content);
        if (disTouchRecyclerView != null) {
            i9 = R.id.discovery_more;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.discovery_more);
            if (textView != null) {
                return new HeaderLiveDiscoveryBinding((LinearLayout) view, disTouchRecyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static HeaderLiveDiscoveryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static HeaderLiveDiscoveryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.header_live_discovery, viewGroup, false);
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
