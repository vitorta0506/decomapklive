package com.guochao.component.voiceliveroom.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.component.voiceliveroom.event.VoiceRoomRemoveEvent;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberListItemModel;
import com.guochao.component.voiceliveroom.repository.VoiceRoomMemberRepository;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$memberRemove$1", f = "VoiceRoomMemberViewModel.kt", i = {}, l = {218}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomMemberViewModel$memberRemove$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GCValueCallback<Boolean> $gcValueCallback;
    final /* synthetic */ ArrayList<String> $removeUserIds;
    final /* synthetic */ String $roomId;
    int label;
    final /* synthetic */ VoiceRoomMemberViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomMemberViewModel$memberRemove$1(VoiceRoomMemberViewModel voiceRoomMemberViewModel, String str, ArrayList<String> arrayList, GCValueCallback<Boolean> gCValueCallback, Continuation<? super VoiceRoomMemberViewModel$memberRemove$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomMemberViewModel;
        this.$roomId = str;
        this.$removeUserIds = arrayList;
        this.$gcValueCallback = gCValueCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomMemberViewModel$memberRemove$1(this.this$0, this.$roomId, this.$removeUserIds, this.$gcValueCallback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomMemberViewModel$memberRemove$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        VoiceRoomMemberRepository voiceRoomMemberRepository;
        boolean contains;
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            voiceRoomMemberRepository = this.this$0.repository;
            String str = this.$roomId;
            ArrayList<String> arrayList = this.$removeUserIds;
            this.label = 1;
            obj = voiceRoomMemberRepository.memberRemove(str, arrayList, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Response response = (Response) obj;
        this.$gcValueCallback.onValue(Boxing.boxBoolean(response.isSuccessful()));
        if (response.isSuccessful()) {
            ArrayList<String> arrayList2 = this.$removeUserIds;
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            contains = CollectionsKt___CollectionsKt.contains(arrayList2, current != null ? current.getUserId() : null);
            if (contains) {
                EventBus.getDefault().post(new VoiceRoomRemoveEvent(this.$roomId));
            }
            ArrayList<String> arrayList3 = this.$removeUserIds;
            final VoiceRoomMemberViewModel voiceRoomMemberViewModel = this.this$0;
            for (final String str2 : arrayList3) {
                mutableLiveData = voiceRoomMemberViewModel._memberList;
                mutableLiveData2 = voiceRoomMemberViewModel._memberList;
                List list = (List) mutableLiveData2.getValue();
                if (list != null) {
                    Intrinsics.checkNotNullExpressionValue(list, "");
                    CollectionsKt__MutableCollectionsKt.removeAll(list, (Function1) new Function1<VoiceRoomMemberListItemModel, Boolean>() { // from class: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$memberRemove$1$1$1$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
                            r6 = r2.mSeatControllerViewModel;
                         */
                        @Override // kotlin.jvm.functions.Function1
                        @org.jetbrains.annotations.NotNull
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull com.guochao.component.voiceliveroom.model.VoiceRoomMemberListItemModel r6) {
                            /*
                                r5 = this;
                                java.lang.String r0 = "it"
                                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                                com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel r0 = r6.getModel()
                                r1 = 0
                                if (r0 == 0) goto L11
                                java.lang.String r0 = r0.getUserId()
                                goto L12
                            L11:
                                r0 = r1
                            L12:
                                java.lang.String r2 = r1
                                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r2)
                                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                                com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel r2 = r2
                                boolean r3 = r0.booleanValue()
                                if (r3 == 0) goto L5d
                                com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel r3 = r6.getModel()
                                r4 = 30
                                if (r3 != 0) goto L2d
                                goto L30
                            L2d:
                                r3.setMemberType(r4)
                            L30:
                                com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel r6 = r6.getModel()
                                if (r6 == 0) goto L3b
                                java.lang.String r6 = r6.getUserId()
                                goto L3c
                            L3b:
                                r6 = r1
                            L3c:
                                com.guochao.faceshow.session.viewmodel.UserSessionViewModel$Companion r3 = com.guochao.faceshow.session.viewmodel.UserSessionViewModel.Companion
                                com.guochao.faceshow.session.viewmodel.UserSessionViewModel r3 = r3.instance()
                                com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel r3 = r3.current()
                                com.guochao.faceshow.session.model.UserSessionModel r3 = (com.guochao.faceshow.session.model.UserSessionModel) r3
                                if (r3 == 0) goto L4e
                                java.lang.String r1 = r3.getUserId()
                            L4e:
                                boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r1)
                                if (r6 == 0) goto L5d
                                com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel r6 = com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel.access$getMSeatControllerViewModel$p(r2)
                                if (r6 == 0) goto L5d
                                r6.setRoleType(r4)
                            L5d:
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$memberRemove$1$1$1$1.invoke(com.guochao.component.voiceliveroom.model.VoiceRoomMemberListItemModel):java.lang.Boolean");
                        }
                    });
                } else {
                    list = null;
                }
                mutableLiveData.setValue(list);
            }
        }
        return Unit.INSTANCE;
    }
}
