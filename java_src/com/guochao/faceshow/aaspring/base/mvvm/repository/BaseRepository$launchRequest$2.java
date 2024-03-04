package com.guochao.faceshow.aaspring.base.mvvm.repository;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.base.mvvm.repository.BaseRepository$launchRequest$2", f = "BaseRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class BaseRepository$launchRequest$2<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
    final /* synthetic */ Function1<CoroutineScope, T> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public BaseRepository$launchRequest$2(Function1<? super CoroutineScope, ? extends T> function1, Continuation<? super BaseRepository$launchRequest$2> continuation) {
        super(2, continuation);
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        BaseRepository$launchRequest$2 baseRepository$launchRequest$2 = new BaseRepository$launchRequest$2(this.$block, continuation);
        baseRepository$launchRequest$2.L$0 = obj;
        return baseRepository$launchRequest$2;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public /* bridge */ /* synthetic */ Object mo1invoke(CoroutineScope coroutineScope, Object obj) {
        return invoke(coroutineScope, (Continuation) ((Continuation) obj));
    }

    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super T> continuation) {
        return ((BaseRepository$launchRequest$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return this.$block.invoke((CoroutineScope) this.L$0);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
