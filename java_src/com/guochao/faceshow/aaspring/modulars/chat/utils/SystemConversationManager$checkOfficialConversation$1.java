package com.guochao.faceshow.aaspring.modulars.chat.utils;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager", f = "SystemConversationManager.kt", i = {}, l = {237}, m = "checkOfficialConversation", n = {}, s = {})
/* loaded from: classes3.dex */
public final class SystemConversationManager$checkOfficialConversation$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SystemConversationManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemConversationManager$checkOfficialConversation$1(SystemConversationManager systemConversationManager, Continuation<? super SystemConversationManager$checkOfficialConversation$1> continuation) {
        super(continuation);
        this.this$0 = systemConversationManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object checkOfficialConversation;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        checkOfficialConversation = this.this$0.checkOfficialConversation(null, this);
        return checkOfficialConversation;
    }
}
