package com.guochao.faceshow.aaspring.modulars.chat.utils;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.guochao.faceshow.aaspring.beans.SystemConversationMessage;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import java.util.List;
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
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$handleConversations$2", f = "SystemConversationManager.kt", i = {}, l = {EventTrackingUtils.EVENT_TRACKING_RESULT_CODE, 184, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 201}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class SystemConversationManager$handleConversations$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<SystemConversationMessage> $systemConversationMessage;
    Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemConversationManager$handleConversations$2(List<SystemConversationMessage> list, Continuation<? super SystemConversationManager$handleConversations$2> continuation) {
        super(2, continuation);
        this.$systemConversationMessage = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new SystemConversationManager$handleConversations$2(this.$systemConversationMessage, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((SystemConversationManager$handleConversations$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c5  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r12.label
            java.lang.String r2 = "system_official"
            r3 = 4
            r4 = 0
            r5 = 3
            r6 = 2
            r7 = 1
            if (r1 == 0) goto L30
            if (r1 == r7) goto L24
            if (r1 == r6) goto L24
            if (r1 == r5) goto L24
            if (r1 != r3) goto L1c
            kotlin.ResultKt.throwOnFailure(r13)
            goto Ld2
        L1c:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L24:
            java.lang.Object r1 = r12.L$1
            java.util.Iterator r1 = (java.util.Iterator) r1
            java.lang.Object r8 = r12.L$0
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            kotlin.ResultKt.throwOnFailure(r13)
            goto L3c
        L30:
            kotlin.ResultKt.throwOnFailure(r13)
            java.util.List<com.guochao.faceshow.aaspring.beans.SystemConversationMessage> r13 = r12.$systemConversationMessage
            if (r13 == 0) goto Lb0
            java.util.Iterator r1 = r13.iterator()
            r8 = r13
        L3c:
            r13 = r12
        L3d:
            boolean r9 = r1.hasNext()
            if (r9 == 0) goto Lad
            java.lang.Object r9 = r1.next()
            com.guochao.faceshow.aaspring.beans.SystemConversationMessage r9 = (com.guochao.faceshow.aaspring.beans.SystemConversationMessage) r9
            if (r9 == 0) goto L54
            int r10 = r9.getMessageType()
            java.lang.Integer r10 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r10)
            goto L55
        L54:
            r10 = r4
        L55:
            if (r10 != 0) goto L58
            goto L71
        L58:
            int r11 = r10.intValue()
            if (r11 != r7) goto L71
            com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager r10 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.INSTANCE
            com.guochao.faceshow.aaspring.beans.ConversationInfo r11 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$findConversation(r10, r2)
            r13.L$0 = r8
            r13.L$1 = r1
            r13.label = r7
            java.lang.Object r9 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$handleNewMessage(r10, r11, r9, r13)
            if (r9 != r0) goto L3d
            return r0
        L71:
            if (r10 != 0) goto L74
            goto L8f
        L74:
            int r11 = r10.intValue()
            if (r11 != r6) goto L8f
            com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager r10 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.INSTANCE
            java.lang.String r11 = "system_focused"
            com.guochao.faceshow.aaspring.beans.ConversationInfo r11 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$findConversation(r10, r11)
            r13.L$0 = r8
            r13.L$1 = r1
            r13.label = r6
            java.lang.Object r9 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$handleNewMessage(r10, r11, r9, r13)
            if (r9 != r0) goto L3d
            return r0
        L8f:
            if (r10 != 0) goto L92
            goto L3d
        L92:
            int r10 = r10.intValue()
            if (r10 != r5) goto L3d
            com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager r10 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.INSTANCE
            java.lang.String r11 = "system_interaction"
            com.guochao.faceshow.aaspring.beans.ConversationInfo r11 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$findConversation(r10, r11)
            r13.L$0 = r8
            r13.L$1 = r1
            r13.label = r5
            java.lang.Object r9 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$handleNewMessage(r10, r11, r9, r13)
            if (r9 != r0) goto L3d
            return r0
        Lad:
            java.util.List r8 = (java.util.List) r8
            goto Lb1
        Lb0:
            r13 = r12
        Lb1:
            com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager r1 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.INSTANCE
            com.guochao.faceshow.aaspring.beans.ConversationInfo r2 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$findConversation(r1, r2)
            if (r2 != 0) goto Lc5
            androidx.lifecycle.MutableLiveData r13 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$getSystemConversations$p()
            java.util.List r0 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$getSystemConversationList$p()
            r13.setValue(r0)
            goto Ldd
        Lc5:
            r13.L$0 = r4
            r13.L$1 = r4
            r13.label = r3
            java.lang.Object r13 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$checkOfficialConversation(r1, r2, r13)
            if (r13 != r0) goto Ld2
            return r0
        Ld2:
            androidx.lifecycle.MutableLiveData r13 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$getSystemConversations$p()
            java.util.List r0 = com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager.access$getSystemConversationList$p()
            r13.setValue(r0)
        Ldd:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$handleConversations$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
