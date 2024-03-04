package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.lib_core.databinding.GcBaseTitleBarBinding;
/* loaded from: classes4.dex */
public final class ActivityApplyTerminationBinding implements ViewBinding {
    @NonNull
    public final Button confrim;
    @NonNull
    public final ConstraintLayout constraintLayout;
    @NonNull
    public final ConstraintLayout constraintLayout2;
    @NonNull
    public final EditText editReason;
    @NonNull
    public final TextView guildId;
    @NonNull
    public final LinearLayoutCompat guildInformagtionLayout;
    @NonNull
    public final TextView guildName;
    @NonNull
    public final TextView guildTime;
    @NonNull
    public final LinearLayoutCompat linearLayoutCompat;
    @NonNull
    public final TextView periodOfCalmingDown;
    @NonNull
    public final RecyclerView pictureList;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView textView20;
    @NonNull
    public final TextView textView21;
    @NonNull
    public final TextView textView23;
    @NonNull
    public final GcBaseTitleBarBinding titleBar;

    private ActivityApplyTerminationBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull EditText editText, @NonNull TextView textView, @NonNull LinearLayoutCompat linearLayoutCompat, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayoutCompat linearLayoutCompat2, @NonNull TextView textView4, @NonNull RecyclerView recyclerView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding) {
        this.rootView = constraintLayout;
        this.confrim = button;
        this.constraintLayout = constraintLayout2;
        this.constraintLayout2 = constraintLayout3;
        this.editReason = editText;
        this.guildId = textView;
        this.guildInformagtionLayout = linearLayoutCompat;
        this.guildName = textView2;
        this.guildTime = textView3;
        this.linearLayoutCompat = linearLayoutCompat2;
        this.periodOfCalmingDown = textView4;
        this.pictureList = recyclerView;
        this.textView20 = textView5;
        this.textView21 = textView6;
        this.textView23 = textView7;
        this.titleBar = gcBaseTitleBarBinding;
    }

    @NonNull
    public static ActivityApplyTerminationBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.confrim;
        Button button = (Button) ViewBindings.findChildViewById(view, i9);
        if (button != null) {
            i9 = R$id.constraintLayout;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i9);
            if (constraintLayout != null) {
                i9 = R$id.constraintLayout2;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i9);
                if (constraintLayout2 != null) {
                    i9 = R$id.edit_reason;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, i9);
                    if (editText != null) {
                        i9 = R$id.guild_id;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView != null) {
                            i9 = R$id.guild_informagtion_layout;
                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i9);
                            if (linearLayoutCompat != null) {
                                i9 = R$id.guild_name;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                                if (textView2 != null) {
                                    i9 = R$id.guild_time;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                    if (textView3 != null) {
                                        i9 = R$id.linearLayoutCompat;
                                        LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i9);
                                        if (linearLayoutCompat2 != null) {
                                            i9 = R$id.period_of_calming_down;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                                            if (textView4 != null) {
                                                i9 = R$id.picture_list;
                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                                                if (recyclerView != null) {
                                                    i9 = R$id.textView20;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                    if (textView5 != null) {
                                                        i9 = R$id.textView21;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                        if (textView6 != null) {
                                                            i9 = R$id.textView23;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                            if (textView7 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.title_bar))) != null) {
                                                                return new ActivityApplyTerminationBinding((ConstraintLayout) view, button, constraintLayout, constraintLayout2, editText, textView, linearLayoutCompat, textView2, textView3, linearLayoutCompat2, textView4, recyclerView, textView5, textView6, textView7, GcBaseTitleBarBinding.bind(findChildViewById));
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
    public static ActivityApplyTerminationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityApplyTerminationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.activity_apply_termination, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
