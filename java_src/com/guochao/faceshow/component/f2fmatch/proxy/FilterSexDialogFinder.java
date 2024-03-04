package com.guochao.faceshow.component.f2fmatch.proxy;

import android.app.Activity;
import android.app.Dialog;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/proxy/FilterSexDialogFinder;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "showGenderFilterDialog", "Landroid/app/Dialog;", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "matchGender", "", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface FilterSexDialogFinder extends IProvider {
    @NotNull
    Dialog showGenderFilterDialog(@NotNull Activity activity, int i9);
}
