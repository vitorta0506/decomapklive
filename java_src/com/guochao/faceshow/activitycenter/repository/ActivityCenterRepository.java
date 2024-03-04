package com.guochao.faceshow.activitycenter.repository;

import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.BannerBeanData;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J/\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/activitycenter/repository/ActivityCenterRepository;", "", "()V", "loadActivityList", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;", "page", "", "size", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class ActivityCenterRepository {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String URL_ACTIVITY_LIST = "tokens/banner/findAppBannerToday";

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/activitycenter/repository/ActivityCenterRepository$Companion;", "", "()V", "URL_ACTIVITY_LIST", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ Object loadActivityList$default(ActivityCenterRepository activityCenterRepository, int i9, int i10, Continuation continuation, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = 20;
            }
            return activityCenterRepository.loadActivityList(i9, i10, continuation);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadActivityList");
    }

    @Nullable
    public final Object loadActivityList(int i9, int i10, @NotNull Continuation<? super Response<List<BannerBeanData>>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ActivityCenterRepository$loadActivityList$2(i9, i10, null), continuation);
    }
}
