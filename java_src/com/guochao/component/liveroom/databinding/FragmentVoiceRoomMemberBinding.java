package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.faceshow.aaspring.views.GCSwipeRefreshView;
/* loaded from: classes3.dex */
public final class FragmentVoiceRoomMemberBinding implements ViewBinding {
    @NonNull
    public final FrameLayout bottomMenu;
    @NonNull
    public final LinearLayout buttonLL;
    @NonNull
    public final ImageView deleteIV;
    @NonNull
    public final ImageView ivEndIcon;
    @NonNull
    public final ImageView ivLeftBack;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    public final ImageView removeAdminIV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final GCSwipeRefreshView swipe;
    @NonNull
    public final LinearLayout titleLay;
    @NonNull
    public final ImageView tobeAdminIV;
    @NonNull
    public final TextView tvTitle;

    private FragmentVoiceRoomMemberBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull RecyclerView recyclerView, @NonNull ImageView imageView4, @NonNull GCSwipeRefreshView gCSwipeRefreshView, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView5, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.bottomMenu = frameLayout;
        this.buttonLL = linearLayout2;
        this.deleteIV = imageView;
        this.ivEndIcon = imageView2;
        this.ivLeftBack = imageView3;
        this.recyclerView = recyclerView;
        this.removeAdminIV = imageView4;
        this.swipe = gCSwipeRefreshView;
        this.titleLay = linearLayout3;
        this.tobeAdminIV = imageView5;
        this.tvTitle = textView;
    }

    @NonNull
    public static FragmentVoiceRoomMemberBinding bind(@NonNull View view) {
        int i9 = R$id.bottom_menu;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
        if (frameLayout != null) {
            i9 = R$id.buttonLL;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
            if (linearLayout != null) {
                i9 = R$id.deleteIV;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView != null) {
                    i9 = R$id.ivEndIcon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                    if (imageView2 != null) {
                        i9 = R$id.ivLeftBack;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                        if (imageView3 != null) {
                            i9 = R$id.recycler_view;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                            if (recyclerView != null) {
                                i9 = R$id.removeAdminIV;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                if (imageView4 != null) {
                                    i9 = R$id.swipe;
                                    GCSwipeRefreshView gCSwipeRefreshView = (GCSwipeRefreshView) ViewBindings.findChildViewById(view, i9);
                                    if (gCSwipeRefreshView != null) {
                                        i9 = R$id.titleLay;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                        if (linearLayout2 != null) {
                                            i9 = R$id.tobeAdminIV;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                            if (imageView5 != null) {
                                                i9 = R$id.tvTitle;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                                                if (textView != null) {
                                                    return new FragmentVoiceRoomMemberBinding((LinearLayout) view, frameLayout, linearLayout, imageView, imageView2, imageView3, recyclerView, imageView4, gCSwipeRefreshView, linearLayout2, imageView5, textView);
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
    public static FragmentVoiceRoomMemberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomMemberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_voice_room_member, viewGroup, false);
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
