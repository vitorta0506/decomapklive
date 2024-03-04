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
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$loadViewerList$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {553}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerViewModel$loadViewerList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $refresh;
    final /* synthetic */ int $size;
    int label;
    final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSeatControllerViewModel$loadViewerList$1(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, int i9, boolean z10, Continuation<? super VoiceRoomSeatControllerViewModel$loadViewerList$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomSeatControllerViewModel;
        this.$size = i9;
        this.$refresh = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomSeatControllerViewModel$loadViewerList$1(this.this$0, this.$size, this.$refresh, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomSeatControllerViewModel$loadViewerList$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007c, code lost:
        if (r9 == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a9, code lost:
        r3 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r3);
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$loadViewerList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
