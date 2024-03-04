package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.lib_core.databinding.GcBaseTitleBarTransparentBinding;
/* loaded from: classes3.dex */
public final class FragmentVoiceRoomSettingBinding implements ViewBinding {
    @NonNull
    public final NestedScrollView appbar;
    @NonNull
    public final RecyclerView backgroundRv;
    @NonNull
    public final FrameLayout contentFL;
    @NonNull
    public final ImageView cover;
    @NonNull
    public final FrameLayout coverArea;
    @NonNull
    public final EditText info;
    @NonNull
    public final LinearLayout layout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView save;
    @NonNull
    public final RecyclerView tagRv;
    @NonNull
    public final GcBaseTitleBarTransparentBinding title;

    private FragmentVoiceRoomSettingBinding(@NonNull LinearLayout linearLayout, @NonNull NestedScrollView nestedScrollView, @NonNull RecyclerView recyclerView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull EditText editText, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull RecyclerView recyclerView2, @NonNull GcBaseTitleBarTransparentBinding gcBaseTitleBarTransparentBinding) {
        this.rootView = linearLayout;
        this.appbar = nestedScrollView;
        this.backgroundRv = recyclerView;
        this.contentFL = frameLayout;
        this.cover = imageView;
        this.coverArea = frameLayout2;
        this.info = editText;
        this.layout = linearLayout2;
        this.save = textView;
        this.tagRv = recyclerView2;
        this.title = gcBaseTitleBarTransparentBinding;
    }

    @NonNull
    public static FragmentVoiceRoomSettingBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.appbar;
        NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i9);
        if (nestedScrollView != null) {
            i9 = R$id.background_rv;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
            if (recyclerView != null) {
                i9 = R$id.contentFL;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                if (frameLayout != null) {
                    i9 = R$id.cover;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
                    if (imageView != null) {
                        i9 = R$id.cover_area;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                        if (frameLayout2 != null) {
                            i9 = R$id.info;
                            EditText editText = (EditText) ViewBindings.findChildViewById(view, i9);
                            if (editText != null) {
                                i9 = R$id.layout;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                if (linearLayout != null) {
                                    i9 = R$id.save;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                                    if (textView != null) {
                                        i9 = R$id.tag_rv;
                                        RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                                        if (recyclerView2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.title))) != null) {
                                            return new FragmentVoiceRoomSettingBinding((LinearLayout) view, nestedScrollView, recyclerView, frameLayout, imageView, frameLayout2, editText, linearLayout, textView, recyclerView2, GcBaseTitleBarTransparentBinding.bind(findChildViewById));
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
    public static FragmentVoiceRoomSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_voice_room_setting, viewGroup, false);
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
