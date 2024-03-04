package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.lib_core.databinding.GcBaseTitleBarBinding;
/* loaded from: classes4.dex */
public final class ActivityContractResultBinding implements ViewBinding {
    @NonNull
    public final Guideline guideline12;
    @NonNull
    public final TextView guildId;
    @NonNull
    public final ConstraintLayout guildInformagtionLayout;
    @NonNull
    public final TextView guildName;
    @NonNull
    public final ConstraintLayout processLayout;
    @NonNull
    public final RecyclerView processRecyclerview;
    @NonNull
    public final TextView processTips;
    @NonNull
    public final TextView reason;
    @NonNull
    public final ConstraintLayout reasonLayout;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final AppCompatTextView state;
    @NonNull
    public final TextView textView35;
    @NonNull
    public final TextView textView36;
    @NonNull
    public final TextView textView39;
    @NonNull
    public final TextView time;
    @NonNull
    public final TextView timeTips;
    @NonNull
    public final GcBaseTitleBarBinding titleBar;

    private ActivityContractResultBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Guideline guideline, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView2, @NonNull ConstraintLayout constraintLayout3, @NonNull RecyclerView recyclerView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ConstraintLayout constraintLayout4, @NonNull AppCompatTextView appCompatTextView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull GcBaseTitleBarBinding gcBaseTitleBarBinding) {
        this.rootView = constraintLayout;
        this.guideline12 = guideline;
        this.guildId = textView;
        this.guildInformagtionLayout = constraintLayout2;
        this.guildName = textView2;
        this.processLayout = constraintLayout3;
        this.processRecyclerview = recyclerView;
        this.processTips = textView3;
        this.reason = textView4;
        this.reasonLayout = constraintLayout4;
        this.state = appCompatTextView;
        this.textView35 = textView5;
        this.textView36 = textView6;
        this.textView39 = textView7;
        this.time = textView8;
        this.timeTips = textView9;
        this.titleBar = gcBaseTitleBarBinding;
    }

    @NonNull
    public static ActivityContractResultBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.guideline12;
        Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i9);
        if (guideline != null) {
            i9 = R$id.guild_id;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.guild_informagtion_layout;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i9);
                if (constraintLayout != null) {
                    i9 = R$id.guild_name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView2 != null) {
                        i9 = R$id.process_layout;
                        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i9);
                        if (constraintLayout2 != null) {
                            i9 = R$id.process_recyclerview;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                            if (recyclerView != null) {
                                i9 = R$id.process_tips;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                if (textView3 != null) {
                                    i9 = R$id.reason;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                                    if (textView4 != null) {
                                        i9 = R$id.reason_layout;
                                        ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, i9);
                                        if (constraintLayout3 != null) {
                                            i9 = R$id.state;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i9);
                                            if (appCompatTextView != null) {
                                                i9 = R$id.textView35;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                if (textView5 != null) {
                                                    i9 = R$id.textView36;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                    if (textView6 != null) {
                                                        i9 = R$id.textView39;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                        if (textView7 != null) {
                                                            i9 = R$id.time;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                            if (textView8 != null) {
                                                                i9 = R$id.time_tips;
                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                                if (textView9 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.title_bar))) != null) {
                                                                    return new ActivityContractResultBinding((ConstraintLayout) view, guideline, textView, constraintLayout, textView2, constraintLayout2, recyclerView, textView3, textView4, constraintLayout3, appCompatTextView, textView5, textView6, textView7, textView8, textView9, GcBaseTitleBarBinding.bind(findChildViewById));
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityContractResultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityContractResultBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.activity_contract_result, viewGroup, false);
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
