package com.guochao.component.voiceliveroom.viewmodel;

import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$closeMicro$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {395}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerViewModel$closeMicro$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GCValueCallback<Integer> $gcValueCallback;
    final /* synthetic */ String $userId;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSeatControllerViewModel$closeMicro$1(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, String str, GCValueCallback<Integer> gCValueCallback, Continuation<? super VoiceRoomSeatControllerViewModel$closeMicro$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomSeatControllerViewModel;
        this.$userId = str;
        this.$gcValueCallback = gCValueCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        VoiceRoomSeatControllerViewModel$closeMicro$1 voiceRoomSeatControllerViewModel$closeMicro$1 = new VoiceRoomSeatControllerViewModel$closeMicro$1(this.this$0, this.$userId, this.$gcValueCallback, continuation);
        voiceRoomSeatControllerViewModel$closeMicro$1.L$0 = obj;
        return voiceRoomSeatControllerViewModel$closeMicro$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomSeatControllerViewModel$closeMicro$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x014d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r53) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$closeMicro$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
