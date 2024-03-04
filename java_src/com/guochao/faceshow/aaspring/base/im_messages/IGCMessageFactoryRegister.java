package com.guochao.faceshow.aaspring.base.im_messages;

import android.content.Context;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.guochao.faceshow.aaspring.base.im_messages.factory.GCIMMessageFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0002H\u0016¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/im_messages/IGCMessageFactoryRegister;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;", "()V", "init", "", "context", "Landroid/content/Context;", "registerFactory", "factor", "unregisterFactory", "factory", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class IGCMessageFactoryRegister implements IProvider, GCIMMessageFactory {
    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(@Nullable Context context) {
    }

    public void registerFactory(@NotNull GCIMMessageFactory factor) {
        Intrinsics.checkNotNullParameter(factor, "factor");
    }

    public void unregisterFactory(@NotNull GCIMMessageFactory factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
    }
}
