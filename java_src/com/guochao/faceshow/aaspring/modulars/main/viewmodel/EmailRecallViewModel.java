package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.BaseConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u000e\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "lastChecked", "", "check", "", BaseConfig.ITEM, "Landroid/content/ClipData$Item;", "checkEmailRecall", "", "context", "Landroid/content/Context;", "checkSaved", "uploadDataToServer", TypedValues.Custom.S_STRING, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class EmailRecallViewModel extends BaseViewModel<BaseModel> {
    private long lastChecked;

    private final String check(ClipData.Item item) {
        String obj;
        boolean startsWith$default;
        String replace$default;
        CharSequence text = item.getText();
        if (text != null && (obj = text.toString()) != null) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(obj, "BuzzCast-Recall-", false, 2, null);
            if (startsWith$default) {
                replace$default = StringsKt__StringsJVMKt.replace$default(obj, "BuzzCast-Recall-", "", false, 4, (Object) null);
                return replace$default;
            }
        }
        return null;
    }

    private final void checkSaved() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new EmailRecallViewModel$checkSaved$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uploadDataToServer(String str) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new EmailRecallViewModel$uploadDataToServer$1(str, null), 2, null);
    }

    public final void checkEmailRecall(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (System.currentTimeMillis() - this.lastChecked <= 30000) {
            return;
        }
        checkSaved();
        this.lastChecked = System.currentTimeMillis();
        Object systemService = context.getSystemService("clipboard");
        ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
        if (clipboardManager != null) {
            ClipData primaryClip = clipboardManager.getPrimaryClip();
            if (primaryClip == null) {
                ToastUtils.debug("剪切板内容为null");
            } else if (primaryClip.getItemCount() == 0) {
                ToastUtils.debug("剪切板内容为空");
            } else {
                int itemCount = primaryClip.getItemCount();
                for (int i9 = 0; i9 < itemCount; i9++) {
                    ClipData.Item data = primaryClip.getItemAt(i9);
                    Intrinsics.checkNotNullExpressionValue(data, "data");
                    String check = check(data);
                    if (check != null) {
                        clipboardManager.clearPrimaryClip();
                        uploadDataToServer(check);
                        return;
                    }
                }
            }
        }
    }
}
