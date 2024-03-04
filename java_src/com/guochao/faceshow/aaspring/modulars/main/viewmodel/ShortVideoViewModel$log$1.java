package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.guochao.faceshow.aaspring.modulars.main.repository.ShortVideoRepository;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ShortVideoViewModel$log$1", f = "ShortVideoViewModel.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ShortVideoViewModel$log$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $type;
    final /* synthetic */ String $userId;
    final /* synthetic */ String $videoId;
    int label;
    final /* synthetic */ ShortVideoViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortVideoViewModel$log$1(ShortVideoViewModel shortVideoViewModel, String str, String str2, String str3, Continuation<? super ShortVideoViewModel$log$1> continuation) {
        super(2, continuation);
        this.this$0 = shortVideoViewModel;
        this.$userId = str;
        this.$videoId = str2;
        this.$type = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ShortVideoViewModel$log$1(this.this$0, this.$userId, this.$videoId, this.$type, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ShortVideoViewModel$log$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        ShortVideoRepository shortVideoRepository;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            shortVideoRepository = this.this$0.repository;
            String str = this.$userId;
            String str2 = this.$videoId;
            String str3 = this.$type;
            this.label = 1;
            if (shortVideoRepository.log(str, str2, str3, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
