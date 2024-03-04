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
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.view.AlwaysCenterLayout;
/* loaded from: classes2.dex */
public final class LayoutLaunchBottomBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bottomEndLay;
    @NonNull
    public final LinearLayout bottomMiddleLay;
    @NonNull
    public final LinearLayout bottomStartLay;
    @NonNull
    public final AlwaysCenterLayout bottomSwitchLay;
    @NonNull
    public final View indicatorBottomEnd;
    @NonNull
    public final View indicatorBottomMiddle;
    @NonNull
    public final View indicatorBottomStart;
    @NonNull
    public final TextView liveBottomEnd;
    @NonNull
    public final TextView liveBottomMiddle;
    @NonNull
    public final TextView liveBottomStart;
    @NonNull
    private final AlwaysCenterLayout rootView;

    private LayoutLaunchBottomBinding(@NonNull AlwaysCenterLayout alwaysCenterLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull AlwaysCenterLayout alwaysCenterLayout2, @NonNull View view, @NonNull View view2, @NonNull View view3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = alwaysCenterLayout;
        this.bottomEndLay = linearLayout;
        this.bottomMiddleLay = linearLayout2;
        this.bottomStartLay = linearLayout3;
        this.bottomSwitchLay = alwaysCenterLayout2;
        this.indicatorBottomEnd = view;
        this.indicatorBottomMiddle = view2;
        this.indicatorBottomStart = view3;
        this.liveBottomEnd = textView;
        this.liveBottomMiddle = textView2;
        this.liveBottomStart = textView3;
    }

    @NonNull
    public static LayoutLaunchBottomBinding bind(@NonNull View view) {
        int i9 = R.id.bottom_end_lay;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_end_lay);
        if (linearLayout != null) {
            i9 = R.id.bottom_middle_lay;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_middle_lay);
            if (linearLayout2 != null) {
                i9 = R.id.bottom_start_lay;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_start_lay);
                if (linearLayout3 != null) {
                    AlwaysCenterLayout alwaysCenterLayout = (AlwaysCenterLayout) view;
                    i9 = R.id.indicator_bottom_end;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.indicator_bottom_end);
                    if (findChildViewById != null) {
                        i9 = R.id.indicator_bottom_middle;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.indicator_bottom_middle);
                        if (findChildViewById2 != null) {
                            i9 = R.id.indicator_bottom_start;
                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.indicator_bottom_start);
                            if (findChildViewById3 != null) {
                                i9 = R.id.live_bottom_end;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.live_bottom_end);
                                if (textView != null) {
                                    i9 = R.id.live_bottom_middle;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.live_bottom_middle);
                                    if (textView2 != null) {
                                        i9 = R.id.live_bottom_start;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.live_bottom_start);
                                        if (textView3 != null) {
                                            return new LayoutLaunchBottomBinding(alwaysCenterLayout, linearLayout, linearLayout2, linearLayout3, alwaysCenterLayout, findChildViewById, findChildViewById2, findChildViewById3, textView, textView2, textView3);
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
    public static LayoutLaunchBottomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLaunchBottomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_launch_bottom, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public AlwaysCenterLayout getRoot() {
        return this.rootView;
    }
}
