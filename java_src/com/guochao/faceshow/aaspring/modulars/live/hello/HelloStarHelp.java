package com.guochao.faceshow.aaspring.modulars.live.hello;

import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.common.reflect.TypeToken;
import com.guochao.faceshow.aaspring.beans.GiftBagNum;
import com.guochao.faceshow.aaspring.beans.HelloConfigData;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.live.adapter.AutoLiveChatAdapter;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.NoBottomEdgeRecyclerView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J:\u0010\u0007\u001a\u00020\u0004\"\n\b\u0000\u0010\b*\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\b0\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u001e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00110\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00110\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020\u001fJ.\u0010#\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020&J \u0010)\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011H\u0002J \u0010+\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010,\u001a\u00020-H\u0002¨\u0006."}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;", "", "()V", "checkHelloGift24HourGiftDialog", "", "fragmentActivity", "Landroidx/fragment/app/FragmentActivity;", "checkHelloStarMessage", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;", "mLiveChatAdapter", "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;", "mRecyclerView", "Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;", "messageModel", "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;", "userID", "", "checkSendHelloGiftUser", "itemBean", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", Contants.USER_ID, "broadCasterUserId", "get24SendHelloGiftUserId", "", "currentUser", "Lcom/guochao/faceshow/bean/UserBean;", "get24or48SendHelloGiftUserId", "getHelloConfigData", "Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;", "getHelloConfigSwitch", "", "getHelloStarGift", "Lcom/guochao/faceshow/aaspring/beans/GiftBagNum;", "getHelloStarGiftNum", "isShowHelloMessage", "", "currTime", "", "oneDayTime", "twoDayTime", "setSendHelloGiftBroadCastUserId", "keySendHelloGiftId", "showThankSendHelloGift", "giftLiveMessage", "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HelloStarHelp {
    @NotNull
    public static final HelloStarHelp INSTANCE = new HelloStarHelp();

    private HelloStarHelp() {
    }

    private final List<String> get24or48SendHelloGiftUserId(UserBean userBean) {
        GCApplication app = GCApplication.app();
        String str = SpUtils.getStr(app, userBean.getUserId() + BaseConfig.KEY_24_48_SEND_HELLO_GIFT_ID);
        if (TextUtils.isEmpty(str)) {
            return new ArrayList();
        }
        Object fromJson = GsonGetter.getGson().fromJson(str, new TypeToken<ArrayList<String>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp$get24or48SendHelloGiftUserId$send24or28HelloGiftIds$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "{\n            GsonGetter…?>?>() {}.type)\n        }");
        return (List) fromJson;
    }

    private final void setSendHelloGiftBroadCastUserId(String str, String str2, String str3) {
        List list;
        GCApplication app = GCApplication.app();
        String str4 = SpUtils.getStr(app, str + str2);
        if (TextUtils.isEmpty(str4)) {
            list = new ArrayList();
        } else {
            Object fromJson = GsonGetter.getGson().fromJson(str4, new TypeToken<ArrayList<String>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp$setSendHelloGiftBroadCastUserId$userIds$1
            }.getType());
            Intrinsics.checkNotNullExpressionValue(fromJson, "{\n            GsonGetter…?>?>() {}.type)\n        }");
            list = (List) fromJson;
        }
        list.add(str3);
        GCApplication app2 = GCApplication.app();
        SpUtils.setStr(app2, b8.e.g().getUserId() + str2, GsonGetter.getGson().toJson(list));
    }

    private final void showThankSendHelloGift(AutoLiveChatAdapter autoLiveChatAdapter, NoBottomEdgeRecyclerView noBottomEdgeRecyclerView, GiftLiveMessage giftLiveMessage) {
        LiveMessageModel<BaseLiveMessage> createReceiveHelloGift = LiveMessageModelFactory.createReceiveHelloGift(giftLiveMessage);
        LiveMessageModel<BaseLiveMessage> createReceiveHelloGiftThank = LiveMessageModelFactory.createReceiveHelloGiftThank(giftLiveMessage);
        autoLiveChatAdapter.g(createReceiveHelloGift, noBottomEdgeRecyclerView.canScrollVertically(1));
        autoLiveChatAdapter.g(createReceiveHelloGiftThank, noBottomEdgeRecyclerView.canScrollVertically(1));
        String userId = b8.e.g().getUserId();
        Intrinsics.checkNotNullExpressionValue(userId, "getInstance().userId");
        String fromUserId = giftLiveMessage.getFromUserId();
        Intrinsics.checkNotNullExpressionValue(fromUserId, "giftLiveMessage.fromUserId");
        setSendHelloGiftBroadCastUserId(userId, BaseConfig.KEY_THANK_HELLO_GIFT_USER, fromUserId);
    }

    public final void checkHelloGift24HourGiftDialog(@NotNull FragmentActivity fragmentActivity) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "fragmentActivity");
        long regTime = getHelloConfigData().getRegTime();
        if (System.currentTimeMillis() >= 172800000 + regTime || System.currentTimeMillis() <= regTime + 86400000 || !ja.a.b().f("KEY_HELLO_HOUR_SHOW_V2") || getHelloConfigSwitch() != 1) {
            return;
        }
        ja.a.b().e("KEY_HELLO_HOUR_SHOW_V2");
        EventTrackingUtils.getInstance().track(EventTrackingUtils.HELLO_STAR_HELLO_GIFT_SECEND);
        HelloStarGiftDialog companion = HelloStarGiftDialog.Companion.getInstance(1, getHelloConfigData().getFirstNum(), getHelloConfigData().getLockNum());
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "fragmentActivity.supportFragmentManager");
        companion.show(supportFragmentManager, "HelloStarGiftDialog");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends BaseLiveMessage> void checkHelloStarMessage(@NotNull AutoLiveChatAdapter mLiveChatAdapter, @NotNull NoBottomEdgeRecyclerView mRecyclerView, @NotNull LiveMessageModel<T> messageModel, @Nullable String str) {
        Intrinsics.checkNotNullParameter(mLiveChatAdapter, "mLiveChatAdapter");
        Intrinsics.checkNotNullParameter(mRecyclerView, "mRecyclerView");
        Intrinsics.checkNotNullParameter(messageModel, "messageModel");
        if ((messageModel.getData() instanceof GiftLiveMessage) && getHelloConfigSwitch() == 1) {
            T data = messageModel.getData();
            Intrinsics.checkNotNull(data, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage");
            GiftLiveMessage giftLiveMessage = (GiftLiveMessage) data;
            ResourceListItemBean itemBean = giftLiveMessage.getItemBean();
            boolean z10 = false;
            if (itemBean != null && itemBean.getId() == getHelloConfigData().getHelloGiftId()) {
                z10 = true;
            }
            if (z10) {
                if (Objects.equals(giftLiveMessage.getFromUserId(), str)) {
                    if (giftLiveMessage.getIsGiftAllSend() != 1) {
                        mLiveChatAdapter.g(LiveMessageModelFactory.createBroadCastThankMessageModel(giftLiveMessage), mRecyclerView.canScrollVertically(1));
                    }
                } else if (!Intrinsics.areEqual(giftLiveMessage.getToUserId(), str) || giftLiveMessage.getIsGiftAllSend() == 1) {
                } else {
                    GCApplication app = GCApplication.app();
                    String str2 = SpUtils.getStr(app, str + BaseConfig.KEY_THANK_HELLO_GIFT_USER);
                    if (TextUtils.isEmpty(str2)) {
                        showThankSendHelloGift(mLiveChatAdapter, mRecyclerView, giftLiveMessage);
                    } else if (((List) GsonGetter.getGson().fromJson(str2, new TypeToken<ArrayList<String>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp$checkHelloStarMessage$showThankUsers$1
                    }.getType())).contains(giftLiveMessage.getFromUserId())) {
                    } else {
                        showThankSendHelloGift(mLiveChatAdapter, mRecyclerView, giftLiveMessage);
                    }
                }
            }
        }
    }

    public final void checkSendHelloGiftUser(@NotNull ResourceListItemBean itemBean, @NotNull String userId, @NotNull String broadCasterUserId) {
        Intrinsics.checkNotNullParameter(itemBean, "itemBean");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(broadCasterUserId, "broadCasterUserId");
        long regTime = getHelloConfigData().getRegTime();
        long currentTimeMillis = System.currentTimeMillis();
        long j10 = 86400000 + regTime;
        long j11 = regTime + 172800000;
        if (getHelloStarGift().getGiftId() == itemBean.getId()) {
            if (currentTimeMillis < j10) {
                setSendHelloGiftBroadCastUserId(userId, BaseConfig.KEY_SEND_HELLO_GIFT_ID, broadCasterUserId);
            } else if (currentTimeMillis < j11) {
                setSendHelloGiftBroadCastUserId(userId, BaseConfig.KEY_24_48_SEND_HELLO_GIFT_ID, broadCasterUserId);
            }
        }
    }

    @NotNull
    public final List<String> get24SendHelloGiftUserId(@NotNull UserBean currentUser) {
        Intrinsics.checkNotNullParameter(currentUser, "currentUser");
        GCApplication app = GCApplication.app();
        String str = SpUtils.getStr(app, currentUser.getUserId() + BaseConfig.KEY_SEND_HELLO_GIFT_ID);
        if (TextUtils.isEmpty(str)) {
            return new ArrayList();
        }
        Object fromJson = GsonGetter.getGson().fromJson(str, new TypeToken<ArrayList<String>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp$get24SendHelloGiftUserId$sendHelloGiftIds$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "{\n            GsonGetter…?>?>() {}.type)\n        }");
        return (List) fromJson;
    }

    @NotNull
    public final HelloConfigData getHelloConfigData() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(BaseConfig.KEY_HELLO_STAR);
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        sb2.append(current != null ? current.getUserId() : null);
        String selfString2 = SpUtils.getSelfString2(sb2.toString());
        String paramJson = FeatureKt.requireFeature(Feature.HELLO_STAR, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp$getHelloConfigData$paramJson$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
            }
        }).getParamJson();
        if (!TextUtils.isEmpty(selfString2)) {
            try {
                HelloConfigData helloConfigDataCache = (HelloConfigData) GsonGetter.getGson().fromJson(selfString2, (Class<Object>) HelloConfigData.class);
                if (!TextUtils.isEmpty(paramJson)) {
                    helloConfigDataCache.setHelloAnchorSwitch(((HelloConfigData) GsonGetter.getGson().fromJson(paramJson, (Class<Object>) HelloConfigData.class)).getHelloAnchorSwitch());
                }
                Intrinsics.checkNotNullExpressionValue(helloConfigDataCache, "helloConfigDataCache");
                return helloConfigDataCache;
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        } else if (!TextUtils.isEmpty(paramJson)) {
            Object fromJson = GsonGetter.getGson().fromJson(paramJson, (Class<Object>) HelloConfigData.class);
            Intrinsics.checkNotNullExpressionValue(fromJson, "getGson().fromJson(param…loConfigData::class.java)");
            return (HelloConfigData) fromJson;
        }
        return new HelloConfigData();
    }

    public final int getHelloConfigSwitch() {
        return FeatureKt.requireFeature(Feature.HELLO_STAR, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp$getHelloConfigSwitch$available$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
            }
        }).isAvailable() ? 1 : 0;
    }

    @NotNull
    public final GiftBagNum getHelloStarGift() {
        if (i.u().t() == null) {
            return new GiftBagNum(264, 0);
        }
        HelloConfigData helloConfigData = getHelloConfigData();
        List<GiftBagNum> list = i.u().t().getList();
        if (list != null) {
            for (GiftBagNum giftBagNum : list) {
                if (giftBagNum.getGiftId() == helloConfigData.getHelloGiftId()) {
                    return giftBagNum;
                }
            }
        }
        return new GiftBagNum(264, 0);
    }

    public final int getHelloStarGiftNum() {
        if (i.u().t() == null) {
            return 0;
        }
        HelloConfigData helloConfigData = getHelloConfigData();
        List<GiftBagNum> list = i.u().t().getList();
        if (list != null) {
            for (GiftBagNum giftBagNum : list) {
                if (giftBagNum.getGiftId() == helloConfigData.getHelloGiftId()) {
                    return giftBagNum.getNumber();
                }
            }
        }
        return 0;
    }

    public final boolean isShowHelloMessage(@NotNull String broadCasterUserId, @NotNull UserBean currentUser, long j10, long j11, long j12) {
        Intrinsics.checkNotNullParameter(broadCasterUserId, "broadCasterUserId");
        Intrinsics.checkNotNullParameter(currentUser, "currentUser");
        if (getHelloConfigSwitch() == 0) {
            return false;
        }
        if (getHelloStarGiftNum() > 0) {
            return (j10 >= j11 || !get24SendHelloGiftUserId(currentUser).contains(broadCasterUserId)) && j10 <= j12 && !get24or48SendHelloGiftUserId(currentUser).contains(broadCasterUserId);
        }
        return false;
    }
}
