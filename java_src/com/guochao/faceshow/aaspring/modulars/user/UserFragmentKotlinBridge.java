package com.guochao.faceshow.aaspring.modulars.user;

import android.view.View;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.aaspring.modulars.user.invalite.InviteUserActivity;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;", "", "Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;", "fragment", "", "observeFeatures", "Landroid/view/View;", ViewHierarchyConstants.VIEW_KEY, "clickMoney", "Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;", "listener", "checkInviteMoneyEnable", "checkInviteDiamondEnable", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class UserFragmentKotlinBridge {
    @NotNull
    public static final UserFragmentKotlinBridge INSTANCE = new UserFragmentKotlinBridge();

    private UserFragmentKotlinBridge() {
    }

    @JvmStatic
    public static final void checkInviteDiamondEnable(@NotNull final InviteUserActivity.h listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        FeatureKt.requireFeature(Feature.EARN_DIAMOND, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.user.UserFragmentKotlinBridge$checkInviteDiamondEnable$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
                final InviteUserActivity.h hVar = InviteUserActivity.h.this;
                FeatureKt.onAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.user.UserFragmentKotlinBridge$checkInviteDiamondEnable$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                        invoke2(feature);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Feature onAvailable) {
                        Intrinsics.checkNotNullParameter(onAvailable, "$this$onAvailable");
                        InviteUserActivity.h.this.a();
                    }
                });
                final InviteUserActivity.h hVar2 = InviteUserActivity.h.this;
                FeatureKt.onUnAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.user.UserFragmentKotlinBridge$checkInviteDiamondEnable$1.2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                        invoke2(feature);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Feature onUnAvailable) {
                        Intrinsics.checkNotNullParameter(onUnAvailable, "$this$onUnAvailable");
                        InviteUserActivity.h.this.b();
                    }
                });
            }
        });
    }

    @JvmStatic
    public static final void checkInviteMoneyEnable(@NotNull final InviteUserActivity.h listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        FeatureKt.requireFeature(Feature.EARN_MONEY, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.user.UserFragmentKotlinBridge$checkInviteMoneyEnable$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
                final InviteUserActivity.h hVar = InviteUserActivity.h.this;
                FeatureKt.onAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.user.UserFragmentKotlinBridge$checkInviteMoneyEnable$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                        invoke2(feature);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Feature onAvailable) {
                        Intrinsics.checkNotNullParameter(onAvailable, "$this$onAvailable");
                        InviteUserActivity.h.this.a();
                    }
                });
                final InviteUserActivity.h hVar2 = InviteUserActivity.h.this;
                FeatureKt.onUnAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.user.UserFragmentKotlinBridge$checkInviteMoneyEnable$1.2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                        invoke2(feature);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Feature onUnAvailable) {
                        Intrinsics.checkNotNullParameter(onUnAvailable, "$this$onUnAvailable");
                        InviteUserActivity.h.this.b();
                    }
                });
            }
        });
    }

    @JvmStatic
    public static final void clickMoney(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        InviteUserActivity.start(view.getContext());
    }

    @JvmStatic
    public static final void observeFeatures(@NotNull BaseUserFragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        FeatureKt.requireFeaturesCombinedOnLifecycle(fragment, new String[]{Feature.EARN_DIAMOND, Feature.EARN_MONEY}, new Function1<List<? extends Feature>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.user.UserFragmentKotlinBridge$observeFeatures$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends Feature> list) {
                invoke2((List<Feature>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<Feature> requireFeaturesCombinedOnLifecycle) {
                Intrinsics.checkNotNullParameter(requireFeaturesCombinedOnLifecycle, "$this$requireFeaturesCombinedOnLifecycle");
                for (Feature feature : requireFeaturesCombinedOnLifecycle) {
                    if (Intrinsics.areEqual(Feature.EARN_DIAMOND, feature.getFeatureName())) {
                        feature.isAvailable();
                    }
                    if (Intrinsics.areEqual(Feature.EARN_MONEY, feature.getFeatureName())) {
                        feature.isAvailable();
                    }
                }
            }
        });
    }
}
