package com.guochao.faceshow.utils;

import android.os.Handler;
import android.os.Looper;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J!\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0002\u0010\u000eR\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/utils/HandlerGetter;", "", "()V", "mainHandler", "Landroid/os/Handler;", "getMainHandler$annotations", "getMainHandler", "()Landroid/os/Handler;", "runOnUIThread", "", "runnable", "Ljava/lang/Runnable;", "delay", "", "(Ljava/lang/Runnable;Ljava/lang/Long;)V", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class HandlerGetter {
    @NotNull
    public static final HandlerGetter INSTANCE = new HandlerGetter();
    @NotNull
    private static final Handler mainHandler = new Handler(Looper.getMainLooper());

    private HandlerGetter() {
    }

    @NotNull
    public static final Handler getMainHandler() {
        return mainHandler;
    }

    @JvmStatic
    public static /* synthetic */ void getMainHandler$annotations() {
    }

    @JvmStatic
    @JvmOverloads
    public static final void runOnUIThread(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        runOnUIThread$default(runnable, null, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void runOnUIThread(@NotNull Runnable runnable, @Nullable Long l10) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        if (l10 == null) {
            mainHandler.post(runnable);
        } else {
            mainHandler.postDelayed(runnable, l10.longValue());
        }
    }

    public static /* synthetic */ void runOnUIThread$default(Runnable runnable, Long l10, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            l10 = null;
        }
        runOnUIThread(runnable, l10);
    }
}
