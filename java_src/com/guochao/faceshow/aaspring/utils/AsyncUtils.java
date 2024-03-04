package com.guochao.faceshow.aaspring.utils;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Jf\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062'\b\u0002\u0010\u0007\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b2#\u0010\f\u001a\u001f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bH\u0007J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000f2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000fH\u0007¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;", "", "()V", "run", "", "async", "Lkotlin/Function0;", "callback", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "any", "error", "", com.huawei.hms.push.e.f27721a, "Ljava/lang/Runnable;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AsyncUtils {
    @NotNull
    public static final AsyncUtils INSTANCE = new AsyncUtils();

    private AsyncUtils() {
    }

    @JvmStatic
    @JvmOverloads
    public static final void run(@NotNull Runnable async) {
        Intrinsics.checkNotNullParameter(async, "async");
        run$default(async, (Runnable) null, (Runnable) null, 6, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void run(@NotNull Runnable async, @Nullable Runnable runnable) {
        Intrinsics.checkNotNullParameter(async, "async");
        run$default(async, runnable, (Runnable) null, 4, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void run(@NotNull final Runnable async, @Nullable final Runnable runnable, @Nullable final Runnable runnable2) {
        Intrinsics.checkNotNullParameter(async, "async");
        io.reactivex.k.just(1).map(new vh.o() { // from class: com.guochao.faceshow.aaspring.utils.a
            @Override // vh.o
            public final Object apply(Object obj) {
                Object m582run$lambda0;
                m582run$lambda0 = AsyncUtils.m582run$lambda0(async, (Integer) obj);
                return m582run$lambda0;
            }
        }).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new SimpleObserver<Object>() { // from class: com.guochao.faceshow.aaspring.utils.AsyncUtils$run$2
            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onError(@NotNull Throwable e10) {
                Intrinsics.checkNotNullParameter(e10, "e");
                super.onError(e10);
                Runnable runnable3 = runnable2;
                if (runnable3 != null) {
                    runnable3.run();
                }
            }

            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onNext(@NotNull Object o10) {
                Intrinsics.checkNotNullParameter(o10, "o");
                super.onNext(o10);
                Runnable runnable3 = runnable;
                if (runnable3 != null) {
                    runnable3.run();
                }
            }
        });
    }

    @JvmStatic
    @JvmOverloads
    public static final void run(@NotNull Function0<? extends Object> async, @Nullable Function1<? super Throwable, Unit> function1) {
        Intrinsics.checkNotNullParameter(async, "async");
        run$default(async, (Function1) null, function1, 2, (Object) null);
    }

    public static /* synthetic */ void run$default(Runnable runnable, Runnable runnable2, Runnable runnable3, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            runnable2 = null;
        }
        if ((i9 & 4) != 0) {
            runnable3 = null;
        }
        run(runnable, runnable2, runnable3);
    }

    /* renamed from: run$lambda-0 */
    public static final Object m582run$lambda0(Runnable async, Integer it) {
        Intrinsics.checkNotNullParameter(async, "$async");
        Intrinsics.checkNotNullParameter(it, "it");
        async.run();
        return "";
    }

    /* renamed from: run$lambda-1 */
    public static final Object m583run$lambda1(Function0 async, Integer it) {
        Intrinsics.checkNotNullParameter(async, "$async");
        Intrinsics.checkNotNullParameter(it, "it");
        return async.invoke();
    }

    public static /* synthetic */ void run$default(Function0 function0, Function1 function1, Function1 function12, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            function1 = null;
        }
        run(function0, function1, function12);
    }

    @JvmStatic
    @JvmOverloads
    public static final void run(@NotNull final Function0<? extends Object> async, @Nullable final Function1<Object, Unit> function1, @Nullable final Function1<? super Throwable, Unit> function12) {
        Intrinsics.checkNotNullParameter(async, "async");
        io.reactivex.k.just(1).map(new vh.o() { // from class: com.guochao.faceshow.aaspring.utils.b
            @Override // vh.o
            public final Object apply(Object obj) {
                Object m583run$lambda1;
                m583run$lambda1 = AsyncUtils.m583run$lambda1(Function0.this, (Integer) obj);
                return m583run$lambda1;
            }
        }).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new SimpleObserver<Object>() { // from class: com.guochao.faceshow.aaspring.utils.AsyncUtils$run$4
            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onError(@NotNull Throwable e10) {
                Intrinsics.checkNotNullParameter(e10, "e");
                super.onError(e10);
                Function1<Throwable, Unit> function13 = function12;
                if (function13 != null) {
                    function13.invoke(e10);
                }
            }

            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onNext(@NotNull Object o10) {
                Intrinsics.checkNotNullParameter(o10, "o");
                super.onNext(o10);
                Function1<Object, Unit> function13 = function1;
                if (function13 != null) {
                    function13.invoke(o10);
                }
            }
        });
    }
}
