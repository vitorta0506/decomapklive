package com.guochao.faceshow.component.f2fmatch.proxy;

import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.alibaba.android.arouter.facade.template.IProvider;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/proxy/PendantDialogFinder;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "showPendantDialog", "Landroidx/fragment/app/DialogFragment;", "manager", "Landroidx/fragment/app/FragmentManager;", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface PendantDialogFinder extends IProvider {
    @NotNull
    DialogFragment showPendantDialog(@NotNull FragmentManager fragmentManager);
}
