package com.guochao.lib_service_center.recharge;

import androidx.fragment.app.FragmentActivity;
import com.alibaba.android.arouter.facade.template.IProvider;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/guochao/lib_service_center/recharge/IRecharge;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "recharge", "", "context", "Landroidx/fragment/app/FragmentActivity;", "scene", "", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface IRecharge extends IProvider {
    void recharge(@NotNull FragmentActivity fragmentActivity, int i9);
}
