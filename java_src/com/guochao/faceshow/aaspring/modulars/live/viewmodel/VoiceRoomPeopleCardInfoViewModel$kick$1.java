package com.guochao.faceshow.aaspring.modulars.live.viewmodel;

import com.guochao.faceshow.aaspring.base.http.v2.Response;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.viewmodel.VoiceRoomPeopleCardInfoViewModel$kick$1", f = "VoiceRoomPeopleCardInfoViewModel.kt", i = {}, l = {39, 40}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomPeopleCardInfoViewModel$kick$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<Integer, Continuation<? super Unit>, Object> $callback;
    final /* synthetic */ String $id;
    final /* synthetic */ Integer $index;
    final /* synthetic */ String $roomId;
    final /* synthetic */ String $userId;
    int label;
    final /* synthetic */ VoiceRoomPeopleCardInfoViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public VoiceRoomPeopleCardInfoViewModel$kick$1(VoiceRoomPeopleCardInfoViewModel voiceRoomPeopleCardInfoViewModel, String str, String str2, String str3, Integer num, Function2<? super Integer, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super VoiceRoomPeopleCardInfoViewModel$kick$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomPeopleCardInfoViewModel;
        this.$roomId = str;
        this.$userId = str2;
        this.$id = str3;
        this.$index = num;
        this.$callback = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomPeopleCardInfoViewModel$kick$1(this.this$0, this.$roomId, this.$userId, this.$id, this.$index, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomPeopleCardInfoViewModel$kick$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        VoiceRoomPeopleCardRepository voiceRoomPeopleCardRepository;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            voiceRoomPeopleCardRepository = this.this$0.repository;
            String str = this.$roomId;
            String str2 = this.$userId;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = this.$id;
            Integer num = this.$index;
            this.label = 1;
            obj = voiceRoomPeopleCardRepository.kick(str, str2, str3, num, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            if (i9 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Function2<Integer, Continuation<? super Unit>, Object> function2 = this.$callback;
        Integer boxInt = Boxing.boxInt(((Response) obj).getCode());
        this.label = 2;
        if (function2.mo1invoke(boxInt, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
