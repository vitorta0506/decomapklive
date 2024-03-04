package com.guochao.faceshow.component.f2fmatch.viewmodel;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$checkGoogleCloudAvailable$2", f = "F2fMatchViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
final class F2fMatchViewModel$checkGoogleCloudAvailable$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public F2fMatchViewModel$checkGoogleCloudAvailable$2(Continuation<? super F2fMatchViewModel$checkGoogleCloudAvailable$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new F2fMatchViewModel$checkGoogleCloudAvailable$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Boolean> continuation) {
        return ((F2fMatchViewModel$checkGoogleCloudAvailable$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Request build = new Request.Builder().url("https://www.google.com/generate_204").method("GET", null).build();
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            try {
                Response execute = builder.connectTimeout(5L, timeUnit).readTimeout(5L, timeUnit).writeTimeout(5L, timeUnit).build().newCall(build).execute();
                boolean isSuccessful = execute.isSuccessful();
                execute.close();
                return Boxing.boxBoolean(isSuccessful);
            } catch (Exception e10) {
                e10.printStackTrace();
                return Boxing.boxBoolean(false);
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
