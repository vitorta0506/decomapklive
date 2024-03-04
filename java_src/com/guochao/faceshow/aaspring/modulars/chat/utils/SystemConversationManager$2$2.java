package com.guochao.faceshow.aaspring.modulars.chat.utils;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import java.util.List;
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
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$2$2", f = "SystemConversationManager.kt", i = {}, l = {116}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class SystemConversationManager$2$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ConversationInfo $c;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemConversationManager$2$2(ConversationInfo conversationInfo, Continuation<? super SystemConversationManager$2$2> continuation) {
        super(2, continuation);
        this.$c = conversationInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new SystemConversationManager$2$2(this.$c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((SystemConversationManager$2$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Object checkOfficialConversation;
        MutableLiveData mutableLiveData;
        List list;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            SystemConversationManager systemConversationManager = SystemConversationManager.INSTANCE;
            ConversationInfo conversationInfo = this.$c;
            this.label = 1;
            checkOfficialConversation = systemConversationManager.checkOfficialConversation(conversationInfo, this);
            if (checkOfficialConversation == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        mutableLiveData = SystemConversationManager.systemConversations;
        list = SystemConversationManager.systemConversationList;
        mutableLiveData.setValue(list);
        return Unit.INSTANCE;
    }
}
