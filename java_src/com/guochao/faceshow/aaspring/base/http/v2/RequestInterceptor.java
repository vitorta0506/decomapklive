package com.guochao.faceshow.aaspring.base.http.v2;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R7\u0010\u0003\u001a\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/RequestInterceptor;", "", "()V", "before", "Lkotlin/Function1;", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;", "Lkotlin/ParameterName;", "name", "gcRequest", "", "getBefore", "()Lkotlin/jvm/functions/Function1;", "setBefore", "(Lkotlin/jvm/functions/Function1;)V", "lib_httpclient_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RequestInterceptor {
    @NotNull
    public static final RequestInterceptor INSTANCE = new RequestInterceptor();
    @Nullable
    private static Function1<? super GCRequest, Unit> before;

    private RequestInterceptor() {
    }

    @Nullable
    public final Function1<GCRequest, Unit> getBefore() {
        return before;
    }

    public final void setBefore(@Nullable Function1<? super GCRequest, Unit> function1) {
        before = function1;
    }
}
