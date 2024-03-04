package com.guochao.component.voiceliveroom.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomVisitorListModel;
import com.guochao.component.voiceliveroom.repository.VoiceRoomMemberRepository;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.util.ArrayList;
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
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$loadVisitorList$1", f = "VoiceRoomMemberViewModel.kt", i = {}, l = {TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomMemberViewModel$loadVisitorList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $refresh;
    final /* synthetic */ String $roomId;
    final /* synthetic */ int $size;
    int label;
    final /* synthetic */ VoiceRoomMemberViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomMemberViewModel$loadVisitorList$1(boolean z10, VoiceRoomMemberViewModel voiceRoomMemberViewModel, String str, int i9, Continuation<? super VoiceRoomMemberViewModel$loadVisitorList$1> continuation) {
        super(2, continuation);
        this.$refresh = z10;
        this.this$0 = voiceRoomMemberViewModel;
        this.$roomId = str;
        this.$size = i9;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomMemberViewModel$loadVisitorList$1(this.$refresh, this.this$0, this.$roomId, this.$size, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomMemberViewModel$loadVisitorList$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        VoiceRoomMemberRepository voiceRoomMemberRepository;
        int i9;
        int i10;
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        ArrayList<VoiceRoomMemberModel> list;
        MutableLiveData mutableLiveData3;
        ArrayList<VoiceRoomMemberModel> list2;
        int i11;
        MutableLiveData mutableLiveData4;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i12 = this.label;
        if (i12 == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.$refresh) {
                this.this$0.visitorPage = 1;
            }
            voiceRoomMemberRepository = this.this$0.repository;
            String str = this.$roomId;
            i9 = this.this$0.visitorPage;
            int i13 = this.$size;
            this.label = 1;
            obj = voiceRoomMemberRepository.getVisitorList(str, i9, i13, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Response response = (Response) obj;
        if (response.isSuccessful()) {
            i10 = this.this$0.visitorPage;
            if (i10 == 1) {
                mutableLiveData4 = this.this$0._visitorList;
                mutableLiveData4.setValue(response.getData());
            } else {
                VoiceRoomVisitorListModel voiceRoomVisitorListModel = (VoiceRoomVisitorListModel) response.getData();
                if (voiceRoomVisitorListModel != null && (list = voiceRoomVisitorListModel.getList()) != null) {
                    mutableLiveData3 = this.this$0._visitorList;
                    VoiceRoomVisitorListModel voiceRoomVisitorListModel2 = (VoiceRoomVisitorListModel) mutableLiveData3.getValue();
                    if (voiceRoomVisitorListModel2 != null && (list2 = voiceRoomVisitorListModel2.getList()) != null) {
                        Boxing.boxBoolean(list2.addAll(list));
                    }
                }
                mutableLiveData = this.this$0._visitorList;
                mutableLiveData2 = this.this$0._visitorList;
                mutableLiveData.setValue(mutableLiveData2.getValue());
            }
            VoiceRoomMemberViewModel voiceRoomMemberViewModel = this.this$0;
            i11 = voiceRoomMemberViewModel.visitorPage;
            voiceRoomMemberViewModel.visitorPage = i11 + 1;
        }
        return Unit.INSTANCE;
    }
}
