package com.guochao.faceshow.guild.viewmodel;

import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.guild.viewmodel.ComplaintViewModel$commit$1", f = "ComplaintViewModel.kt", i = {0}, l = {154}, m = "invokeSuspend", n = {"pictureUrlArray"}, s = {"L$0"})
/* loaded from: classes4.dex */
public final class ComplaintViewModel$commit$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<ArrayList<LocalImageOrVideoBean>> $pictureLocalList;
    final /* synthetic */ String $reason;
    final /* synthetic */ Integer $recordId;
    final /* synthetic */ Integer $signId;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ ComplaintViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComplaintViewModel$commit$1(Ref.ObjectRef<ArrayList<LocalImageOrVideoBean>> objectRef, String str, Integer num, Integer num2, ComplaintViewModel complaintViewModel, Continuation<? super ComplaintViewModel$commit$1> continuation) {
        super(2, continuation);
        this.$pictureLocalList = objectRef;
        this.$reason = str;
        this.$signId = num;
        this.$recordId = num2;
        this.this$0 = complaintViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ComplaintViewModel$commit$1(this.$pictureLocalList, this.$reason, this.$signId, this.$recordId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ComplaintViewModel$commit$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0093 -> B:20:0x009a). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.guild.viewmodel.ComplaintViewModel$commit$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
