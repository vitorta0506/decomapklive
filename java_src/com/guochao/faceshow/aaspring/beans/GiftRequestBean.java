package com.guochao.faceshow.aaspring.beans;

import androidx.lifecycle.LifecycleOwner;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001c\b\u0086\b\u0018\u00002\u00020\u0001BS\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007\u0012\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n\u0012\u0010\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\f¢\u0006\u0004\b4\u00105J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007HÆ\u0003J\u0017\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\nHÆ\u0003J\u0013\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\fHÆ\u0003Jf\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n2\u0012\b\u0002\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\fHÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0017HÖ\u0001J\u0013\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004\"\u0004\b\u001e\u0010\u001fR$\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R*\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R0\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R,\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u00066"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;", "", "", "component1", "()Ljava/lang/Long;", "", "component2", "Ljava/lang/ref/WeakReference;", "Landroidx/lifecycle/LifecycleOwner;", "component3", "", "component4", "Lcom/guochao/faceshow/aaspring/base/http/callback/c;", "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;", "component5", "unixTime", "XX", "lifecycleOwner", NativeProtocol.WEB_DIALOG_PARAMS, "callBack", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/Long;", "getUnixTime", "setUnixTime", "(Ljava/lang/Long;)V", "Ljava/lang/String;", "getXX", "()Ljava/lang/String;", "setXX", "(Ljava/lang/String;)V", "Ljava/lang/ref/WeakReference;", "getLifecycleOwner", "()Ljava/lang/ref/WeakReference;", "setLifecycleOwner", "(Ljava/lang/ref/WeakReference;)V", "Ljava/util/Map;", "getParams", "()Ljava/util/Map;", "setParams", "(Ljava/util/Map;)V", "Lcom/guochao/faceshow/aaspring/base/http/callback/c;", "getCallBack", "()Lcom/guochao/faceshow/aaspring/base/http/callback/c;", "setCallBack", "(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GiftRequestBean {
    @Nullable
    private String XX;
    @Nullable
    private c<SendGiftResponseModel> callBack;
    @NotNull
    private WeakReference<LifecycleOwner> lifecycleOwner;
    @NotNull
    private Map<String, ? extends Object> params;
    @Nullable
    private Long unixTime;

    public GiftRequestBean(@Nullable Long l10, @Nullable String str, @NotNull WeakReference<LifecycleOwner> lifecycleOwner, @NotNull Map<String, ? extends Object> params, @Nullable c<SendGiftResponseModel> cVar) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(params, "params");
        this.unixTime = l10;
        this.XX = str;
        this.lifecycleOwner = lifecycleOwner;
        this.params = params;
        this.callBack = cVar;
    }

    public static /* synthetic */ GiftRequestBean copy$default(GiftRequestBean giftRequestBean, Long l10, String str, WeakReference weakReference, Map map, c cVar, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            l10 = giftRequestBean.unixTime;
        }
        if ((i9 & 2) != 0) {
            str = giftRequestBean.XX;
        }
        String str2 = str;
        WeakReference<LifecycleOwner> weakReference2 = weakReference;
        if ((i9 & 4) != 0) {
            weakReference2 = giftRequestBean.lifecycleOwner;
        }
        WeakReference weakReference3 = weakReference2;
        Map<String, ? extends Object> map2 = map;
        if ((i9 & 8) != 0) {
            map2 = giftRequestBean.params;
        }
        Map map3 = map2;
        c<SendGiftResponseModel> cVar2 = cVar;
        if ((i9 & 16) != 0) {
            cVar2 = giftRequestBean.callBack;
        }
        return giftRequestBean.copy(l10, str2, weakReference3, map3, cVar2);
    }

    @Nullable
    public final Long component1() {
        return this.unixTime;
    }

    @Nullable
    public final String component2() {
        return this.XX;
    }

    @NotNull
    public final WeakReference<LifecycleOwner> component3() {
        return this.lifecycleOwner;
    }

    @NotNull
    public final Map<String, Object> component4() {
        return this.params;
    }

    @Nullable
    public final c<SendGiftResponseModel> component5() {
        return this.callBack;
    }

    @NotNull
    public final GiftRequestBean copy(@Nullable Long l10, @Nullable String str, @NotNull WeakReference<LifecycleOwner> lifecycleOwner, @NotNull Map<String, ? extends Object> params, @Nullable c<SendGiftResponseModel> cVar) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(params, "params");
        return new GiftRequestBean(l10, str, lifecycleOwner, params, cVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GiftRequestBean) {
            GiftRequestBean giftRequestBean = (GiftRequestBean) obj;
            return Intrinsics.areEqual(this.unixTime, giftRequestBean.unixTime) && Intrinsics.areEqual(this.XX, giftRequestBean.XX) && Intrinsics.areEqual(this.lifecycleOwner, giftRequestBean.lifecycleOwner) && Intrinsics.areEqual(this.params, giftRequestBean.params) && Intrinsics.areEqual(this.callBack, giftRequestBean.callBack);
        }
        return false;
    }

    @Nullable
    public final c<SendGiftResponseModel> getCallBack() {
        return this.callBack;
    }

    @NotNull
    public final WeakReference<LifecycleOwner> getLifecycleOwner() {
        return this.lifecycleOwner;
    }

    @NotNull
    public final Map<String, Object> getParams() {
        return this.params;
    }

    @Nullable
    public final Long getUnixTime() {
        return this.unixTime;
    }

    @Nullable
    public final String getXX() {
        return this.XX;
    }

    public int hashCode() {
        Long l10 = this.unixTime;
        int hashCode = (l10 == null ? 0 : l10.hashCode()) * 31;
        String str = this.XX;
        int hashCode2 = (((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.lifecycleOwner.hashCode()) * 31) + this.params.hashCode()) * 31;
        c<SendGiftResponseModel> cVar = this.callBack;
        return hashCode2 + (cVar != null ? cVar.hashCode() : 0);
    }

    public final void setCallBack(@Nullable c<SendGiftResponseModel> cVar) {
        this.callBack = cVar;
    }

    public final void setLifecycleOwner(@NotNull WeakReference<LifecycleOwner> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.lifecycleOwner = weakReference;
    }

    public final void setParams(@NotNull Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.params = map;
    }

    public final void setUnixTime(@Nullable Long l10) {
        this.unixTime = l10;
    }

    public final void setXX(@Nullable String str) {
        this.XX = str;
    }

    @NotNull
    public String toString() {
        return "GiftRequestBean(unixTime=" + this.unixTime + ", XX=" + this.XX + ", lifecycleOwner=" + this.lifecycleOwner + ", params=" + this.params + ", callBack=" + this.callBack + ')';
    }
}
