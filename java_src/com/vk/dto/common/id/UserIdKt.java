package com.vk.dto.common.id;

import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0006\u001a\n\u0010\u0007\u001a\u00020\b*\u00020\u0006\u001a\n\u0010\t\u001a\u00020\b*\u00020\u0006\u001a\n\u0010\n\u001a\u00020\b*\u00020\u0006\u001a\f\u0010\u000b\u001a\u00020\f*\u00020\u0006H\u0007\u001a\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000e*\b\u0012\u0004\u0012\u00020\u00060\u000eH\u0007\u001a\n\u0010\u000f\u001a\u00020\u0006*\u00020\u0006\u001a\f\u0010\u0010\u001a\u00020\u0006*\u00020\fH\u0007\u001a\n\u0010\u0011\u001a\u00020\u0006*\u00020\u0012\u001a\r\u0010\u0013\u001a\u00020\u0006*\u00020\u0006H\u0086\u0002\"\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0003\u0010\u0004¨\u0006\u0014"}, d2 = {"legacyObserver", "Lkotlin/Function0;", "", "getLegacyObserver$annotations", "()V", "abs", "Lcom/vk/dto/common/id/UserId;", "isGroupId", "", "isReal", "isUserId", "legacyValue", "", "mapLegacyValues", "", "negative", "toLegacyUserId", "toUserId", "", "unaryMinus", "id_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserIdKt {
    @NotNull
    private static volatile Function0<Unit> legacyObserver = new Function0<Unit>() { // from class: com.vk.dto.common.id.UserIdKt$legacyObserver$1
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }
    };

    @NotNull
    public static final UserId abs(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "<this>");
        return userId.copy(Math.abs(userId.getValue()));
    }

    public static final /* synthetic */ Function0 access$getLegacyObserver$p() {
        return legacyObserver;
    }

    public static final /* synthetic */ void access$setLegacyObserver$p(Function0 function0) {
        legacyObserver = function0;
    }

    @Deprecated(message = "Only for debug usage")
    private static /* synthetic */ void getLegacyObserver$annotations() {
    }

    public static final boolean isGroupId(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "<this>");
        return userId.getValue() < 0;
    }

    public static final boolean isReal(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "<this>");
        return userId.getValue() != 0;
    }

    public static final boolean isUserId(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "<this>");
        return userId.getValue() > 0;
    }

    @Deprecated(message = "don't use it in new code", replaceWith = @ReplaceWith(expression = "UserId()", imports = {"com.vk.dto.common.id.UserId"}))
    public static final int legacyValue(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "<this>");
        legacyObserver.invoke();
        return (int) userId.getValue();
    }

    @Deprecated(message = "don't use it in new code", replaceWith = @ReplaceWith(expression = "UserId()", imports = {"com.vk.dto.common.id.UserId"}))
    @NotNull
    public static final List<Integer> mapLegacyValues(@NotNull List<UserId> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        legacyObserver.invoke();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (UserId userId : list) {
            arrayList.add(Integer.valueOf(legacyValue(userId)));
        }
        return arrayList;
    }

    @NotNull
    public static final UserId negative(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "<this>");
        return userId.copy(-userId.getValue());
    }

    @Deprecated(message = "don't use it in new code", replaceWith = @ReplaceWith(expression = "toUserId()", imports = {"com.vk.dto.common.id"}))
    @NotNull
    public static final UserId toLegacyUserId(int i9) {
        legacyObserver.invoke();
        return new UserId(i9);
    }

    @NotNull
    public static final UserId toUserId(long j10) {
        return new UserId(j10);
    }

    @NotNull
    public static final UserId unaryMinus(@NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(userId, "<this>");
        return negative(userId);
    }
}
