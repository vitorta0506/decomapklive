package com.vk.sdk.api.account.dto;

import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.utils.Contants;
import com.vk.api.sdk.exceptions.VKApiCodes;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountGetInfoFields;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "COUNTRY", "HTTPS_REQUIRED", "OWN_POSTS_DEFAULT", "NO_WALL_REPLIES", "INTRO", "LANG", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum AccountGetInfoFields {
    COUNTRY(UserDataStore.COUNTRY),
    HTTPS_REQUIRED("https_required"),
    OWN_POSTS_DEFAULT("own_posts_default"),
    NO_WALL_REPLIES("no_wall_replies"),
    INTRO(Contants.USER_intro),
    LANG(VKApiCodes.PARAM_LANG);
    
    @NotNull
    private final String value;

    AccountGetInfoFields(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
