package com.guochao.component.voiceliveroom.repository;

import com.guochao.component.voiceliveroom.model.VoiceRoomViewerListModel;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
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
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.voiceliveroom.repository.VoiceRoomSeatControllerRepository$loadViewerList$2", f = "VoiceRoomSeatControllerRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerRepository$loadViewerList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<VoiceRoomViewerListModel>>, Object> {
    final /* synthetic */ int $page;
    final /* synthetic */ String $roomId;
    final /* synthetic */ int $size;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSeatControllerRepository$loadViewerList$2(String str, int i9, int i10, Continuation<? super VoiceRoomSeatControllerRepository$loadViewerList$2> continuation) {
        super(2, continuation);
        this.$roomId = str;
        this.$page = i9;
        this.$size = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomSeatControllerRepository$loadViewerList$2(this.$roomId, this.$page, this.$size, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<VoiceRoomViewerListModel>> continuation) {
        return ((VoiceRoomSeatControllerRepository$loadViewerList$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest putBody = new GCRequest("api/token/live/voice/room/getViewList").putBody("roomId", this.$roomId).putBody("page", Boxing.boxInt(this.$page)).putBody("size", Boxing.boxInt(this.$size));
            try {
                return Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), VoiceRoomViewerListModel.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                Response fail = Response.Companion.fail(-1, null, e10.getMessage());
                fail.setError(e10);
                return fail;
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
