package com.guochao.faceshow.aaspring.dialog;

import android.content.Context;
import android.view.View;
import androidx.appcompat.app.AppCompatDialog;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.lib_core.R$style;
import com.guochao.lib_core.databinding.DialogGcCommonDialogBinding;
import com.vk.api.sdk.exceptions.VKApiCodes;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/aaspring/dialog/GCDialog;", "Landroidx/appcompat/app/AppCompatDialog;", "context", "Landroid/content/Context;", "builder", "Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;", "(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;)V", "viewBinding", "Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;", "getViewBinding", "()Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;", "setViewBinding", "(Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Builder", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GCDialog extends AppCompatDialog {
    @NotNull
    private final Builder builder;
    public DialogGcCommonDialogBinding viewBinding;

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010-\u001a\u00020\u00052\u0006\u0010.\u001a\u00020/J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0013J\u000e\u00100\u001a\u00020\u00002\u0006\u00101\u001a\u00020\rJ@\u00102\u001a\u00020\u00002\u001b\b\u0002\u0010\u0003\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004¢\u0006\u0002\b\u00072\u001b\b\u0002\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004¢\u0006\u0002\b\u0007J\u001a\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u00132\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rJ\u0012\u00103\u001a\u00020\u00002\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\rJ\u000e\u0010'\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0013J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\rR-\u0010\u0003\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004¢\u0006\u0002\b\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R-\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004¢\u0006\u0002\b\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000bR\u001a\u0010\u001e\u001a\u00020\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000f\"\u0004\b \u0010\u0011R\u001c\u0010!\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R\u001a\u0010$\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R\u001a\u0010'\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R\u001a\u0010*\u001a\u00020\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u000f\"\u0004\b,\u0010\u0011¨\u00065"}, d2 = {"Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;", "", "()V", "cancel", "Lkotlin/Function1;", "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;", "", "Lkotlin/ExtensionFunctionType;", "getCancel$lib_core_release", "()Lkotlin/jvm/functions/Function1;", "setCancel$lib_core_release", "(Lkotlin/jvm/functions/Function1;)V", "cancelText", "", "getCancelText$lib_core_release", "()Ljava/lang/CharSequence;", "setCancelText$lib_core_release", "(Ljava/lang/CharSequence;)V", "cancellableOnBack", "", "getCancellableOnBack$lib_core_release", "()Z", "setCancellableOnBack$lib_core_release", "(Z)V", "cancellableOnTouchOutside", "getCancellableOnTouchOutside$lib_core_release", "setCancellableOnTouchOutside$lib_core_release", VKApiCodes.EXTRA_CONFIRM, "getConfirm$lib_core_release", "setConfirm$lib_core_release", "content", "getContent$lib_core_release", "setContent$lib_core_release", "okText", "getOkText$lib_core_release", "setOkText$lib_core_release", "showCancel", "getShowCancel$lib_core_release", "setShowCancel$lib_core_release", "singleButton", "getSingleButton$lib_core_release", "setSingleButton$lib_core_release", "title", "getTitle$lib_core_release", "setTitle$lib_core_release", "build", "context", "Landroid/content/Context;", "contentText", ViewHierarchyConstants.TEXT_KEY, "onClick", "showConfirm", "single", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Builder {
        @Nullable
        private Function1<? super GCDialog, Unit> cancel;
        @Nullable
        private CharSequence cancelText;
        @Nullable
        private Function1<? super GCDialog, Unit> confirm;
        @Nullable
        private CharSequence okText;
        private boolean singleButton;
        @NotNull
        private CharSequence title = "";
        @NotNull
        private CharSequence content = "";
        private boolean showCancel = true;
        private boolean cancellableOnBack = true;
        private boolean cancellableOnTouchOutside = true;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Builder onClick$default(Builder builder, Function1 function1, Function1 function12, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                function1 = null;
            }
            if ((i9 & 2) != 0) {
                function12 = null;
            }
            return builder.onClick(function1, function12);
        }

        public static /* synthetic */ Builder showCancel$default(Builder builder, boolean z10, CharSequence charSequence, int i9, Object obj) {
            if ((i9 & 2) != 0) {
                charSequence = null;
            }
            return builder.showCancel(z10, charSequence);
        }

        public static /* synthetic */ Builder showConfirm$default(Builder builder, CharSequence charSequence, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                charSequence = null;
            }
            return builder.showConfirm(charSequence);
        }

        @NotNull
        public final GCDialog build(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new GCDialog(context, this, null);
        }

        @NotNull
        public final Builder cancellableOnBack(boolean z10) {
            this.cancellableOnBack = z10;
            return this;
        }

        @NotNull
        public final Builder cancellableOnTouchOutside(boolean z10) {
            this.cancellableOnTouchOutside = z10;
            return this;
        }

        @NotNull
        public final Builder contentText(@NotNull CharSequence text) {
            Intrinsics.checkNotNullParameter(text, "text");
            this.content = text;
            return this;
        }

        @Nullable
        public final Function1<GCDialog, Unit> getCancel$lib_core_release() {
            return this.cancel;
        }

        @Nullable
        public final CharSequence getCancelText$lib_core_release() {
            return this.cancelText;
        }

        public final boolean getCancellableOnBack$lib_core_release() {
            return this.cancellableOnBack;
        }

        public final boolean getCancellableOnTouchOutside$lib_core_release() {
            return this.cancellableOnTouchOutside;
        }

        @Nullable
        public final Function1<GCDialog, Unit> getConfirm$lib_core_release() {
            return this.confirm;
        }

        @NotNull
        public final CharSequence getContent$lib_core_release() {
            return this.content;
        }

        @Nullable
        public final CharSequence getOkText$lib_core_release() {
            return this.okText;
        }

        public final boolean getShowCancel$lib_core_release() {
            return this.showCancel;
        }

        public final boolean getSingleButton$lib_core_release() {
            return this.singleButton;
        }

        @NotNull
        public final CharSequence getTitle$lib_core_release() {
            return this.title;
        }

        @NotNull
        public final Builder onClick(@Nullable Function1<? super GCDialog, Unit> function1, @Nullable Function1<? super GCDialog, Unit> function12) {
            this.cancel = function1;
            this.confirm = function12;
            return this;
        }

        public final void setCancel$lib_core_release(@Nullable Function1<? super GCDialog, Unit> function1) {
            this.cancel = function1;
        }

        public final void setCancelText$lib_core_release(@Nullable CharSequence charSequence) {
            this.cancelText = charSequence;
        }

        public final void setCancellableOnBack$lib_core_release(boolean z10) {
            this.cancellableOnBack = z10;
        }

        public final void setCancellableOnTouchOutside$lib_core_release(boolean z10) {
            this.cancellableOnTouchOutside = z10;
        }

        public final void setConfirm$lib_core_release(@Nullable Function1<? super GCDialog, Unit> function1) {
            this.confirm = function1;
        }

        public final void setContent$lib_core_release(@NotNull CharSequence charSequence) {
            Intrinsics.checkNotNullParameter(charSequence, "<set-?>");
            this.content = charSequence;
        }

        public final void setOkText$lib_core_release(@Nullable CharSequence charSequence) {
            this.okText = charSequence;
        }

        public final void setShowCancel$lib_core_release(boolean z10) {
            this.showCancel = z10;
        }

        public final void setSingleButton$lib_core_release(boolean z10) {
            this.singleButton = z10;
        }

        public final void setTitle$lib_core_release(@NotNull CharSequence charSequence) {
            Intrinsics.checkNotNullParameter(charSequence, "<set-?>");
            this.title = charSequence;
        }

        @NotNull
        public final Builder showCancel(boolean z10, @Nullable CharSequence charSequence) {
            this.showCancel = z10;
            this.cancelText = charSequence;
            return this;
        }

        @NotNull
        public final Builder showConfirm(@Nullable CharSequence charSequence) {
            this.okText = charSequence;
            return this;
        }

        @NotNull
        public final Builder singleButton(boolean z10) {
            this.singleButton = z10;
            return this;
        }

        @NotNull
        public final Builder title(@NotNull CharSequence title) {
            Intrinsics.checkNotNullParameter(title, "title");
            this.title = title;
            return this;
        }
    }

    private GCDialog(Context context, Builder builder) {
        super(context, R$style.GCDialog);
        this.builder = builder;
    }

    public /* synthetic */ GCDialog(Context context, Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, builder);
    }

    /* renamed from: onCreate$lambda-3$lambda-1 */
    public static final void m341onCreate$lambda3$lambda1(GCDialog this$0, View view) {
        Unit unit;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<GCDialog, Unit> cancel$lib_core_release = this$0.builder.getCancel$lib_core_release();
        if (cancel$lib_core_release != null) {
            cancel$lib_core_release.invoke(this$0);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            this$0.dismiss();
        }
    }

    /* renamed from: onCreate$lambda-3$lambda-2 */
    public static final void m342onCreate$lambda3$lambda2(GCDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<GCDialog, Unit> confirm$lib_core_release = this$0.builder.getConfirm$lib_core_release();
        if (confirm$lib_core_release != null) {
            confirm$lib_core_release.invoke(this$0);
        }
    }

    @NotNull
    public final DialogGcCommonDialogBinding getViewBinding() {
        DialogGcCommonDialogBinding dialogGcCommonDialogBinding = this.viewBinding;
        if (dialogGcCommonDialogBinding != null) {
            return dialogGcCommonDialogBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c6, code lost:
        if ((r0.length() > 0) == true) goto L19;
     */
    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(@org.jetbrains.annotations.Nullable android.os.Bundle r15) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.dialog.GCDialog.onCreate(android.os.Bundle):void");
    }

    public final void setViewBinding(@NotNull DialogGcCommonDialogBinding dialogGcCommonDialogBinding) {
        Intrinsics.checkNotNullParameter(dialogGcCommonDialogBinding, "<set-?>");
        this.viewBinding = dialogGcCommonDialogBinding;
    }
}
