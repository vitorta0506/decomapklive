package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.LevelView;
/* loaded from: classes2.dex */
public final class LiveUserJoinShowTipsBinding implements ViewBinding {
    @NonNull
    public final ImageView background;
    @NonNull
    public final LevelView liveJoinUserLevel;
    @NonNull
    public final RecyclerView rcvJoinName;
    @NonNull
    private final RelativeLayout rootView;

    private LiveUserJoinShowTipsBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LevelView levelView, @NonNull RecyclerView recyclerView) {
        this.rootView = relativeLayout;
        this.background = imageView;
        this.liveJoinUserLevel = levelView;
        this.rcvJoinName = recyclerView;
    }

    @NonNull
    public static LiveUserJoinShowTipsBinding bind(@NonNull View view) {
        int i9 = R.id.background;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.background);
        if (imageView != null) {
            i9 = R.id.live_join_user_level;
            LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.live_join_user_level);
            if (levelView != null) {
                i9 = R.id.rcv_join_name;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcv_join_name);
                if (recyclerView != null) {
                    return new LiveUserJoinShowTipsBinding((RelativeLayout) view, imageView, levelView, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveUserJoinShowTipsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveUserJoinShowTipsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_user_join_show_tips, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
