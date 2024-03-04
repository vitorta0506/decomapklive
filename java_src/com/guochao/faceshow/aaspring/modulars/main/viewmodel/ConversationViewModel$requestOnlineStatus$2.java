package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import androidx.collection.ArrayMap;
import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$requestOnlineStatus$2", f = "ConversationViewModel.kt", i = {}, l = {209}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ConversationViewModel$requestOnlineStatus$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ArrayList<Integer> $intArray;
    final /* synthetic */ List<ConversationInfo> $list;
    int label;
    final /* synthetic */ ConversationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ConversationViewModel$requestOnlineStatus$2(ConversationViewModel conversationViewModel, ArrayList<Integer> arrayList, List<? extends ConversationInfo> list, Continuation<? super ConversationViewModel$requestOnlineStatus$2> continuation) {
        super(2, continuation);
        this.this$0 = conversationViewModel;
        this.$intArray = arrayList;
        this.$list = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ConversationViewModel$requestOnlineStatus$2(this.this$0, this.$intArray, this.$list, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ConversationViewModel$requestOnlineStatus$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        int[] intArray;
        MutableLiveData modelLiveData;
        int unread;
        ArrayMap arrayMap;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            ConversationViewModel conversationViewModel = this.this$0;
            intArray = CollectionsKt___CollectionsKt.toIntArray(this.$intArray);
            this.label = 1;
            obj = conversationViewModel.requestOnlineStatusToServer(intArray, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        ConversationModel.OnlineStatusModel onlineStatusModel = (ConversationModel.OnlineStatusModel) obj;
        if (onlineStatusModel != null) {
            ConversationViewModel conversationViewModel2 = this.this$0;
            List<ConversationInfo> list = this.$list;
            if (onlineStatusModel.getOnlineMap() != null) {
                for (Map.Entry<String, ConversationModel.Online> entry : onlineStatusModel.getOnlineMap().entrySet()) {
                    entry.getValue().setRequestTime(System.currentTimeMillis());
                }
                arrayMap = conversationViewModel2.onlineMap;
                arrayMap.putAll(onlineStatusModel.getOnlineMap());
            }
            for (ConversationInfo conversationInfo : list) {
                LinkedHashMap<String, ConversationModel.Online> onlineMap = onlineStatusModel.getOnlineMap();
                ConversationModel.Online remove = onlineMap != null ? onlineMap.remove(conversationInfo.getConversationId()) : null;
                if (remove != null) {
                    conversationInfo.setOnlineStatus(Intrinsics.areEqual(remove.getUserOnlineEnum(), "LOGIN") ? 1 : 0);
                    conversationInfo.setLastOnlineTimestamp(remove.getOnlineTimestamp());
                } else {
                    conversationInfo.setOnlineStatus(0);
                }
                conversationInfo.setLastCheckOnlineTimestamp(System.currentTimeMillis());
            }
            ArrayList arrayList = new ArrayList(list);
            arrayList.addAll(conversationViewModel2.systemConversations);
            CollectionsKt__MutableCollectionsJVMKt.sort(arrayList);
            modelLiveData = conversationViewModel2.getModelLiveData();
            unread = conversationViewModel2.getUnread(arrayList);
            modelLiveData.setValue(new ConversationModel.ConversationListModel(arrayList, unread));
        }
        return Unit.INSTANCE;
    }
}
