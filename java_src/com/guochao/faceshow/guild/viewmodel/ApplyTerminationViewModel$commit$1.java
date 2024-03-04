package com.guochao.faceshow.guild.viewmodel;

import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import java.util.ArrayList;
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
@DebugMetadata(c = "com.guochao.faceshow.guild.viewmodel.ApplyTerminationViewModel$commit$1", f = "ApplyTerminationViewModel.kt", i = {0}, l = {157}, m = "invokeSuspend", n = {"pictureUrlArray"}, s = {"L$0"})
/* loaded from: classes4.dex */
public final class ApplyTerminationViewModel$commit$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ArrayList<LocalImageOrVideoBean> $pictureLocalList;
    final /* synthetic */ String $reason;
    final /* synthetic */ Integer $recordId;
    final /* synthetic */ Integer $signId;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ ApplyTerminationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyTerminationViewModel$commit$1(ArrayList<LocalImageOrVideoBean> arrayList, String str, Integer num, Integer num2, ApplyTerminationViewModel applyTerminationViewModel, Continuation<? super ApplyTerminationViewModel$commit$1> continuation) {
        super(2, continuation);
        this.$pictureLocalList = arrayList;
        this.$reason = str;
        this.$signId = num;
        this.$recordId = num2;
        this.this$0 = applyTerminationViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ApplyTerminationViewModel$commit$1(this.$pictureLocalList, this.$reason, this.$signId, this.$recordId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ApplyTerminationViewModel$commit$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x008f -> B:20:0x0096). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.guild.viewmodel.ApplyTerminationViewModel$commit$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
