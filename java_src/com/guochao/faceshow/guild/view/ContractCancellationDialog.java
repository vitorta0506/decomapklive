package com.guochao.faceshow.guild.view;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.faceshow.guild.R$string;
import com.guochao.faceshow.guild.bean.ContractHistoryBean;
import com.vk.api.sdk.exceptions.VKApiCodes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J&\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;", "Lcom/guochao/faceshow/guild/view/BaseDialogFragment;", "contractHistoryBean", "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;", "(Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V", "mContractHistoryBean", "mOnMenuClickListener", "Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;", "getMOnMenuClickListener", "()Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;", "setMOnMenuClickListener", "(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "", "OnMenuClickListener", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ContractCancellationDialog extends BaseDialogFragment {
    @NotNull
    private ContractHistoryBean mContractHistoryBean;
    @Nullable
    private OnMenuClickListener mOnMenuClickListener;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;", "", VKApiCodes.EXTRA_CONFIRM, "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface OnMenuClickListener {
        void confirm();
    }

    public ContractCancellationDialog(@NotNull ContractHistoryBean contractHistoryBean) {
        Intrinsics.checkNotNullParameter(contractHistoryBean, "contractHistoryBean");
        this.mContractHistoryBean = contractHistoryBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateView$lambda-0  reason: not valid java name */
    public static final void m730onCreateView$lambda0(ContractCancellationDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OnMenuClickListener onMenuClickListener = this$0.mOnMenuClickListener;
        if (onMenuClickListener != null) {
            onMenuClickListener.confirm();
        }
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateView$lambda-1  reason: not valid java name */
    public static final void m731onCreateView$lambda1(ContractCancellationDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    @Nullable
    public final OnMenuClickListener getMOnMenuClickListener() {
        return this.mOnMenuClickListener;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(R$layout.cancel_contract_dialog, viewGroup, false);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.requestWindowFeature(1);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        ((AppCompatTextView) inflate.findViewById(R$id.guild_id)).setText(getString(R$string.guild_id_tips, String.valueOf(this.mContractHistoryBean.getGuildId())));
        ((AppCompatTextView) inflate.findViewById(R$id.guild_name)).setText(getString(R$string.guild_name_tips, this.mContractHistoryBean.getName()));
        ((AppCompatTextView) inflate.findViewById(R$id.confirm)).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.view.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContractCancellationDialog.m730onCreateView$lambda0(ContractCancellationDialog.this, view);
            }
        });
        ((AppCompatTextView) inflate.findViewById(R$id.cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.view.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContractCancellationDialog.m731onCreateView$lambda1(ContractCancellationDialog.this, view);
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        WindowManager windowManager;
        Display defaultDisplay;
        super.onStart();
        setCancelable(false);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        FragmentActivity activity = getActivity();
        if (activity != null && (windowManager = activity.getWindowManager()) != null && (defaultDisplay = windowManager.getDefaultDisplay()) != null) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public final void setMOnMenuClickListener(@Nullable OnMenuClickListener onMenuClickListener) {
        this.mOnMenuClickListener = onMenuClickListener;
    }
}
