package com.guochao.lib_core.feature;

import android.util.ArrayMap;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.Contants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u0006\u0010\b\u001a\u00020\u0003J\b\u0010\t\u001a\u0004\u0018\u00010\u0003J\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/guochao/lib_core/feature/Feature;", "", "featureName", "", "available", "", "paramJson", "(Ljava/lang/String;ZLjava/lang/String;)V", "getFeatureName", "getParamJson", "isAvailable", "setAvailable", "", "Companion", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Feature {
    @NotNull
    public static final String APPOINT_SQUARE = "appoint_square";
    @NotNull
    public static final String EARN_DIAMOND = "invite_earn_diamond";
    @NotNull
    public static final String EARN_MONEY = "invite_earn_money";
    @NotNull
    public static final String FIRST_RECHARGE = "new_first_recharge_gift_config";
    @NotNull
    public static final String F_WITHDRAW_DIAMOND = "user_f_to_diamond";
    @NotNull
    public static final String F_WITHDRAW_MONEY = "user_f_to_money";
    @NotNull
    public static final String HELLO_STAR = "hello_star";
    @NotNull
    public static final String LIVE_IM_MSG = "live_im_msg";
    @NotNull
    public static final String LIVE_MICROPHONE_MULTI = "live_microphone_multi";
    @NotNull
    public static final String LIVE_MICROPHONE_SINGLE = "live_microphone_single";
    @NotNull
    public static final String LIVE_TO_1V1_ANCHOR = "live_to_1v1_anchor";
    @NotNull
    public static final String LIVE_TO_1V1_USER = "live_to_1v1_user";
    @NotNull
    public static final String MVP_CUSTOMER_SERVICE = "user_mvp";
    @NotNull
    public static final String PLANET_MATCH = "planet_match";
    @NotNull
    public static final String VOICE_ROOM_SWITCH = "live_voice_room_config";
    @NotNull
    private static final FeatureViewModel viewModel;
    private boolean available;
    @NotNull
    private String featureName;
    @Nullable
    private String paramJson;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ArrayMap<String, Feature> features = new ArrayMap<>();

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0007J\u0015\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0004H\u0001¢\u0006\u0002\b\u001fJ\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\"\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0016\u0010\u0002R\u0014\u0010\u0017\u001a\u00020\u0018X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006\""}, d2 = {"Lcom/guochao/lib_core/feature/Feature$Companion;", "", "()V", "APPOINT_SQUARE", "", "EARN_DIAMOND", "EARN_MONEY", "FIRST_RECHARGE", "F_WITHDRAW_DIAMOND", "F_WITHDRAW_MONEY", "HELLO_STAR", "LIVE_IM_MSG", "LIVE_MICROPHONE_MULTI", "LIVE_MICROPHONE_SINGLE", "LIVE_TO_1V1_ANCHOR", "LIVE_TO_1V1_USER", "MVP_CUSTOMER_SERVICE", "PLANET_MATCH", "VOICE_ROOM_SWITCH", "features", "Landroid/util/ArrayMap;", "Lcom/guochao/lib_core/feature/Feature;", "getFeatures$annotations", "viewModel", "Lcom/guochao/lib_core/feature/FeatureViewModel;", "getViewModel$lib_core_release", "()Lcom/guochao/lib_core/feature/FeatureViewModel;", "fetch", "", "findFeature", "name", "findFeature$lib_core_release", "loadCacheFirst", Contants.USER_ID, "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        private static /* synthetic */ void getFeatures$annotations() {
        }

        @JvmStatic
        public final void fetch() {
            getViewModel$lib_core_release().loadData();
        }

        @JvmStatic
        @NotNull
        public final Feature findFeature$lib_core_release(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            Feature feature = (Feature) Feature.features.get(name);
            if (feature == null) {
                Feature feature2 = new Feature(name, false, null, 6, null);
                Feature.features.put(name, feature2);
                return feature2;
            }
            return feature;
        }

        @NotNull
        public final FeatureViewModel getViewModel$lib_core_release() {
            return Feature.viewModel;
        }

        @JvmStatic
        public final void loadCacheFirst(@NotNull String userId) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            getViewModel$lib_core_release().loadCache(userId);
        }
    }

    static {
        GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        FeatureViewModel featureViewModel = (FeatureViewModel) ((BaseViewModel) new ViewModelProvider(app).get(FeatureViewModel.class));
        featureViewModel.bind(null, new Observer() { // from class: com.guochao.lib_core.feature.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Feature.m803viewModel$lambda2$lambda1((FeatureResult) obj);
            }
        });
        viewModel = featureViewModel;
    }

    public Feature(@NotNull String featureName, boolean z10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(featureName, "featureName");
        this.featureName = featureName;
        this.available = z10;
        this.paramJson = str;
    }

    @JvmStatic
    public static final void fetch() {
        Companion.fetch();
    }

    @JvmStatic
    public static final void loadCacheFirst(@NotNull String str) {
        Companion.loadCacheFirst(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: viewModel$lambda-2$lambda-1  reason: not valid java name */
    public static final void m803viewModel$lambda2$lambda1(FeatureResult featureResult) {
        Map<String, FeatureResultData> resultMap;
        if (featureResult == null || (resultMap = featureResult.getResultMap()) == null) {
            return;
        }
        for (Map.Entry<String, FeatureResultData> entry : resultMap.entrySet()) {
            features.put(entry.getKey(), new Feature(entry.getKey(), entry.getValue().getOpen() == 1, entry.getValue().getParamJson()));
            if (Intrinsics.areEqual(entry.getKey(), HELLO_STAR) && entry.getValue().getOpen() == 1) {
                EventBus.getDefault().post("Check_hello_gift");
            }
        }
    }

    @NotNull
    public final String getFeatureName() {
        return this.featureName;
    }

    @Nullable
    public final String getParamJson() {
        return this.paramJson;
    }

    public final boolean isAvailable() {
        return this.available;
    }

    public final void setAvailable(boolean z10) {
        this.available = z10;
    }

    public /* synthetic */ Feature(String str, boolean z10, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? false : z10, (i9 & 4) != 0 ? "" : str2);
    }
}
