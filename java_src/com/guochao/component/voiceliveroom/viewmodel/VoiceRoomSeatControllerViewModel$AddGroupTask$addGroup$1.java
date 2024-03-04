package com.guochao.component.voiceliveroom.viewmodel;

import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
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
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {0, 1}, l = {1132, 1135}, m = "invokeSuspend", n = {"$this$launch", "$this$launch"}, s = {"L$0", "L$0"})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ VoiceRoomSeatControllerViewModel.AddGroupTask this$0;
    final /* synthetic */ VoiceRoomSeatControllerViewModel this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1(VoiceRoomSeatControllerViewModel.AddGroupTask addGroupTask, VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, Continuation<? super VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1> continuation) {
        super(2, continuation);
        this.this$0 = addGroupTask;
        this.this$1 = voiceRoomSeatControllerViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1 voiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1 = new VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1(this.this$0, this.this$1, continuation);
        voiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1.L$0 = obj;
        return voiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007e -> B:12:0x0030). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L28
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            java.lang.Object r1 = r8.L$0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r1
            goto L2f
        L17:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1f:
            java.lang.Object r1 = r8.L$0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r9)
            r4 = r8
            goto L59
        L28:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            kotlinx.coroutines.CoroutineScope r9 = (kotlinx.coroutines.CoroutineScope) r9
        L2f:
            r1 = r8
        L30:
            com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$AddGroupTask r4 = r1.this$0
            boolean r4 = r4.getAdded()
            if (r4 != 0) goto L81
            boolean r4 = kotlinx.coroutines.CoroutineScopeKt.isActive(r9)
            if (r4 == 0) goto L81
            com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel r4 = r1.this$1
            com.guochao.component.voiceliveroom.repository.VoiceRoomSeatControllerRepository r4 = r4.getRepository()
            com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$AddGroupTask r5 = r1.this$0
            java.lang.String r5 = r5.getGroupId()
            r1.L$0 = r9
            r1.label = r3
            java.lang.Object r4 = r4.joinIMGroup(r5, r1)
            if (r4 != r0) goto L55
            return r0
        L55:
            r7 = r1
            r1 = r9
            r9 = r4
            r4 = r7
        L59:
            java.lang.Number r9 = (java.lang.Number) r9
            int r9 = r9.intValue()
            com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$AddGroupTask r5 = r4.this$0
            if (r9 != r3) goto L65
            r9 = 1
            goto L66
        L65:
            r9 = 0
        L66:
            r5.setAdded(r9)
            com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$AddGroupTask r9 = r4.this$0
            boolean r9 = r9.getAdded()
            if (r9 != 0) goto L7e
            r5 = 30000(0x7530, double:1.4822E-319)
            r4.L$0 = r1
            r4.label = r2
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.delay(r5, r4)
            if (r9 != r0) goto L7e
            return r0
        L7e:
            r9 = r1
            r1 = r4
            goto L30
        L81:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
