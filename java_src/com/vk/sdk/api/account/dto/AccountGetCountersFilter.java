package com.vk.sdk.api.account.dto;

import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountGetCountersFilter;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", ShareConstants.PEOPLE_IDS, "MESSAGES", ShareConstants.PHOTOS, "NOTES", "GIFTS", "EVENTS", "GROUPS", "SDK", "FRIENDS_SUGGESTIONS", "NOTIFICATIONS", "APP_REQUESTS", "FRIENDS_RECOMMENDATIONS", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum AccountGetCountersFilter {
    FRIENDS(NativeProtocol.AUDIENCE_FRIENDS),
    MESSAGES("messages"),
    PHOTOS("photos"),
    NOTES("notes"),
    GIFTS("gifts"),
    EVENTS("events"),
    GROUPS("groups"),
    SDK(ServerProtocol.DIALOG_PARAM_SDK_VERSION),
    FRIENDS_SUGGESTIONS("friends_suggestions"),
    NOTIFICATIONS("notifications"),
    APP_REQUESTS("app_requests"),
    FRIENDS_RECOMMENDATIONS("friends_recommendations");
    
    @NotNull
    private final String value;

    AccountGetCountersFilter(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
