package com.guochao.faceshow.aaspring.modulars.live.common;

import com.guochao.faceshow.aaspring.modulars.live.model.VoiceRoomPeopleInfoModel;
import com.guochao.faceshow.bean.UserBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$getUserInfo$1", f = "LivePeopleInfoCardFragmentV2.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class LivePeopleInfoCardFragmentV2$getUserInfo$1 extends SuspendLambda implements Function2<VoiceRoomPeopleInfoModel, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ LivePeopleInfoCardFragmentV2 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LivePeopleInfoCardFragmentV2$getUserInfo$1(LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2, Continuation<? super LivePeopleInfoCardFragmentV2$getUserInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = livePeopleInfoCardFragmentV2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        LivePeopleInfoCardFragmentV2$getUserInfo$1 livePeopleInfoCardFragmentV2$getUserInfo$1 = new LivePeopleInfoCardFragmentV2$getUserInfo$1(this.this$0, continuation);
        livePeopleInfoCardFragmentV2$getUserInfo$1.L$0 = obj;
        return livePeopleInfoCardFragmentV2$getUserInfo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@Nullable VoiceRoomPeopleInfoModel voiceRoomPeopleInfoModel, @Nullable Continuation<? super Unit> continuation) {
        return ((LivePeopleInfoCardFragmentV2$getUserInfo$1) create(voiceRoomPeopleInfoModel, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            VoiceRoomPeopleInfoModel voiceRoomPeopleInfoModel = (VoiceRoomPeopleInfoModel) this.L$0;
            if (voiceRoomPeopleInfoModel != null) {
                UserBean.UserMvpInfo mvpUserInfoResult = voiceRoomPeopleInfoModel.getMvpUserInfoResult();
                voiceRoomPeopleInfoModel.setMvpUrl((mvpUserInfoResult == null || (r0 = mvpUserInfoResult.mvpUrl) == null) ? "" : "");
                if (this.this$0.isAdded()) {
                    this.this$0.setData(voiceRoomPeopleInfoModel);
                }
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
