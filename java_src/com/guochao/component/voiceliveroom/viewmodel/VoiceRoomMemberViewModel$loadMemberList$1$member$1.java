package com.guochao.component.voiceliveroom.viewmodel;

import com.guochao.component.voiceliveroom.model.VoiceRoomMemberPagedModel;
import com.guochao.component.voiceliveroom.repository.VoiceRoomMemberRepository;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
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
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$loadMemberList$1$member$1", f = "VoiceRoomMemberViewModel.kt", i = {}, l = {103}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class VoiceRoomMemberViewModel$loadMemberList$1$member$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<VoiceRoomMemberPagedModel>>, Object> {
    final /* synthetic */ int $page;
    final /* synthetic */ int $size;
    final /* synthetic */ String $voiceRoomId;
    int label;
    final /* synthetic */ VoiceRoomMemberViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomMemberViewModel$loadMemberList$1$member$1(VoiceRoomMemberViewModel voiceRoomMemberViewModel, String str, int i9, int i10, Continuation<? super VoiceRoomMemberViewModel$loadMemberList$1$member$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomMemberViewModel;
        this.$voiceRoomId = str;
        this.$size = i9;
        this.$page = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomMemberViewModel$loadMemberList$1$member$1(this.this$0, this.$voiceRoomId, this.$size, this.$page, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<VoiceRoomMemberPagedModel>> continuation) {
        return ((VoiceRoomMemberViewModel$loadMemberList$1$member$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        VoiceRoomMemberRepository voiceRoomMemberRepository;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            voiceRoomMemberRepository = this.this$0.repository;
            String str = this.$voiceRoomId;
            int i10 = this.$size;
            int i11 = this.$page;
            this.label = 1;
            obj = voiceRoomMemberRepository.getVoiceRoomMemberList(str, i10, i11, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return obj;
    }
}
