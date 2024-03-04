package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment;
import com.guochao.faceshow.component.live.utils.FloatFragmentUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J \u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0007¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;", "", "()V", "checkLiveFloatIM", "", "fragment", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "startChatFromLiveRoom", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;", Contants.USER_ID, "", "userName", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class KotlinBridge {
    @NotNull
    public static final KotlinBridge INSTANCE = new KotlinBridge();

    private KotlinBridge() {
    }

    @JvmStatic
    public static final void checkLiveFloatIM(@NotNull LiveChatFragment fragment, @NotNull View view) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(view, "view");
        final View findViewById = view.findViewById(R.id.live_im_btn);
        FeatureKt.requireFeature(Feature.LIVE_IM_MSG, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.KotlinBridge$checkLiveFloatIM$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                final View view2 = findViewById;
                FeatureKt.onAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.KotlinBridge$checkLiveFloatIM$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        View view3 = view2;
                        if (view3 == null) {
                            return;
                        }
                        view3.setVisibility(0);
                    }
                });
                final View view3 = findViewById;
                FeatureKt.onUnAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.KotlinBridge$checkLiveFloatIM$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        View view4 = view3;
                        if (view4 == null) {
                            return;
                        }
                        view4.setVisibility(8);
                    }
                });
            }
        });
    }

    @JvmStatic
    public static final void startChatFromLiveRoom(@NotNull final LivePeopleInfoCardFragment fragment, @NotNull final String userId, @NotNull final String userName) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(userName, "userName");
        if (fragment.getActivity() == null) {
            return;
        }
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.chat_page, "0");
        FeatureKt.requireFeature(Feature.LIVE_IM_MSG, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.KotlinBridge$startChatFromLiveRoom$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                final String str = userId;
                final LivePeopleInfoCardFragment livePeopleInfoCardFragment = fragment;
                final String str2 = userName;
                FeatureKt.onAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.KotlinBridge$startChatFromLiveRoom$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        ConversationInfo e02 = com.guochao.faceshow.aaspring.manager.im.b.l0().e0(str, false);
                        boolean z10 = true;
                        e02.setNewConversation(e02.getLastMsg() == null);
                        FragmentActivity activity = livePeopleInfoCardFragment.getActivity();
                        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
                        BaseLiveActivity baseLiveActivity = (BaseLiveActivity) activity;
                        ViewGroup viewGroup = baseLiveActivity.f18053e;
                        if ((viewGroup == null || viewGroup.getVisibility() != 8) ? false : false) {
                            ViewGroup viewGroup2 = baseLiveActivity.f18053e;
                            if (viewGroup2 != null) {
                                viewGroup2.setVisibility(0);
                            }
                            baseLiveActivity.r0();
                        }
                        LiveIMChatFloatFragment newInstance = LiveIMChatFloatFragment.Companion.newInstance(str, str2);
                        FragmentActivity activity2 = livePeopleInfoCardFragment.getActivity();
                        Intrinsics.checkNotNull(activity2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
                        FloatFragmentUtils.addFloatFragment(newInstance, (BaseLiveActivity) activity2);
                    }
                });
                final LivePeopleInfoCardFragment livePeopleInfoCardFragment2 = fragment;
                final String str3 = userId;
                final String str4 = userName;
                FeatureKt.onUnAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.KotlinBridge$startChatFromLiveRoom$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        ChatActivity.navToChat(LivePeopleInfoCardFragment.this.requireContext(), str3, 1, str4);
                    }
                });
            }
        });
        fragment.dismissAllowingStateLoss();
    }
}
