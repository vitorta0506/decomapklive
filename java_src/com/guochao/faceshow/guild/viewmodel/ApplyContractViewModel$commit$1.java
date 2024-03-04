package com.guochao.faceshow.guild.viewmodel;

import android.content.Context;
import cn.jiguang.android.BuildConfig;
import com.facebook.share.internal.ShareConstants;
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
@DebugMetadata(c = "com.guochao.faceshow.guild.viewmodel.ApplyContractViewModel$commit$1", f = "ApplyContractViewModel.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8}, l = {272, 279, BuildConfig.VERSION_CODE, 302, 314, 326, 333, 338, 352}, m = "invokeSuspend", n = {"pictureLocalList", "videoUrlArray", "otherVideoUrlArray", "pictureUrlArray", ShareConstants.MEDIA_URI, "index$iv", "pictureLocalList", "videoUrlArray", "otherVideoUrlArray", "pictureUrlArray", "index$iv", "pictureLocalList", "videoUrlArray", "otherVideoUrlArray", "pictureUrlArray", "index$iv", "pictureLocalList", "videoUrlArray", "otherVideoUrlArray", "pictureUrlArray", "pictureLocalList", "videoUrlArray", "otherVideoUrlArray", "pictureUrlArray", "cover", "pictureLocalList", "videoUrlArray", "otherVideoUrlArray", "pictureUrlArray", "cover", "other", "it", "pictureLocalList", "videoUrlArray", "otherVideoUrlArray", "pictureUrlArray", "cover", "other", "pictureLocalList", "videoUrlArray", "otherVideoUrlArray", "pictureUrlArray", "cover", "other", "videoUrlArray", "otherVideoUrlArray", "pictureUrlArray", "cover", "other"}, s = {"L$0", "L$1", "L$2", "L$3", "L$7", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$9", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1", "L$2", "L$3", "L$4"})
/* loaded from: classes4.dex */
public final class ApplyContractViewModel$commit$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ String $country_num;
    final /* synthetic */ String $email;
    final /* synthetic */ String $faceBook;
    final /* synthetic */ int $fansNum;
    final /* synthetic */ String $guildId;
    final /* synthetic */ String $instagram;
    final /* synthetic */ List<String> $langIdList;
    final /* synthetic */ double $monthFlow;
    final /* synthetic */ String $officeCode;
    final /* synthetic */ String $outSide;
    final /* synthetic */ String $phone;
    final /* synthetic */ int $signType;
    final /* synthetic */ String $whatsApp;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    Object L$9;
    int label;
    final /* synthetic */ ApplyContractViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyContractViewModel$commit$1(ApplyContractViewModel applyContractViewModel, String str, String str2, String str3, String str4, String str5, String str6, int i9, List<String> list, String str7, int i10, String str8, double d10, String str9, Context context, Continuation<? super ApplyContractViewModel$commit$1> continuation) {
        super(2, continuation);
        this.this$0 = applyContractViewModel;
        this.$email = str;
        this.$country_num = str2;
        this.$phone = str3;
        this.$whatsApp = str4;
        this.$faceBook = str5;
        this.$instagram = str6;
        this.$signType = i9;
        this.$langIdList = list;
        this.$officeCode = str7;
        this.$fansNum = i10;
        this.$outSide = str8;
        this.$monthFlow = d10;
        this.$guildId = str9;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ApplyContractViewModel$commit$1(this.this$0, this.$email, this.$country_num, this.$phone, this.$whatsApp, this.$faceBook, this.$instagram, this.$signType, this.$langIdList, this.$officeCode, this.$fansNum, this.$outSide, this.$monthFlow, this.$guildId, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ApplyContractViewModel$commit$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x052a  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0596  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x05ed  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x05f2  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0621  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0623  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0628  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x028a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x049b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x050b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x057e -> B:109:0x0583). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x02c1 -> B:46:0x032e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x02fe -> B:42:0x02ff). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x04a2 -> B:96:0x0507). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x04fd -> B:95:0x04fe). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r25) {
        /*
            Method dump skipped, instructions count: 1866
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.guild.viewmodel.ApplyContractViewModel$commit$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
