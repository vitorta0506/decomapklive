package com.guochao.component.voiceliveroom.viewmodel;

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
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$loadMemberList$1", f = "VoiceRoomMemberViewModel.kt", i = {0, 0, 1, 1}, l = {106, 121, 131}, m = "invokeSuspend", n = {"totalList", "member", "totalList", "member"}, s = {"L$0", "L$1", "L$0", "L$1"})
/* loaded from: classes3.dex */
public final class VoiceRoomMemberViewModel$loadMemberList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $page;
    final /* synthetic */ int $size;
    final /* synthetic */ String $voiceRoomId;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ VoiceRoomMemberViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomMemberViewModel$loadMemberList$1(int i9, VoiceRoomMemberViewModel voiceRoomMemberViewModel, String str, int i10, Continuation<? super VoiceRoomMemberViewModel$loadMemberList$1> continuation) {
        super(2, continuation);
        this.$page = i9;
        this.this$0 = voiceRoomMemberViewModel;
        this.$voiceRoomId = str;
        this.$size = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        VoiceRoomMemberViewModel$loadMemberList$1 voiceRoomMemberViewModel$loadMemberList$1 = new VoiceRoomMemberViewModel$loadMemberList$1(this.$page, this.this$0, this.$voiceRoomId, this.$size, continuation);
        voiceRoomMemberViewModel$loadMemberList$1.L$0 = obj;
        return voiceRoomMemberViewModel$loadMemberList$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomMemberViewModel$loadMemberList$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0186 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ee A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01f9  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r29) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$loadMemberList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
