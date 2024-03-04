package com.facebook.appevents.cloudbridge;

import com.facebook.internal.Utility;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n"}, d2 = {"", "<anonymous parameter 0>", "", "responseCode", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1 extends Lambda implements Function2<String, Integer, Unit> {
    final /* synthetic */ List<Map<String, Object>> $processedEvents;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1(List<? extends Map<String, ? extends Object>> list) {
        super(2);
        this.$processedEvents = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-0  reason: not valid java name */
    public static final void m85invoke$lambda0(Integer num, List processedEvents) {
        HashSet hashSet;
        boolean contains;
        Intrinsics.checkNotNullParameter(processedEvents, "$processedEvents");
        hashSet = AppEventsConversionsAPITransformerWebRequests.ACCEPTABLE_HTTP_RESPONSE;
        contains = CollectionsKt___CollectionsKt.contains(hashSet, num);
        if (contains) {
            return;
        }
        AppEventsConversionsAPITransformerWebRequests.INSTANCE.handleError$facebook_core_release(num, processedEvents, 5);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public /* bridge */ /* synthetic */ Unit mo1invoke(String str, Integer num) {
        invoke2(str, num);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable String str, @Nullable final Integer num) {
        Utility utility = Utility.INSTANCE;
        final List<Map<String, Object>> list = this.$processedEvents;
        Utility.runOnNonUiThread(new Runnable() { // from class: com.facebook.appevents.cloudbridge.c
            @Override // java.lang.Runnable
            public final void run() {
                AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1.m85invoke$lambda0(num, list);
            }
        });
    }
}
