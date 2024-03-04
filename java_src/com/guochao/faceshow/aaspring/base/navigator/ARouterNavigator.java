package com.guochao.faceshow.aaspring.base.navigator;

import android.app.Activity;
import android.content.Context;
import com.alibaba.android.arouter.facade.Postcard;
import com.guochao.faceshow.utils.TCConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\t\u001a\u00020\u0001H\u0016¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;", "Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;", "context", "Landroid/content/Context;", TCConstants.VIDEO_RECORD_VIDEPATH, "", "(Landroid/content/Context;Ljava/lang/String;)V", "findObject", "", "go", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ARouterNavigator extends GCNavigator {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ARouterNavigator(@Nullable Context context, @NotNull String path) {
        super(context, path);
        Intrinsics.checkNotNullParameter(path, "path");
    }

    @Override // com.guochao.faceshow.aaspring.base.navigator.GCNavigator
    @Nullable
    public Object findObject() {
        Postcard a10 = a.c().a(getPath());
        if (getBundle() != null) {
            a10.with(getBundle());
        }
        return a10.navigation(getContext());
    }

    @Override // com.guochao.faceshow.aaspring.base.navigator.GCNavigator
    @NotNull
    public GCNavigator go() {
        Postcard a10 = a.c().a(getPath());
        if (getBundle() != null) {
            a10.with(getBundle());
        }
        if (getCode() != -1 && (getContext() instanceof Activity)) {
            a10.navigation((Activity) getContext(), getCode());
        } else {
            a10.navigation(getContext());
        }
        return this;
    }

    public /* synthetic */ ARouterNavigator(Context context, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : context, str);
    }
}
