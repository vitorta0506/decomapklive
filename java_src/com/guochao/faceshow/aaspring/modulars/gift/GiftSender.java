package com.guochao.faceshow.aaspring.modulars.gift;

import android.app.Dialog;
import android.content.Intent;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwner;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.AppResource;
import com.guochao.faceshow.aaspring.beans.GiftRequestBean;
import com.guochao.faceshow.aaspring.beans.UserSignBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.NativeBridge;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import p9.a;
@Metadata(bv = {}, d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b>\u0010?Jf\u0010\u0012\u001a\u00020\u00112\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0010\u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\b2\u0010\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\b2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\rH\u0007J.\u0010\u0014\u001a\u00020\u00112\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0010\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\bH\u0007J<\u0010\u0014\u001a\u00020\u00112\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00152\u0010\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\bH\u0007JL\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\u00162\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00152\u0010\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\bH\u0002J.\u0010\u001d\u001a\u00020\u00112\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0010\u0010\u001c\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\bH\u0007J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u0018H\u0007J\u0018\u0010\"\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0004H\u0007J.\u0010#\u001a\u00020\u00112\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0010\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\bH\u0002J.\u0010$\u001a\u00020\u00112\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0010\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\bH\u0002J#\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0%2\u0006\u0010\u0007\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b&\u0010'J#\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0%2\u0006\u0010\u0007\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b(\u0010'R\u0016\u0010)\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R*\u00100\u001a\u00020\r2\u0006\u0010/\u001a\u00020\r8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001a\u00108\u001a\b\u0012\u0004\u0012\u000207068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010:\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00101R\u0014\u0010<\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006@"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;", "", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "", "itemType", "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;", "sendGiftRequestModel", "Lcom/guochao/faceshow/aaspring/base/http/callback/c;", "Lcom/guochao/faceshow/aaspring/beans/AppResource;", "callBackBigGift", "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;", "callBackGift", "", "isRefresh", "diamond", "isToken", "", "checkSendGiftType", "callBack", "sendGift", "", "", NativeProtocol.WEB_DIALOG_PARAMS, "", "now", "encryptParams", "getNewSign", "callback", "sendBagGift", "Lorg/json/JSONObject;", "Landroidx/fragment/app/FragmentActivity;", PushConstants.INTENT_ACTIVITY_NAME, "code", "sendGiftFailure", "sendLuckyGift", "sendVoiceRoomGift", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "sendLuckyGiftToServer", "(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendVoiceRoomGiftToServer", "luckyGiftSendCount", "I", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;", "requestList", "Ljava/util/ArrayList;", "value", "endCombo", "Z", "getEndCombo", "()Z", "setEndCombo", "(Z)V", "", "Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;", "toRequestParams", "Ljava/util/Set;", "isRequestingNewSign", "Lkotlinx/coroutines/CoroutineScope;", "giftScope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GiftSender {
    private static boolean endCombo;
    private static boolean isRequestingNewSign;
    private static int luckyGiftSendCount;
    @NotNull
    public static final GiftSender INSTANCE = new GiftSender();
    @NotNull
    private static ArrayList<GCRequest> requestList = new ArrayList<>();
    @NotNull
    private static final Set<GiftRequestBean> toRequestParams = new HashSet();
    @NotNull
    private static final CoroutineScope giftScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());

    private GiftSender() {
    }

    @JvmStatic
    @JvmOverloads
    public static final void checkSendGiftType(int i9, @NotNull SendGiftRequestModel sendGiftRequestModel, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> cVar, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar2) {
        Intrinsics.checkNotNullParameter(sendGiftRequestModel, "sendGiftRequestModel");
        checkSendGiftType$default(null, i9, sendGiftRequestModel, cVar, cVar2, false, 0, false, 225, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void checkSendGiftType(@Nullable LifecycleOwner lifecycleOwner, int i9, @NotNull SendGiftRequestModel sendGiftRequestModel, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> cVar, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar2) {
        Intrinsics.checkNotNullParameter(sendGiftRequestModel, "sendGiftRequestModel");
        checkSendGiftType$default(lifecycleOwner, i9, sendGiftRequestModel, cVar, cVar2, false, 0, false, 224, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void checkSendGiftType(@Nullable LifecycleOwner lifecycleOwner, int i9, @NotNull SendGiftRequestModel sendGiftRequestModel, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> cVar, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar2, boolean z10) {
        Intrinsics.checkNotNullParameter(sendGiftRequestModel, "sendGiftRequestModel");
        checkSendGiftType$default(lifecycleOwner, i9, sendGiftRequestModel, cVar, cVar2, z10, 0, false, 192, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void checkSendGiftType(@Nullable LifecycleOwner lifecycleOwner, int i9, @NotNull SendGiftRequestModel sendGiftRequestModel, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> cVar, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar2, boolean z10, int i10) {
        Intrinsics.checkNotNullParameter(sendGiftRequestModel, "sendGiftRequestModel");
        checkSendGiftType$default(lifecycleOwner, i9, sendGiftRequestModel, cVar, cVar2, z10, i10, false, 128, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void checkSendGiftType(@Nullable final LifecycleOwner lifecycleOwner, int i9, @NotNull final SendGiftRequestModel sendGiftRequestModel, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> cVar, @Nullable final com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar2, boolean z10, int i10, boolean z11) {
        Intrinsics.checkNotNullParameter(sendGiftRequestModel, "sendGiftRequestModel");
        if (i9 == 14) {
            sendBagGift(lifecycleOwner, sendGiftRequestModel, cVar);
        } else if (z10) {
            p9.a.g().p(lifecycleOwner, i10, z11, new a.f() { // from class: com.guochao.faceshow.aaspring.modulars.gift.c
                @Override // p9.a.f
                public /* synthetic */ void onCustomRecharge() {
                    p9.c.a(this);
                }

                @Override // p9.a.f
                public final void onResponse() {
                    GiftSender.m391checkSendGiftType$lambda0(LifecycleOwner.this, sendGiftRequestModel, cVar2);
                }
            });
        } else {
            sendGift(lifecycleOwner, sendGiftRequestModel, cVar2);
        }
    }

    public static /* synthetic */ void checkSendGiftType$default(LifecycleOwner lifecycleOwner, int i9, SendGiftRequestModel sendGiftRequestModel, com.guochao.faceshow.aaspring.base.http.callback.c cVar, com.guochao.faceshow.aaspring.base.http.callback.c cVar2, boolean z10, int i10, boolean z11, int i11, Object obj) {
        checkSendGiftType((i11 & 1) != 0 ? null : lifecycleOwner, i9, sendGiftRequestModel, cVar, cVar2, (i11 & 32) != 0 ? false : z10, (i11 & 64) != 0 ? 0 : i10, (i11 & 128) != 0 ? false : z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkSendGiftType$lambda-0  reason: not valid java name */
    public static final void m391checkSendGiftType$lambda0(LifecycleOwner lifecycleOwner, SendGiftRequestModel sendGiftRequestModel, com.guochao.faceshow.aaspring.base.http.callback.c cVar) {
        Intrinsics.checkNotNullParameter(sendGiftRequestModel, "$sendGiftRequestModel");
        sendGift(lifecycleOwner, sendGiftRequestModel, cVar);
    }

    @JvmStatic
    @Nullable
    public static final String encryptParams(@NotNull JSONObject params, long j10) {
        Intrinsics.checkNotNullParameter(params, "params");
        try {
            TreeMap treeMap = new TreeMap();
            Iterator<String> keys = params.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                Object obj = params.get(key);
                Intrinsics.checkNotNullExpressionValue(key, "key");
                treeMap.put(key, obj.toString());
            }
            ArrayList arrayList = new ArrayList(treeMap.entrySet());
            StringBuilder sb2 = new StringBuilder();
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("%s=%s&", Arrays.copyOf(new Object[]{((Map.Entry) arrayList.get(i9)).getKey(), ((Map.Entry) arrayList.get(i9)).getValue()}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                sb2.append(format);
            }
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String format2 = String.format("time=%s&sign=%s", Arrays.copyOf(new Object[]{Long.valueOf(j10), i.u().s().getE()}, 2));
            Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
            sb2.append(format2);
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "stringBuilder.toString()");
            byte[] bytes = sb3.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            params.put("pass_s", BaseFaceCastRequest.N(messageDigest.digest()));
            params.put("stampTime", j10);
        } catch (Exception unused) {
        }
        return NativeBridge.e(params.toString(), i.u().s().getE());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getNewSign(long j10, String str, LifecycleOwner lifecycleOwner, Map<String, ? extends Object> map, final com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar) {
        toRequestParams.add(new GiftRequestBean(Long.valueOf(j10), str, new WeakReference(lifecycleOwner), map, cVar));
        if (isRequestingNewSign) {
            return;
        }
        isRequestingNewSign = true;
        NewSignGetter.INSTANCE.getNewSign(lifecycleOwner, new com.guochao.faceshow.aaspring.base.http.callback.c<UserSignBean>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.GiftSender$getNewSign$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onCompleted() {
                super.onCompleted();
                GiftSender giftSender = GiftSender.INSTANCE;
                GiftSender.isRequestingNewSign = false;
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<UserSignBean> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable UserSignBean userSignBean, @NotNull FaceCastBaseResponse<UserSignBean> baseResponse) {
                Set<GiftRequestBean> set;
                Set set2;
                String sesign;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (userSignBean != null && (sesign = userSignBean.getSesign()) != null) {
                    i.u().s().setE(sesign);
                }
                set = GiftSender.toRequestParams;
                com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar2 = cVar;
                for (GiftRequestBean giftRequestBean : set) {
                    GiftSender.sendGift(giftRequestBean.getLifecycleOwner().get(), giftRequestBean.getParams(), cVar2);
                }
                set2 = GiftSender.toRequestParams;
                set2.clear();
            }
        });
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendBagGift(@Nullable LifecycleOwner lifecycleOwner, @NotNull final SendGiftRequestModel sendGiftRequestModel, @Nullable final com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> cVar) {
        Intrinsics.checkNotNullParameter(sendGiftRequestModel, "sendGiftRequestModel");
        String json = GsonGetter.getGson().toJson(sendGiftRequestModel);
        long currentTimeMillis = System.currentTimeMillis();
        LogUtils.d("送礼JSON", json);
        if (Intrinsics.areEqual(sendGiftRequestModel.getGiftId(), String.valueOf(HelloStarHelp.INSTANCE.getHelloConfigData().getHelloGiftId()))) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.send_hello_gift);
        }
        GCRequest putBody = new GCRequest("api/token/live/gift/sendGiftBag").bindToLifecycle(lifecycleOwner).header("unixTime", String.valueOf(currentTimeMillis)).putBody("gid", sendGiftRequestModel.getGiftId()).putBody("aids", sendGiftRequestModel.getToUserIds()).putBody("n", Integer.valueOf(sendGiftRequestModel.getSendNumber())).putBody("m", Integer.valueOf(sendGiftRequestModel.getSendType())).putBody("at", sendGiftRequestModel.getUseDiamonds()).putBody("it", sendGiftRequestModel.getBusinessId());
        putBody.getCallbackHolder().setSuccessClz(AppResource.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.GiftSender$sendBagGift$$inlined$success$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
                helloStarHelp.getHelloStarGift().setNumber(helloStarHelp.getHelloStarGift().getNumber() - (SendGiftRequestModel.this.getSendNumber() * SendGiftRequestModel.this.getToUserIds().size()));
                FaceCastBaseResponse faceCastBaseResponse = new FaceCastBaseResponse();
                faceCastBaseResponse.setCode(_response.getCode());
                faceCastBaseResponse.setResult(_response.getData());
                if (Intrinsics.areEqual(SendGiftRequestModel.this.getGiftId(), String.valueOf(helloStarHelp.getHelloConfigData().getHelloGiftId()))) {
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.send_gift, "4");
                }
                com.guochao.faceshow.aaspring.base.http.callback.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.onResponse(_response.getData(), faceCastBaseResponse);
                }
            }
        });
        putBody.getCallbackHolder().setFailClz(AppResource.class);
        putBody.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.GiftSender$sendBagGift$$inlined$fail$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                FaceCastBaseResponse faceCastBaseResponse = new FaceCastBaseResponse();
                faceCastBaseResponse.setCode(response.getCode());
                faceCastBaseResponse.setResult(response.getData());
                com.guochao.faceshow.aaspring.base.http.callback.c cVar2 = com.guochao.faceshow.aaspring.base.http.callback.c.this;
                if (cVar2 != null) {
                    cVar2.onResponse(response.getData(), faceCastBaseResponse);
                }
            }
        });
        putBody.request();
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendBagGift(@NotNull SendGiftRequestModel sendGiftRequestModel, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> cVar) {
        Intrinsics.checkNotNullParameter(sendGiftRequestModel, "sendGiftRequestModel");
        sendBagGift$default(null, sendGiftRequestModel, cVar, 1, null);
    }

    public static /* synthetic */ void sendBagGift$default(LifecycleOwner lifecycleOwner, SendGiftRequestModel sendGiftRequestModel, com.guochao.faceshow.aaspring.base.http.callback.c cVar, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            lifecycleOwner = null;
        }
        sendBagGift(lifecycleOwner, sendGiftRequestModel, cVar);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendGift(@Nullable LifecycleOwner lifecycleOwner, @NotNull SendGiftRequestModel sendGiftRequestModel, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar) {
        Intrinsics.checkNotNullParameter(sendGiftRequestModel, "sendGiftRequestModel");
        if (sendGiftRequestModel.getLucyGift()) {
            INSTANCE.sendLuckyGift(lifecycleOwner, sendGiftRequestModel, cVar);
        } else if (sendGiftRequestModel.getVoiceRoom()) {
            INSTANCE.sendVoiceRoomGift(lifecycleOwner, sendGiftRequestModel, cVar);
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            ArrayMap arrayMap = new ArrayMap();
            arrayMap.put("unixTime", Long.valueOf(currentTimeMillis));
            arrayMap.put("XX", sendGiftRequestModel);
            sendGift(lifecycleOwner, arrayMap, cVar);
        }
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendGift(@NotNull SendGiftRequestModel sendGiftRequestModel, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar) {
        Intrinsics.checkNotNullParameter(sendGiftRequestModel, "sendGiftRequestModel");
        sendGift$default((LifecycleOwner) null, sendGiftRequestModel, cVar, 1, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendGift(@NotNull Map<String, ? extends Object> params, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar) {
        Intrinsics.checkNotNullParameter(params, "params");
        sendGift$default((LifecycleOwner) null, params, cVar, 1, (Object) null);
    }

    public static /* synthetic */ void sendGift$default(LifecycleOwner lifecycleOwner, SendGiftRequestModel sendGiftRequestModel, com.guochao.faceshow.aaspring.base.http.callback.c cVar, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            lifecycleOwner = null;
        }
        sendGift(lifecycleOwner, sendGiftRequestModel, cVar);
    }

    @JvmStatic
    public static final void sendGiftFailure(@NotNull final FragmentActivity activity, final int i9) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (i9 == 10004 || i9 == 10005) {
            if (10004 == i9) {
                RechargeDialog.Companion companion = RechargeDialog.Companion;
                FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
                Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "activity.supportFragmentManager");
                RechargeDialog.Companion.showDialog$default(companion, supportFragmentManager, 0, null, 4, null);
                return;
            }
            new e(activity, new e.a() { // from class: com.guochao.faceshow.aaspring.modulars.gift.b
                @Override // com.guochao.faceshow.views.e.a
                public final void onClick(Dialog dialog, boolean z10) {
                    GiftSender.m392sendGiftFailure$lambda4(FragmentActivity.this, i9, dialog, z10);
                }

                @Override // com.guochao.faceshow.views.e.a
                public /* synthetic */ void onCreate(e eVar) {
                    d.a(this, eVar);
                }
            }).b(activity.getString(i9 == 10005 ? R.string.shuijing_not_enough : R.string.charge_notifi)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendGiftFailure$lambda-4  reason: not valid java name */
    public static final void m392sendGiftFailure$lambda4(FragmentActivity activity, int i9, Dialog dialog, boolean z10) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        dialog.dismiss();
        if (z10) {
            Intent d02 = MyWalletActivity.d0(activity, 2);
            d02.putExtra("isToken", i9 == 10005 ? "1" : "0");
            activity.startActivity(d02);
        }
    }

    private final void sendLuckyGift(LifecycleOwner lifecycleOwner, SendGiftRequestModel sendGiftRequestModel, com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar) {
        if (sendGiftRequestModel.getLucyGift()) {
            luckyGiftSendCount++;
            setEndCombo(false);
        }
        BuildersKt__Builders_commonKt.launch$default(giftScope, Dispatchers.getMain(), null, new GiftSender$sendLuckyGift$1(sendGiftRequestModel, lifecycleOwner, cVar, null), 2, null);
    }

    static /* synthetic */ void sendLuckyGift$default(GiftSender giftSender, LifecycleOwner lifecycleOwner, SendGiftRequestModel sendGiftRequestModel, com.guochao.faceshow.aaspring.base.http.callback.c cVar, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            lifecycleOwner = null;
        }
        giftSender.sendLuckyGift(lifecycleOwner, sendGiftRequestModel, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendLuckyGiftToServer(SendGiftRequestModel sendGiftRequestModel, Continuation<? super Response<SendGiftResponseModel>> continuation) {
        GCRequest putBodyModel$default = GCRequest.putBodyModel$default(new GCRequest("api/token/live/luckgift/sendgift/_vse"), sendGiftRequestModel, false, 2, null);
        requestList.add(putBodyModel$default);
        return BuildersKt.withContext(Dispatchers.getIO(), new GiftSender$sendLuckyGiftToServer$2(putBodyModel$default, null), continuation);
    }

    private final void sendVoiceRoomGift(LifecycleOwner lifecycleOwner, SendGiftRequestModel sendGiftRequestModel, com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar) {
        if (sendGiftRequestModel.getLucyGift()) {
            luckyGiftSendCount++;
            setEndCombo(false);
        }
        BuildersKt__Builders_commonKt.launch$default(giftScope, Dispatchers.getMain(), null, new GiftSender$sendVoiceRoomGift$1(sendGiftRequestModel, lifecycleOwner, cVar, null), 2, null);
    }

    static /* synthetic */ void sendVoiceRoomGift$default(GiftSender giftSender, LifecycleOwner lifecycleOwner, SendGiftRequestModel sendGiftRequestModel, com.guochao.faceshow.aaspring.base.http.callback.c cVar, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            lifecycleOwner = null;
        }
        giftSender.sendVoiceRoomGift(lifecycleOwner, sendGiftRequestModel, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendVoiceRoomGiftToServer(SendGiftRequestModel sendGiftRequestModel, Continuation<? super Response<SendGiftResponseModel>> continuation) {
        GCRequest putBodyModel$default = GCRequest.putBodyModel$default(new GCRequest("api/token/live/gift/sendGift/_vse"), sendGiftRequestModel, false, 2, null);
        requestList.add(putBodyModel$default);
        return BuildersKt.withContext(Dispatchers.getIO(), new GiftSender$sendVoiceRoomGiftToServer$2(putBodyModel$default, null), continuation);
    }

    public final boolean getEndCombo() {
        return endCombo;
    }

    public final void setEndCombo(boolean z10) {
        endCombo = z10;
        if (z10 && requestList.isEmpty() && luckyGiftSendCount >= 3) {
            p9.a.g().o();
            luckyGiftSendCount = 0;
        }
    }

    public static /* synthetic */ void sendGift$default(LifecycleOwner lifecycleOwner, Map map, com.guochao.faceshow.aaspring.base.http.callback.c cVar, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            lifecycleOwner = null;
        }
        sendGift(lifecycleOwner, map, cVar);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendGift(@Nullable final LifecycleOwner lifecycleOwner, @NotNull final Map<String, ? extends Object> params, @Nullable final com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar) {
        Intrinsics.checkNotNullParameter(params, "params");
        new PostRequest("tokens/gift/V4/sendGift").P(lifecycleOwner).F("unixTime", params.get("unixTime")).F("XX", encryptParams(new JSONObject(GsonGetter.getGson().toJson(params.get("XX"))), Long.parseLong(String.valueOf(params.get("unixTime"))))).M(new com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.GiftSender$sendGift$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<SendGiftResponseModel> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                if (exp.a() == 90001) {
                    GiftSender.INSTANCE.getNewSign(Long.parseLong(String.valueOf(params.get("unixTime"))), String.valueOf(params.get("XX")), lifecycleOwner, params, cVar);
                    return;
                }
                com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.onFailure(exp);
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable SendGiftResponseModel sendGiftResponseModel, @NotNull FaceCastBaseResponse<SendGiftResponseModel> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.onResponse(sendGiftResponseModel, baseResponse);
                }
            }
        });
    }
}
