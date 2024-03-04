package com.vk.sdk.api.messages.dto;

import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesSendIntent;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ACCOUNT_UPDATE", "BOT_AD_INVITE", "BOT_AD_PROMO", "CONFIRMED_NOTIFICATION", "CUSTOMER_SUPPORT", "DEFAULT", "GAME_NOTIFICATION", "MODERATED_NEWSLETTER", "NON_PROMO_NEWSLETTER", "PROMO_NEWSLETTER", "PURCHASE_UPDATE", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum MessagesSendIntent {
    ACCOUNT_UPDATE("account_update"),
    BOT_AD_INVITE("bot_ad_invite"),
    BOT_AD_PROMO("bot_ad_promo"),
    CONFIRMED_NOTIFICATION("confirmed_notification"),
    CUSTOMER_SUPPORT("customer_support"),
    DEFAULT(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND),
    GAME_NOTIFICATION("game_notification"),
    MODERATED_NEWSLETTER("moderated_newsletter"),
    NON_PROMO_NEWSLETTER("non_promo_newsletter"),
    PROMO_NEWSLETTER("promo_newsletter"),
    PURCHASE_UPDATE("purchase_update");
    
    @NotNull
    private final String value;

    MessagesSendIntent(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
