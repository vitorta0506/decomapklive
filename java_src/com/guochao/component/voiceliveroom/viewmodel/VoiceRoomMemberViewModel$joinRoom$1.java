package com.guochao.component.voiceliveroom.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberListItemModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel;
import com.guochao.component.voiceliveroom.repository.VoiceRoomMemberRepository;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$joinRoom$1", f = "VoiceRoomMemberViewModel.kt", i = {}, l = {168}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomMemberViewModel$joinRoom$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GCValueCallback<Boolean> $gcValueCallback;
    final /* synthetic */ String $roomId;
    int label;
    final /* synthetic */ VoiceRoomMemberViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomMemberViewModel$joinRoom$1(VoiceRoomMemberViewModel voiceRoomMemberViewModel, String str, GCValueCallback<Boolean> gCValueCallback, Continuation<? super VoiceRoomMemberViewModel$joinRoom$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomMemberViewModel;
        this.$roomId = str;
        this.$gcValueCallback = gCValueCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomMemberViewModel$joinRoom$1(this.this$0, this.$roomId, this.$gcValueCallback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomMemberViewModel$joinRoom$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        VoiceRoomMemberRepository voiceRoomMemberRepository;
        Object joinRoom;
        VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel;
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        MutableLiveData mutableLiveData3;
        MutableLiveData mutableLiveData4;
        MutableLiveData mutableLiveData5;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            voiceRoomMemberRepository = this.this$0.repository;
            String str = this.$roomId;
            this.label = 1;
            joinRoom = voiceRoomMemberRepository.joinRoom(str, this);
            if (joinRoom == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
            joinRoom = obj;
        }
        Response response = (Response) joinRoom;
        this.$gcValueCallback.onValue(Boxing.boxBoolean(response.isSuccessful()));
        if (response.isSuccessful()) {
            voiceRoomSeatControllerViewModel = this.this$0.mSeatControllerViewModel;
            if (voiceRoomSeatControllerViewModel != null) {
                voiceRoomSeatControllerViewModel.setRoleType(20);
            }
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            mutableLiveData = this.this$0._memberList;
            List<VoiceRoomMemberListItemModel> list = (List) mutableLiveData.getValue();
            if (list != null) {
                for (VoiceRoomMemberListItemModel voiceRoomMemberListItemModel : list) {
                    VoiceRoomMemberModel model = voiceRoomMemberListItemModel.getModel();
                    if (Intrinsics.areEqual(model != null ? model.getUserId() : null, current != null ? current.getUserId() : null)) {
                        booleanRef.element = true;
                        VoiceRoomMemberModel model2 = voiceRoomMemberListItemModel.getModel();
                        if (model2 != null) {
                            model2.setMemberType(20);
                        }
                    }
                }
            }
            if (booleanRef.element) {
                mutableLiveData4 = this.this$0._memberList;
                mutableLiveData5 = this.this$0._memberList;
                mutableLiveData4.setValue(mutableLiveData5.getValue());
            } else {
                mutableLiveData2 = this.this$0._memberList;
                mutableLiveData3 = this.this$0._memberList;
                List list2 = (List) mutableLiveData3.getValue();
                if (list2 != 0) {
                    list2.add(0, new VoiceRoomMemberListItemModel(-1, new VoiceRoomMemberModel(current != null ? current.getUserId() : null, current != null ? current.getNickName() : null, 0, 0, 0, current != null ? current.getUserAvatar() : null, null, 20, current != null ? current.getGender() : 0, null, null, null, 0, 0, null, 32348, null), false, 4, null));
                    r7 = list2;
                }
                mutableLiveData2.setValue(r7);
            }
        }
        if (!response.isSuccessful()) {
            this.$gcValueCallback.onError(response.getCode(), response.getMsg());
        }
        return Unit.INSTANCE;
    }
}
