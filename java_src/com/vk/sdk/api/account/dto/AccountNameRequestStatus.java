package com.vk.sdk.api.account.dto;

import com.facebook.GraphResponse;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountNameRequestStatus;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "SUCCESS", "PROCESSING", "DECLINED", "WAS_ACCEPTED", "WAS_DECLINED", "DECLINED_WITH_LINK", "RESPONSE", "RESPONSE_WITH_LINK", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum AccountNameRequestStatus {
    SUCCESS(GraphResponse.SUCCESS_KEY),
    PROCESSING("processing"),
    DECLINED("declined"),
    WAS_ACCEPTED("was_accepted"),
    WAS_DECLINED("was_declined"),
    DECLINED_WITH_LINK("declined_with_link"),
    RESPONSE("response"),
    RESPONSE_WITH_LINK("response_with_link");
    
    @NotNull
    private final String value;

    AccountNameRequestStatus(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
