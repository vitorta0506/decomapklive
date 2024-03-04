package com.vk.sdk.api.users.dto;

import com.facebook.appevents.UserDataStore;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.annotations.SerializedName;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.audio.dto.AudioAudio;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseCountry;
import com.vk.sdk.api.base.dto.BaseCropPhoto;
import com.vk.sdk.api.base.dto.BaseObject;
import com.vk.sdk.api.base.dto.BaseSex;
import com.vk.sdk.api.friends.dto.FriendsFriendStatusStatus;
import com.vk.sdk.api.friends.dto.FriendsRequestsMutual;
import com.vk.sdk.api.groups.dto.GroupsAddressesInfo;
import com.vk.sdk.api.groups.dto.GroupsContactsItem;
import com.vk.sdk.api.groups.dto.GroupsCountersGroup;
import com.vk.sdk.api.groups.dto.GroupsCover;
import com.vk.sdk.api.groups.dto.GroupsGroupAdminLevel;
import com.vk.sdk.api.groups.dto.GroupsGroupBanInfo;
import com.vk.sdk.api.groups.dto.GroupsGroupFullAgeLimits;
import com.vk.sdk.api.groups.dto.GroupsGroupFullMemberStatus;
import com.vk.sdk.api.groups.dto.GroupsGroupFullSection;
import com.vk.sdk.api.groups.dto.GroupsGroupIsClosed;
import com.vk.sdk.api.groups.dto.GroupsGroupType;
import com.vk.sdk.api.groups.dto.GroupsLinksItem;
import com.vk.sdk.api.groups.dto.GroupsLiveCovers;
import com.vk.sdk.api.groups.dto.GroupsMarketInfo;
import com.vk.sdk.api.groups.dto.GroupsOnlineStatus;
import com.vk.sdk.api.groups.dto.GroupsPhotoSize;
import com.vk.sdk.api.video.dto.VideoLiveInfo;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem;", "", "()V", "Deserializer", "GroupsGroupFull", "UsersUserXtrType", "Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$UsersUserXtrType;", "Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$GroupsGroupFull;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public abstract class UsersSubscriptionsItem {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$Deserializer;", "Lcom/google/gson/JsonDeserializer;", "Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem;", "()V", "deserialize", "json", "Lcom/google/gson/JsonElement;", "typeOfT", "Ljava/lang/reflect/Type;", "context", "Lcom/google/gson/JsonDeserializationContext;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class Deserializer implements JsonDeserializer<UsersSubscriptionsItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.JsonDeserializer
        @NotNull
        public UsersSubscriptionsItem deserialize(@NotNull JsonElement json, @Nullable Type type, @NotNull JsonDeserializationContext context) {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(context, "context");
            String asString = json.getAsJsonObject().get("type").getAsString();
            if (asString != null) {
                switch (asString.hashCode()) {
                    case -309425751:
                        if (asString.equals("profile")) {
                            Object deserialize = context.deserialize(json, UsersUserXtrType.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize, "context.deserialize(json…sUserXtrType::class.java)");
                            return (UsersSubscriptionsItem) deserialize;
                        }
                        break;
                    case 3433103:
                        if (asString.equals("page")) {
                            Object deserialize2 = context.deserialize(json, GroupsGroupFull.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize2, "context.deserialize(json…upsGroupFull::class.java)");
                            return (UsersSubscriptionsItem) deserialize2;
                        }
                        break;
                    case 96891546:
                        if (asString.equals("event")) {
                            Object deserialize3 = context.deserialize(json, GroupsGroupFull.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize3, "context.deserialize(json…upsGroupFull::class.java)");
                            return (UsersSubscriptionsItem) deserialize3;
                        }
                        break;
                    case 98629247:
                        if (asString.equals("group")) {
                            Object deserialize4 = context.deserialize(json, GroupsGroupFull.class);
                            Intrinsics.checkNotNullExpressionValue(deserialize4, "context.deserialize(json…upsGroupFull::class.java)");
                            return (UsersSubscriptionsItem) deserialize4;
                        }
                        break;
                }
            }
            throw new IllegalStateException("no mapping for the type:" + asString);
        }
    }

    @Metadata(d1 = {"\u0000Û\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0003\bº\u0001\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u00ad\u0002Bå\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0016\u0012\u0010\b\u0002\u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101\u0012\u0010\b\u0002\u00103\u001a\n\u0012\u0004\u0012\u000204\u0018\u000101\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u000106\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u000109\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u000109\u0012\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010?\u001a\u0004\u0018\u00010@\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010B\u001a\u0004\u0018\u00010C\u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010E\u0012\n\b\u0002\u0010F\u001a\u0004\u0018\u00010G\u0012\n\b\u0002\u0010H\u001a\u0004\u0018\u00010G\u0012\n\b\u0002\u0010I\u001a\u0004\u0018\u00010G\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00010K\u0012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010G\u0012\n\b\u0002\u0010M\u001a\u0004\u0018\u00010G\u0012\n\b\u0002\u0010N\u001a\u0004\u0018\u00010G\u0012\n\b\u0002\u0010O\u001a\u0004\u0018\u00010P\u0012\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010R\u001a\u0004\u0018\u00010G\u0012\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010T\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010U\u001a\u0004\u0018\u00010V\u0012\n\b\u0002\u0010W\u001a\u0004\u0018\u00010X\u0012\n\b\u0002\u0010Y\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010Z\u001a\u0004\u0018\u00010[\u0012\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010`\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010a\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010b\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010c\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010d\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010e\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010f\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010g\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010h\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010i\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010j\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010k\u001a\u0004\u0018\u00010l\u0012\n\b\u0002\u0010m\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010n\u001a\u0004\u0018\u00010o¢\u0006\u0002\u0010pJ\n\u0010Ô\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010Õ\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010Ö\u0001\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010×\u0001\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u0012\u0010Ø\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\f\u0010Ù\u0001\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u0012\u0010Ú\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\u0012\u0010Û\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\u0012\u0010Ü\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\u0012\u0010Ý\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\f\u0010Þ\u0001\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\f\u0010ß\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\f\u0010à\u0001\u001a\u0004\u0018\u00010\u001fHÆ\u0003J\f\u0010á\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010â\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010ã\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010ä\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010å\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010æ\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010ç\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010è\u0001\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u0012\u0010é\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\f\u0010ê\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010ë\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010ì\u0001\u001a\u0004\u0018\u00010+HÆ\u0003J\f\u0010í\u0001\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010î\u0001\u001a\u0004\u0018\u00010.HÆ\u0003J\u0012\u0010ï\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\u0012\u0010ð\u0001\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101HÆ\u0003J\u0012\u0010ñ\u0001\u001a\n\u0012\u0004\u0012\u000204\u0018\u000101HÆ\u0003J\f\u0010ò\u0001\u001a\u0004\u0018\u000106HÆ\u0003J\f\u0010ó\u0001\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010ô\u0001\u001a\u0004\u0018\u000109HÆ\u0003J\f\u0010õ\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010ö\u0001\u001a\u0004\u0018\u000109HÆ\u0003J\f\u0010÷\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010ø\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010ù\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010ú\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010û\u0001\u001a\u0004\u0018\u00010@HÆ\u0003J\u0012\u0010ü\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\f\u0010ý\u0001\u001a\u0004\u0018\u00010CHÆ\u0003J\f\u0010þ\u0001\u001a\u0004\u0018\u00010EHÆ\u0003J\u0012\u0010ÿ\u0001\u001a\u0004\u0018\u00010GHÆ\u0003¢\u0006\u0003\u0010\u0082\u0001J\f\u0010\u0080\u0002\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0012\u0010\u0081\u0002\u001a\u0004\u0018\u00010GHÆ\u0003¢\u0006\u0003\u0010\u0082\u0001J\u0012\u0010\u0082\u0002\u001a\u0004\u0018\u00010GHÆ\u0003¢\u0006\u0003\u0010\u0082\u0001J\f\u0010\u0083\u0002\u001a\u0004\u0018\u00010KHÆ\u0003J\u0012\u0010\u0084\u0002\u001a\u0004\u0018\u00010GHÆ\u0003¢\u0006\u0003\u0010\u0082\u0001J\u0012\u0010\u0085\u0002\u001a\u0004\u0018\u00010GHÆ\u0003¢\u0006\u0003\u0010\u0082\u0001J\u0012\u0010\u0086\u0002\u001a\u0004\u0018\u00010GHÆ\u0003¢\u0006\u0003\u0010\u0082\u0001J\f\u0010\u0087\u0002\u001a\u0004\u0018\u00010PHÆ\u0003J\u0012\u0010\u0088\u0002\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\u0012\u0010\u0089\u0002\u001a\u0004\u0018\u00010GHÆ\u0003¢\u0006\u0003\u0010\u0082\u0001J\f\u0010\u008a\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u008b\u0002\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010\u008c\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u008d\u0002\u001a\u0004\u0018\u00010VHÆ\u0003J\f\u0010\u008e\u0002\u001a\u0004\u0018\u00010XHÆ\u0003J\f\u0010\u008f\u0002\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010\u0090\u0002\u001a\u0004\u0018\u00010[HÆ\u0003J\f\u0010\u0091\u0002\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010\u0092\u0002\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0012\u0010\u0093\u0002\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\u0012\u0010\u0094\u0002\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0003\u0010\u008c\u0001J\f\u0010\u0095\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u0096\u0002\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010\u0097\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u0098\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u0099\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u009a\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u009b\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u009c\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u009d\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u009e\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010\u009f\u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010 \u0002\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\f\u0010¡\u0002\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\f\u0010¢\u0002\u001a\u0004\u0018\u00010lHÆ\u0003J\f\u0010£\u0002\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010¤\u0002\u001a\u0004\u0018\u00010oHÆ\u0003J\f\u0010¥\u0002\u001a\u0004\u0018\u00010\u0010HÆ\u0003Jò\u0007\u0010¦\u0002\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u00162\u0010\b\u0002\u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u0001012\u0010\b\u0002\u00103\u001a\n\u0012\u0004\u0012\u000204\u0018\u0001012\n\b\u0002\u00105\u001a\u0004\u0018\u0001062\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u00108\u001a\u0004\u0018\u0001092\n\b\u0002\u0010:\u001a\u0004\u0018\u0001092\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010@2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010B\u001a\u0004\u0018\u00010C2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010E2\n\b\u0002\u0010F\u001a\u0004\u0018\u00010G2\n\b\u0002\u0010H\u001a\u0004\u0018\u00010G2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010G2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010K2\n\b\u0002\u0010L\u001a\u0004\u0018\u00010G2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010G2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010G2\n\b\u0002\u0010O\u001a\u0004\u0018\u00010P2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010R\u001a\u0004\u0018\u00010G2\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010T\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010U\u001a\u0004\u0018\u00010V2\n\b\u0002\u0010W\u001a\u0004\u0018\u00010X2\n\b\u0002\u0010Y\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010Z\u001a\u0004\u0018\u00010[2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010`\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010a\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010b\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010c\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010d\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010e\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010f\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010g\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010h\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010i\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010j\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010k\u001a\u0004\u0018\u00010l2\n\b\u0002\u0010m\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010n\u001a\u0004\u0018\u00010oHÆ\u0001¢\u0006\u0003\u0010§\u0002J\u0016\u0010¨\u0002\u001a\u00020G2\n\u0010©\u0002\u001a\u0005\u0018\u00010ª\u0002HÖ\u0003J\n\u0010«\u0002\u001a\u00020\u0016HÖ\u0001J\n\u0010¬\u0002\u001a\u00020\u0013HÖ\u0001R\u0018\u0010'\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bq\u0010rR\u0018\u0010J\u001a\u0004\u0018\u00010K8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bs\u0010tR\u0018\u0010Z\u001a\u0004\u0018\u00010[8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bu\u0010vR\u0018\u0010B\u001a\u0004\u0018\u00010C8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bw\u0010xR\u0018\u0010D\u001a\u0004\u0018\u00010E8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\by\u0010zR\u0018\u0010&\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b{\u0010|R\u0018\u0010<\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b}\u0010|R\u0018\u0010 \u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b~\u0010|R\u0018\u0010%\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u007f\u0010|R\u0019\u0010>\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0080\u0001\u0010|R\u001d\u0010M\u001a\u0004\u0018\u00010G8\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u0083\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001d\u0010N\u001a\u0004\u0018\u00010G8\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u0083\u0001\u001a\u0006\b\u0084\u0001\u0010\u0082\u0001R\u0019\u0010!\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0085\u0001\u0010|R\u0019\u0010#\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0086\u0001\u0010|R\u0019\u0010\"\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0087\u0001\u0010|R\u0019\u0010$\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0088\u0001\u0010|R\u001a\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001d\u0010\u001b\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001R \u00103\u001a\n\u0012\u0004\u0012\u000204\u0018\u0001018\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001R\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001R\u001a\u0010*\u001a\u0004\u0018\u00010+8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001R\u0019\u0010`\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0098\u0001\u0010rR\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0099\u0001\u0010rR\u0019\u0010i\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u009a\u0001\u0010rR\u001d\u0010_\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\b\u009b\u0001\u0010\u008c\u0001R\u001d\u0010(\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\b\u009c\u0001\u0010\u008c\u0001R\u001d\u0010I\u001a\u0004\u0018\u00010G8\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u0083\u0001\u001a\u0006\b\u009d\u0001\u0010\u0082\u0001R\u001d\u0010F\u001a\u0004\u0018\u00010G8\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u0083\u0001\u001a\u0006\b\u009e\u0001\u0010\u0082\u0001R\u0019\u0010)\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u009f\u0001\u0010|R\u001d\u0010R\u001a\u0004\u0018\u00010G8\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u0083\u0001\u001a\u0006\b \u0001\u0010\u0082\u0001R\u0018\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b¡\u0001\u0010¢\u0001R\u001d\u0010A\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\b£\u0001\u0010\u008c\u0001R\u0018\u0010Y\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bY\u0010|R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010|R\u0018\u0010]\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b]\u0010|R\u0019\u0010U\u001a\u0004\u0018\u00010V8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\bU\u0010¤\u0001R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010|R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010|R\u0018\u0010\\\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010|R\u0018\u0010=\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010|R\u0018\u0010\f\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010|R\u001c\u0010L\u001a\u0004\u0018\u00010G8\u0006X\u0087\u0004¢\u0006\f\n\u0003\u0010\u0083\u0001\u001a\u0005\bL\u0010\u0082\u0001R\u0018\u0010m\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bm\u0010|R \u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u0001018\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b¥\u0001\u0010\u008f\u0001R\u001a\u0010O\u001a\u0004\u0018\u00010P8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b¦\u0001\u0010§\u0001R\u001d\u0010/\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\b¨\u0001\u0010\u008c\u0001R\u001a\u00108\u001a\u0004\u0018\u0001098\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b©\u0001\u0010ª\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b«\u0001\u0010¬\u0001R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u00ad\u0001\u0010®\u0001R\u001d\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\b¯\u0001\u0010\u008c\u0001R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b°\u0001\u0010rR\u0019\u0010S\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b±\u0001\u0010rR\u001a\u0010?\u001a\u0004\u0018\u00010@8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b²\u0001\u0010³\u0001R\u0019\u0010b\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b´\u0001\u0010rR\u0019\u0010c\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\bµ\u0001\u0010rR\u0019\u0010d\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b¶\u0001\u0010rR\u0019\u0010e\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b·\u0001\u0010rR\u0019\u0010f\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b¸\u0001\u0010rR\u0019\u0010a\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b¹\u0001\u0010rR\u0019\u0010g\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\bº\u0001\u0010rR\u0019\u0010h\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b»\u0001\u0010rR\u001a\u0010k\u001a\u0004\u0018\u00010l8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b¼\u0001\u0010½\u0001R\u0019\u0010j\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b¾\u0001\u0010rR\u001d\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\b¿\u0001\u0010\u008c\u0001R\u0019\u0010T\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\bÀ\u0001\u0010rR\u001a\u0010:\u001a\u0004\u0018\u0001098\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\bÁ\u0001\u0010ª\u0001R\u0019\u00107\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\bÂ\u0001\u0010rR\u001d\u0010^\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\bÃ\u0001\u0010\u008c\u0001R\u0019\u0010,\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\bÄ\u0001\u0010rR\u001a\u0010-\u001a\u0004\u0018\u00010.8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\bÅ\u0001\u0010Æ\u0001R\u001d\u0010Q\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\bÇ\u0001\u0010\u008c\u0001R\u0019\u0010;\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\bÈ\u0001\u0010|R\u001a\u0010W\u001a\u0004\u0018\u00010X8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\bÉ\u0001\u0010Ê\u0001R\u001d\u0010H\u001a\u0004\u0018\u00010G8\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u0083\u0001\u001a\u0006\bË\u0001\u0010\u0082\u0001R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\bÌ\u0001\u0010|R\u001a\u0010n\u001a\u0004\u0018\u00010o8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\bÍ\u0001\u0010Î\u0001R\u001d\u0010\u001a\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\bÏ\u0001\u0010\u008c\u0001R\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u008d\u0001\u001a\u0006\bÐ\u0001\u0010\u008c\u0001R\u001a\u00105\u001a\u0004\u0018\u0001068\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\bÑ\u0001\u0010Ò\u0001R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\bÓ\u0001\u0010r¨\u0006®\u0002"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$GroupsGroupFull;", "Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem;", "id", "Lcom/vk/dto/common/id/UserId;", "market", "Lcom/vk/sdk/api/groups/dto/GroupsMarketInfo;", "memberStatus", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFullMemberStatus;", "isAdult", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "isHiddenFromFeed", "isFavorite", "isSubscribed", "city", "Lcom/vk/sdk/api/base/dto/BaseObject;", UserDataStore.COUNTRY, "Lcom/vk/sdk/api/base/dto/BaseCountry;", "verified", "description", "", "wikiPage", "membersCount", "", "membersCountText", "requestsCount", "videoLiveLevel", "videoLiveCount", "clipsCount", "counters", "Lcom/vk/sdk/api/groups/dto/GroupsCountersGroup;", "cover", "Lcom/vk/sdk/api/groups/dto/GroupsCover;", "canPost", "canSuggest", "canUploadStory", "canUploadDoc", "canUploadVideo", "canSeeAllPosts", "canCreateTopic", PushConstants.INTENT_ACTIVITY_NAME, "fixedPost", "hasPhoto", "cropPhoto", "Lcom/vk/sdk/api/base/dto/BaseCropPhoto;", "status", "statusAudio", "Lcom/vk/sdk/api/audio/dto/AudioAudio;", "mainAlbumId", "links", "", "Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;", "contacts", "Lcom/vk/sdk/api/groups/dto/GroupsContactsItem;", "wall", "Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$GroupsGroupFull$Wall;", "site", "mainSection", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;", "secondarySection", "trending", "canMessage", "isMessagesBlocked", "canSendNotify", "onlineStatus", "Lcom/vk/sdk/api/groups/dto/GroupsOnlineStatus;", "invitedBy", "ageLimits", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFullAgeLimits;", "banInfo", "Lcom/vk/sdk/api/groups/dto/GroupsGroupBanInfo;", "hasMarketApp", "", "usingVkpayMarketApp", "hasGroupChannel", "addresses", "Lcom/vk/sdk/api/groups/dto/GroupsAddressesInfo;", "isSubscribedPodcasts", "canSubscribePodcasts", "canSubscribePosts", "liveCovers", "Lcom/vk/sdk/api/groups/dto/GroupsLiveCovers;", "storiesArchiveCount", "hasUnseenStories", "name", "screenName", "isClosed", "Lcom/vk/sdk/api/groups/dto/GroupsGroupIsClosed;", "type", "Lcom/vk/sdk/api/groups/dto/GroupsGroupType;", "isAdmin", "adminLevel", "Lcom/vk/sdk/api/groups/dto/GroupsGroupAdminLevel;", "isMember", "isAdvertiser", "startDate", "finishDate", "deactivated", "photo50", "photo100", "photo200", "photo200Orig", "photo400", "photo400Orig", "photoMax", "photoMaxOrig", "estDate", "publicDateLabel", "photoMaxSize", "Lcom/vk/sdk/api/groups/dto/GroupsPhotoSize;", "isVideoLiveNotificationsBlocked", "videoLive", "Lcom/vk/sdk/api/video/dto/VideoLiveInfo;", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/groups/dto/GroupsMarketInfo;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullMemberStatus;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseObject;Lcom/vk/sdk/api/base/dto/BaseCountry;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsCountersGroup;Lcom/vk/sdk/api/groups/dto/GroupsCover;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseCropPhoto;Ljava/lang/String;Lcom/vk/sdk/api/audio/dto/AudioAudio;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$GroupsGroupFull$Wall;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/groups/dto/GroupsOnlineStatus;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullAgeLimits;Lcom/vk/sdk/api/groups/dto/GroupsGroupBanInfo;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsAddressesInfo;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsLiveCovers;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupIsClosed;Lcom/vk/sdk/api/groups/dto/GroupsGroupType;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/groups/dto/GroupsGroupAdminLevel;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsPhotoSize;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/video/dto/VideoLiveInfo;)V", "getActivity", "()Ljava/lang/String;", "getAddresses", "()Lcom/vk/sdk/api/groups/dto/GroupsAddressesInfo;", "getAdminLevel", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupAdminLevel;", "getAgeLimits", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupFullAgeLimits;", "getBanInfo", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupBanInfo;", "getCanCreateTopic", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCanMessage", "getCanPost", "getCanSeeAllPosts", "getCanSendNotify", "getCanSubscribePodcasts", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCanSubscribePosts", "getCanSuggest", "getCanUploadDoc", "getCanUploadStory", "getCanUploadVideo", "getCity", "()Lcom/vk/sdk/api/base/dto/BaseObject;", "getClipsCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getContacts", "()Ljava/util/List;", "getCounters", "()Lcom/vk/sdk/api/groups/dto/GroupsCountersGroup;", "getCountry", "()Lcom/vk/sdk/api/base/dto/BaseCountry;", "getCover", "()Lcom/vk/sdk/api/groups/dto/GroupsCover;", "getCropPhoto", "()Lcom/vk/sdk/api/base/dto/BaseCropPhoto;", "getDeactivated", "getDescription", "getEstDate", "getFinishDate", "getFixedPost", "getHasGroupChannel", "getHasMarketApp", "getHasPhoto", "getHasUnseenStories", "getId", "()Lcom/vk/dto/common/id/UserId;", "getInvitedBy", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupIsClosed;", "getLinks", "getLiveCovers", "()Lcom/vk/sdk/api/groups/dto/GroupsLiveCovers;", "getMainAlbumId", "getMainSection", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;", "getMarket", "()Lcom/vk/sdk/api/groups/dto/GroupsMarketInfo;", "getMemberStatus", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupFullMemberStatus;", "getMembersCount", "getMembersCountText", "getName", "getOnlineStatus", "()Lcom/vk/sdk/api/groups/dto/GroupsOnlineStatus;", "getPhoto100", "getPhoto200", "getPhoto200Orig", "getPhoto400", "getPhoto400Orig", "getPhoto50", "getPhotoMax", "getPhotoMaxOrig", "getPhotoMaxSize", "()Lcom/vk/sdk/api/groups/dto/GroupsPhotoSize;", "getPublicDateLabel", "getRequestsCount", "getScreenName", "getSecondarySection", "getSite", "getStartDate", "getStatus", "getStatusAudio", "()Lcom/vk/sdk/api/audio/dto/AudioAudio;", "getStoriesArchiveCount", "getTrending", "getType", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupType;", "getUsingVkpayMarketApp", "getVerified", "getVideoLive", "()Lcom/vk/sdk/api/video/dto/VideoLiveInfo;", "getVideoLiveCount", "getVideoLiveLevel", "getWall", "()Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$GroupsGroupFull$Wall;", "getWikiPage", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component4", "component40", "component41", "component42", "component43", "component44", "component45", "component46", "component47", "component48", "component49", "component5", "component50", "component51", "component52", "component53", "component54", "component55", "component56", "component57", "component58", "component59", "component6", "component60", "component61", "component62", "component63", "component64", "component65", "component66", "component67", "component68", "component69", "component7", "component70", "component71", "component72", "component73", "component74", "component75", "component76", "component77", "component78", "component79", "component8", "component80", "component81", "component82", "component9", "copy", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/groups/dto/GroupsMarketInfo;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullMemberStatus;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseObject;Lcom/vk/sdk/api/base/dto/BaseCountry;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsCountersGroup;Lcom/vk/sdk/api/groups/dto/GroupsCover;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseCropPhoto;Ljava/lang/String;Lcom/vk/sdk/api/audio/dto/AudioAudio;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$GroupsGroupFull$Wall;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/groups/dto/GroupsOnlineStatus;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsGroupFullAgeLimits;Lcom/vk/sdk/api/groups/dto/GroupsGroupBanInfo;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsAddressesInfo;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsLiveCovers;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupIsClosed;Lcom/vk/sdk/api/groups/dto/GroupsGroupType;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/groups/dto/GroupsGroupAdminLevel;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsPhotoSize;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/video/dto/VideoLiveInfo;)Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$GroupsGroupFull;", "equals", "other", "", "hashCode", "toString", "Wall", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class GroupsGroupFull extends UsersSubscriptionsItem {
        @SerializedName(PushConstants.INTENT_ACTIVITY_NAME)
        @Nullable
        private final String activity;
        @SerializedName("addresses")
        @Nullable
        private final GroupsAddressesInfo addresses;
        @SerializedName("admin_level")
        @Nullable
        private final GroupsGroupAdminLevel adminLevel;
        @SerializedName("age_limits")
        @Nullable
        private final GroupsGroupFullAgeLimits ageLimits;
        @SerializedName(VKApiCodes.PARAM_BAN_INFO)
        @Nullable
        private final GroupsGroupBanInfo banInfo;
        @SerializedName("can_create_topic")
        @Nullable
        private final BaseBoolInt canCreateTopic;
        @SerializedName("can_message")
        @Nullable
        private final BaseBoolInt canMessage;
        @SerializedName("can_post")
        @Nullable
        private final BaseBoolInt canPost;
        @SerializedName("can_see_all_posts")
        @Nullable
        private final BaseBoolInt canSeeAllPosts;
        @SerializedName("can_send_notify")
        @Nullable
        private final BaseBoolInt canSendNotify;
        @SerializedName("can_subscribe_podcasts")
        @Nullable
        private final Boolean canSubscribePodcasts;
        @SerializedName("can_subscribe_posts")
        @Nullable
        private final Boolean canSubscribePosts;
        @SerializedName("can_suggest")
        @Nullable
        private final BaseBoolInt canSuggest;
        @SerializedName("can_upload_doc")
        @Nullable
        private final BaseBoolInt canUploadDoc;
        @SerializedName("can_upload_story")
        @Nullable
        private final BaseBoolInt canUploadStory;
        @SerializedName("can_upload_video")
        @Nullable
        private final BaseBoolInt canUploadVideo;
        @SerializedName("city")
        @Nullable
        private final BaseObject city;
        @SerializedName("clips_count")
        @Nullable
        private final Integer clipsCount;
        @SerializedName("contacts")
        @Nullable
        private final List<GroupsContactsItem> contacts;
        @SerializedName("counters")
        @Nullable
        private final GroupsCountersGroup counters;
        @SerializedName(UserDataStore.COUNTRY)
        @Nullable
        private final BaseCountry country;
        @SerializedName("cover")
        @Nullable
        private final GroupsCover cover;
        @SerializedName("crop_photo")
        @Nullable
        private final BaseCropPhoto cropPhoto;
        @SerializedName("deactivated")
        @Nullable
        private final String deactivated;
        @SerializedName("description")
        @Nullable
        private final String description;
        @SerializedName("est_date")
        @Nullable
        private final String estDate;
        @SerializedName("finish_date")
        @Nullable
        private final Integer finishDate;
        @SerializedName("fixed_post")
        @Nullable
        private final Integer fixedPost;
        @SerializedName("has_group_channel")
        @Nullable
        private final Boolean hasGroupChannel;
        @SerializedName("has_market_app")
        @Nullable
        private final Boolean hasMarketApp;
        @SerializedName("has_photo")
        @Nullable
        private final BaseBoolInt hasPhoto;
        @SerializedName("has_unseen_stories")
        @Nullable
        private final Boolean hasUnseenStories;
        @SerializedName("id")
        @NotNull

        /* renamed from: id  reason: collision with root package name */
        private final UserId f36105id;
        @SerializedName("invited_by")
        @Nullable
        private final Integer invitedBy;
        @SerializedName("is_admin")
        @Nullable
        private final BaseBoolInt isAdmin;
        @SerializedName("is_adult")
        @Nullable
        private final BaseBoolInt isAdult;
        @SerializedName("is_advertiser")
        @Nullable
        private final BaseBoolInt isAdvertiser;
        @SerializedName("is_closed")
        @Nullable
        private final GroupsGroupIsClosed isClosed;
        @SerializedName("is_favorite")
        @Nullable
        private final BaseBoolInt isFavorite;
        @SerializedName("is_hidden_from_feed")
        @Nullable
        private final BaseBoolInt isHiddenFromFeed;
        @SerializedName("is_member")
        @Nullable
        private final BaseBoolInt isMember;
        @SerializedName("is_messages_blocked")
        @Nullable
        private final BaseBoolInt isMessagesBlocked;
        @SerializedName("is_subscribed")
        @Nullable
        private final BaseBoolInt isSubscribed;
        @SerializedName("is_subscribed_podcasts")
        @Nullable
        private final Boolean isSubscribedPodcasts;
        @SerializedName("is_video_live_notifications_blocked")
        @Nullable
        private final BaseBoolInt isVideoLiveNotificationsBlocked;
        @SerializedName("links")
        @Nullable
        private final List<GroupsLinksItem> links;
        @SerializedName("live_covers")
        @Nullable
        private final GroupsLiveCovers liveCovers;
        @SerializedName("main_album_id")
        @Nullable
        private final Integer mainAlbumId;
        @SerializedName("main_section")
        @Nullable
        private final GroupsGroupFullSection mainSection;
        @SerializedName("market")
        @Nullable
        private final GroupsMarketInfo market;
        @SerializedName("member_status")
        @Nullable
        private final GroupsGroupFullMemberStatus memberStatus;
        @SerializedName("members_count")
        @Nullable
        private final Integer membersCount;
        @SerializedName("members_count_text")
        @Nullable
        private final String membersCountText;
        @SerializedName("name")
        @Nullable
        private final String name;
        @SerializedName("online_status")
        @Nullable
        private final GroupsOnlineStatus onlineStatus;
        @SerializedName("photo_100")
        @Nullable
        private final String photo100;
        @SerializedName("photo_200")
        @Nullable
        private final String photo200;
        @SerializedName("photo_200_orig")
        @Nullable
        private final String photo200Orig;
        @SerializedName("photo_400")
        @Nullable
        private final String photo400;
        @SerializedName("photo_400_orig")
        @Nullable
        private final String photo400Orig;
        @SerializedName("photo_50")
        @Nullable
        private final String photo50;
        @SerializedName("photo_max")
        @Nullable
        private final String photoMax;
        @SerializedName("photo_max_orig")
        @Nullable
        private final String photoMaxOrig;
        @SerializedName("photo_max_size")
        @Nullable
        private final GroupsPhotoSize photoMaxSize;
        @SerializedName("public_date_label")
        @Nullable
        private final String publicDateLabel;
        @SerializedName("requests_count")
        @Nullable
        private final Integer requestsCount;
        @SerializedName("screen_name")
        @Nullable
        private final String screenName;
        @SerializedName("secondary_section")
        @Nullable
        private final GroupsGroupFullSection secondarySection;
        @SerializedName("site")
        @Nullable
        private final String site;
        @SerializedName("start_date")
        @Nullable
        private final Integer startDate;
        @SerializedName("status")
        @Nullable
        private final String status;
        @SerializedName("status_audio")
        @Nullable
        private final AudioAudio statusAudio;
        @SerializedName("stories_archive_count")
        @Nullable
        private final Integer storiesArchiveCount;
        @SerializedName("trending")
        @Nullable
        private final BaseBoolInt trending;
        @SerializedName("type")
        @Nullable
        private final GroupsGroupType type;
        @SerializedName("using_vkpay_market_app")
        @Nullable
        private final Boolean usingVkpayMarketApp;
        @SerializedName("verified")
        @Nullable
        private final BaseBoolInt verified;
        @SerializedName("video_live")
        @Nullable
        private final VideoLiveInfo videoLive;
        @SerializedName("video_live_count")
        @Nullable
        private final Integer videoLiveCount;
        @SerializedName("video_live_level")
        @Nullable
        private final Integer videoLiveLevel;
        @SerializedName("wall")
        @Nullable
        private final Wall wall;
        @SerializedName("wiki_page")
        @Nullable
        private final String wikiPage;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$GroupsGroupFull$Wall;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DISABLED", "OPEN", "LIMITED", "RESTRICTED", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes5.dex */
        public enum Wall {
            DISABLED(0),
            OPEN(1),
            LIMITED(2),
            RESTRICTED(3);
            
            private final int value;

            Wall(int i9) {
                this.value = i9;
            }

            public final int getValue() {
                return this.value;
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ GroupsGroupFull(com.vk.dto.common.id.UserId r81, com.vk.sdk.api.groups.dto.GroupsMarketInfo r82, com.vk.sdk.api.groups.dto.GroupsGroupFullMemberStatus r83, com.vk.sdk.api.base.dto.BaseBoolInt r84, com.vk.sdk.api.base.dto.BaseBoolInt r85, com.vk.sdk.api.base.dto.BaseBoolInt r86, com.vk.sdk.api.base.dto.BaseBoolInt r87, com.vk.sdk.api.base.dto.BaseObject r88, com.vk.sdk.api.base.dto.BaseCountry r89, com.vk.sdk.api.base.dto.BaseBoolInt r90, java.lang.String r91, java.lang.String r92, java.lang.Integer r93, java.lang.String r94, java.lang.Integer r95, java.lang.Integer r96, java.lang.Integer r97, java.lang.Integer r98, com.vk.sdk.api.groups.dto.GroupsCountersGroup r99, com.vk.sdk.api.groups.dto.GroupsCover r100, com.vk.sdk.api.base.dto.BaseBoolInt r101, com.vk.sdk.api.base.dto.BaseBoolInt r102, com.vk.sdk.api.base.dto.BaseBoolInt r103, com.vk.sdk.api.base.dto.BaseBoolInt r104, com.vk.sdk.api.base.dto.BaseBoolInt r105, com.vk.sdk.api.base.dto.BaseBoolInt r106, com.vk.sdk.api.base.dto.BaseBoolInt r107, java.lang.String r108, java.lang.Integer r109, com.vk.sdk.api.base.dto.BaseBoolInt r110, com.vk.sdk.api.base.dto.BaseCropPhoto r111, java.lang.String r112, com.vk.sdk.api.audio.dto.AudioAudio r113, java.lang.Integer r114, java.util.List r115, java.util.List r116, com.vk.sdk.api.users.dto.UsersSubscriptionsItem.GroupsGroupFull.Wall r117, java.lang.String r118, com.vk.sdk.api.groups.dto.GroupsGroupFullSection r119, com.vk.sdk.api.groups.dto.GroupsGroupFullSection r120, com.vk.sdk.api.base.dto.BaseBoolInt r121, com.vk.sdk.api.base.dto.BaseBoolInt r122, com.vk.sdk.api.base.dto.BaseBoolInt r123, com.vk.sdk.api.base.dto.BaseBoolInt r124, com.vk.sdk.api.groups.dto.GroupsOnlineStatus r125, java.lang.Integer r126, com.vk.sdk.api.groups.dto.GroupsGroupFullAgeLimits r127, com.vk.sdk.api.groups.dto.GroupsGroupBanInfo r128, java.lang.Boolean r129, java.lang.Boolean r130, java.lang.Boolean r131, com.vk.sdk.api.groups.dto.GroupsAddressesInfo r132, java.lang.Boolean r133, java.lang.Boolean r134, java.lang.Boolean r135, com.vk.sdk.api.groups.dto.GroupsLiveCovers r136, java.lang.Integer r137, java.lang.Boolean r138, java.lang.String r139, java.lang.String r140, com.vk.sdk.api.groups.dto.GroupsGroupIsClosed r141, com.vk.sdk.api.groups.dto.GroupsGroupType r142, com.vk.sdk.api.base.dto.BaseBoolInt r143, com.vk.sdk.api.groups.dto.GroupsGroupAdminLevel r144, com.vk.sdk.api.base.dto.BaseBoolInt r145, com.vk.sdk.api.base.dto.BaseBoolInt r146, java.lang.Integer r147, java.lang.Integer r148, java.lang.String r149, java.lang.String r150, java.lang.String r151, java.lang.String r152, java.lang.String r153, java.lang.String r154, java.lang.String r155, java.lang.String r156, java.lang.String r157, java.lang.String r158, java.lang.String r159, com.vk.sdk.api.groups.dto.GroupsPhotoSize r160, com.vk.sdk.api.base.dto.BaseBoolInt r161, com.vk.sdk.api.video.dto.VideoLiveInfo r162, int r163, int r164, int r165, kotlin.jvm.internal.DefaultConstructorMarker r166) {
            /*
                Method dump skipped, instructions count: 961
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vk.sdk.api.users.dto.UsersSubscriptionsItem.GroupsGroupFull.<init>(com.vk.dto.common.id.UserId, com.vk.sdk.api.groups.dto.GroupsMarketInfo, com.vk.sdk.api.groups.dto.GroupsGroupFullMemberStatus, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseObject, com.vk.sdk.api.base.dto.BaseCountry, com.vk.sdk.api.base.dto.BaseBoolInt, java.lang.String, java.lang.String, java.lang.Integer, java.lang.String, java.lang.Integer, java.lang.Integer, java.lang.Integer, java.lang.Integer, com.vk.sdk.api.groups.dto.GroupsCountersGroup, com.vk.sdk.api.groups.dto.GroupsCover, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, java.lang.String, java.lang.Integer, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseCropPhoto, java.lang.String, com.vk.sdk.api.audio.dto.AudioAudio, java.lang.Integer, java.util.List, java.util.List, com.vk.sdk.api.users.dto.UsersSubscriptionsItem$GroupsGroupFull$Wall, java.lang.String, com.vk.sdk.api.groups.dto.GroupsGroupFullSection, com.vk.sdk.api.groups.dto.GroupsGroupFullSection, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.groups.dto.GroupsOnlineStatus, java.lang.Integer, com.vk.sdk.api.groups.dto.GroupsGroupFullAgeLimits, com.vk.sdk.api.groups.dto.GroupsGroupBanInfo, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, com.vk.sdk.api.groups.dto.GroupsAddressesInfo, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, com.vk.sdk.api.groups.dto.GroupsLiveCovers, java.lang.Integer, java.lang.Boolean, java.lang.String, java.lang.String, com.vk.sdk.api.groups.dto.GroupsGroupIsClosed, com.vk.sdk.api.groups.dto.GroupsGroupType, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.groups.dto.GroupsGroupAdminLevel, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.base.dto.BaseBoolInt, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.vk.sdk.api.groups.dto.GroupsPhotoSize, com.vk.sdk.api.base.dto.BaseBoolInt, com.vk.sdk.api.video.dto.VideoLiveInfo, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        @NotNull
        public final UserId component1() {
            return this.f36105id;
        }

        @Nullable
        public final BaseBoolInt component10() {
            return this.verified;
        }

        @Nullable
        public final String component11() {
            return this.description;
        }

        @Nullable
        public final String component12() {
            return this.wikiPage;
        }

        @Nullable
        public final Integer component13() {
            return this.membersCount;
        }

        @Nullable
        public final String component14() {
            return this.membersCountText;
        }

        @Nullable
        public final Integer component15() {
            return this.requestsCount;
        }

        @Nullable
        public final Integer component16() {
            return this.videoLiveLevel;
        }

        @Nullable
        public final Integer component17() {
            return this.videoLiveCount;
        }

        @Nullable
        public final Integer component18() {
            return this.clipsCount;
        }

        @Nullable
        public final GroupsCountersGroup component19() {
            return this.counters;
        }

        @Nullable
        public final GroupsMarketInfo component2() {
            return this.market;
        }

        @Nullable
        public final GroupsCover component20() {
            return this.cover;
        }

        @Nullable
        public final BaseBoolInt component21() {
            return this.canPost;
        }

        @Nullable
        public final BaseBoolInt component22() {
            return this.canSuggest;
        }

        @Nullable
        public final BaseBoolInt component23() {
            return this.canUploadStory;
        }

        @Nullable
        public final BaseBoolInt component24() {
            return this.canUploadDoc;
        }

        @Nullable
        public final BaseBoolInt component25() {
            return this.canUploadVideo;
        }

        @Nullable
        public final BaseBoolInt component26() {
            return this.canSeeAllPosts;
        }

        @Nullable
        public final BaseBoolInt component27() {
            return this.canCreateTopic;
        }

        @Nullable
        public final String component28() {
            return this.activity;
        }

        @Nullable
        public final Integer component29() {
            return this.fixedPost;
        }

        @Nullable
        public final GroupsGroupFullMemberStatus component3() {
            return this.memberStatus;
        }

        @Nullable
        public final BaseBoolInt component30() {
            return this.hasPhoto;
        }

        @Nullable
        public final BaseCropPhoto component31() {
            return this.cropPhoto;
        }

        @Nullable
        public final String component32() {
            return this.status;
        }

        @Nullable
        public final AudioAudio component33() {
            return this.statusAudio;
        }

        @Nullable
        public final Integer component34() {
            return this.mainAlbumId;
        }

        @Nullable
        public final List<GroupsLinksItem> component35() {
            return this.links;
        }

        @Nullable
        public final List<GroupsContactsItem> component36() {
            return this.contacts;
        }

        @Nullable
        public final Wall component37() {
            return this.wall;
        }

        @Nullable
        public final String component38() {
            return this.site;
        }

        @Nullable
        public final GroupsGroupFullSection component39() {
            return this.mainSection;
        }

        @Nullable
        public final BaseBoolInt component4() {
            return this.isAdult;
        }

        @Nullable
        public final GroupsGroupFullSection component40() {
            return this.secondarySection;
        }

        @Nullable
        public final BaseBoolInt component41() {
            return this.trending;
        }

        @Nullable
        public final BaseBoolInt component42() {
            return this.canMessage;
        }

        @Nullable
        public final BaseBoolInt component43() {
            return this.isMessagesBlocked;
        }

        @Nullable
        public final BaseBoolInt component44() {
            return this.canSendNotify;
        }

        @Nullable
        public final GroupsOnlineStatus component45() {
            return this.onlineStatus;
        }

        @Nullable
        public final Integer component46() {
            return this.invitedBy;
        }

        @Nullable
        public final GroupsGroupFullAgeLimits component47() {
            return this.ageLimits;
        }

        @Nullable
        public final GroupsGroupBanInfo component48() {
            return this.banInfo;
        }

        @Nullable
        public final Boolean component49() {
            return this.hasMarketApp;
        }

        @Nullable
        public final BaseBoolInt component5() {
            return this.isHiddenFromFeed;
        }

        @Nullable
        public final Boolean component50() {
            return this.usingVkpayMarketApp;
        }

        @Nullable
        public final Boolean component51() {
            return this.hasGroupChannel;
        }

        @Nullable
        public final GroupsAddressesInfo component52() {
            return this.addresses;
        }

        @Nullable
        public final Boolean component53() {
            return this.isSubscribedPodcasts;
        }

        @Nullable
        public final Boolean component54() {
            return this.canSubscribePodcasts;
        }

        @Nullable
        public final Boolean component55() {
            return this.canSubscribePosts;
        }

        @Nullable
        public final GroupsLiveCovers component56() {
            return this.liveCovers;
        }

        @Nullable
        public final Integer component57() {
            return this.storiesArchiveCount;
        }

        @Nullable
        public final Boolean component58() {
            return this.hasUnseenStories;
        }

        @Nullable
        public final String component59() {
            return this.name;
        }

        @Nullable
        public final BaseBoolInt component6() {
            return this.isFavorite;
        }

        @Nullable
        public final String component60() {
            return this.screenName;
        }

        @Nullable
        public final GroupsGroupIsClosed component61() {
            return this.isClosed;
        }

        @Nullable
        public final GroupsGroupType component62() {
            return this.type;
        }

        @Nullable
        public final BaseBoolInt component63() {
            return this.isAdmin;
        }

        @Nullable
        public final GroupsGroupAdminLevel component64() {
            return this.adminLevel;
        }

        @Nullable
        public final BaseBoolInt component65() {
            return this.isMember;
        }

        @Nullable
        public final BaseBoolInt component66() {
            return this.isAdvertiser;
        }

        @Nullable
        public final Integer component67() {
            return this.startDate;
        }

        @Nullable
        public final Integer component68() {
            return this.finishDate;
        }

        @Nullable
        public final String component69() {
            return this.deactivated;
        }

        @Nullable
        public final BaseBoolInt component7() {
            return this.isSubscribed;
        }

        @Nullable
        public final String component70() {
            return this.photo50;
        }

        @Nullable
        public final String component71() {
            return this.photo100;
        }

        @Nullable
        public final String component72() {
            return this.photo200;
        }

        @Nullable
        public final String component73() {
            return this.photo200Orig;
        }

        @Nullable
        public final String component74() {
            return this.photo400;
        }

        @Nullable
        public final String component75() {
            return this.photo400Orig;
        }

        @Nullable
        public final String component76() {
            return this.photoMax;
        }

        @Nullable
        public final String component77() {
            return this.photoMaxOrig;
        }

        @Nullable
        public final String component78() {
            return this.estDate;
        }

        @Nullable
        public final String component79() {
            return this.publicDateLabel;
        }

        @Nullable
        public final BaseObject component8() {
            return this.city;
        }

        @Nullable
        public final GroupsPhotoSize component80() {
            return this.photoMaxSize;
        }

        @Nullable
        public final BaseBoolInt component81() {
            return this.isVideoLiveNotificationsBlocked;
        }

        @Nullable
        public final VideoLiveInfo component82() {
            return this.videoLive;
        }

        @Nullable
        public final BaseCountry component9() {
            return this.country;
        }

        @NotNull
        public final GroupsGroupFull copy(@NotNull UserId id2, @Nullable GroupsMarketInfo groupsMarketInfo, @Nullable GroupsGroupFullMemberStatus groupsGroupFullMemberStatus, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable BaseObject baseObject, @Nullable BaseCountry baseCountry, @Nullable BaseBoolInt baseBoolInt5, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable GroupsCountersGroup groupsCountersGroup, @Nullable GroupsCover groupsCover, @Nullable BaseBoolInt baseBoolInt6, @Nullable BaseBoolInt baseBoolInt7, @Nullable BaseBoolInt baseBoolInt8, @Nullable BaseBoolInt baseBoolInt9, @Nullable BaseBoolInt baseBoolInt10, @Nullable BaseBoolInt baseBoolInt11, @Nullable BaseBoolInt baseBoolInt12, @Nullable String str4, @Nullable Integer num6, @Nullable BaseBoolInt baseBoolInt13, @Nullable BaseCropPhoto baseCropPhoto, @Nullable String str5, @Nullable AudioAudio audioAudio, @Nullable Integer num7, @Nullable List<GroupsLinksItem> list, @Nullable List<GroupsContactsItem> list2, @Nullable Wall wall, @Nullable String str6, @Nullable GroupsGroupFullSection groupsGroupFullSection, @Nullable GroupsGroupFullSection groupsGroupFullSection2, @Nullable BaseBoolInt baseBoolInt14, @Nullable BaseBoolInt baseBoolInt15, @Nullable BaseBoolInt baseBoolInt16, @Nullable BaseBoolInt baseBoolInt17, @Nullable GroupsOnlineStatus groupsOnlineStatus, @Nullable Integer num8, @Nullable GroupsGroupFullAgeLimits groupsGroupFullAgeLimits, @Nullable GroupsGroupBanInfo groupsGroupBanInfo, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable GroupsAddressesInfo groupsAddressesInfo, @Nullable Boolean bool4, @Nullable Boolean bool5, @Nullable Boolean bool6, @Nullable GroupsLiveCovers groupsLiveCovers, @Nullable Integer num9, @Nullable Boolean bool7, @Nullable String str7, @Nullable String str8, @Nullable GroupsGroupIsClosed groupsGroupIsClosed, @Nullable GroupsGroupType groupsGroupType, @Nullable BaseBoolInt baseBoolInt18, @Nullable GroupsGroupAdminLevel groupsGroupAdminLevel, @Nullable BaseBoolInt baseBoolInt19, @Nullable BaseBoolInt baseBoolInt20, @Nullable Integer num10, @Nullable Integer num11, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable String str14, @Nullable String str15, @Nullable String str16, @Nullable String str17, @Nullable String str18, @Nullable String str19, @Nullable GroupsPhotoSize groupsPhotoSize, @Nullable BaseBoolInt baseBoolInt21, @Nullable VideoLiveInfo videoLiveInfo) {
            Intrinsics.checkNotNullParameter(id2, "id");
            return new GroupsGroupFull(id2, groupsMarketInfo, groupsGroupFullMemberStatus, baseBoolInt, baseBoolInt2, baseBoolInt3, baseBoolInt4, baseObject, baseCountry, baseBoolInt5, str, str2, num, str3, num2, num3, num4, num5, groupsCountersGroup, groupsCover, baseBoolInt6, baseBoolInt7, baseBoolInt8, baseBoolInt9, baseBoolInt10, baseBoolInt11, baseBoolInt12, str4, num6, baseBoolInt13, baseCropPhoto, str5, audioAudio, num7, list, list2, wall, str6, groupsGroupFullSection, groupsGroupFullSection2, baseBoolInt14, baseBoolInt15, baseBoolInt16, baseBoolInt17, groupsOnlineStatus, num8, groupsGroupFullAgeLimits, groupsGroupBanInfo, bool, bool2, bool3, groupsAddressesInfo, bool4, bool5, bool6, groupsLiveCovers, num9, bool7, str7, str8, groupsGroupIsClosed, groupsGroupType, baseBoolInt18, groupsGroupAdminLevel, baseBoolInt19, baseBoolInt20, num10, num11, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, groupsPhotoSize, baseBoolInt21, videoLiveInfo);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof GroupsGroupFull) {
                GroupsGroupFull groupsGroupFull = (GroupsGroupFull) obj;
                return Intrinsics.areEqual(this.f36105id, groupsGroupFull.f36105id) && Intrinsics.areEqual(this.market, groupsGroupFull.market) && this.memberStatus == groupsGroupFull.memberStatus && this.isAdult == groupsGroupFull.isAdult && this.isHiddenFromFeed == groupsGroupFull.isHiddenFromFeed && this.isFavorite == groupsGroupFull.isFavorite && this.isSubscribed == groupsGroupFull.isSubscribed && Intrinsics.areEqual(this.city, groupsGroupFull.city) && Intrinsics.areEqual(this.country, groupsGroupFull.country) && this.verified == groupsGroupFull.verified && Intrinsics.areEqual(this.description, groupsGroupFull.description) && Intrinsics.areEqual(this.wikiPage, groupsGroupFull.wikiPage) && Intrinsics.areEqual(this.membersCount, groupsGroupFull.membersCount) && Intrinsics.areEqual(this.membersCountText, groupsGroupFull.membersCountText) && Intrinsics.areEqual(this.requestsCount, groupsGroupFull.requestsCount) && Intrinsics.areEqual(this.videoLiveLevel, groupsGroupFull.videoLiveLevel) && Intrinsics.areEqual(this.videoLiveCount, groupsGroupFull.videoLiveCount) && Intrinsics.areEqual(this.clipsCount, groupsGroupFull.clipsCount) && Intrinsics.areEqual(this.counters, groupsGroupFull.counters) && Intrinsics.areEqual(this.cover, groupsGroupFull.cover) && this.canPost == groupsGroupFull.canPost && this.canSuggest == groupsGroupFull.canSuggest && this.canUploadStory == groupsGroupFull.canUploadStory && this.canUploadDoc == groupsGroupFull.canUploadDoc && this.canUploadVideo == groupsGroupFull.canUploadVideo && this.canSeeAllPosts == groupsGroupFull.canSeeAllPosts && this.canCreateTopic == groupsGroupFull.canCreateTopic && Intrinsics.areEqual(this.activity, groupsGroupFull.activity) && Intrinsics.areEqual(this.fixedPost, groupsGroupFull.fixedPost) && this.hasPhoto == groupsGroupFull.hasPhoto && Intrinsics.areEqual(this.cropPhoto, groupsGroupFull.cropPhoto) && Intrinsics.areEqual(this.status, groupsGroupFull.status) && Intrinsics.areEqual(this.statusAudio, groupsGroupFull.statusAudio) && Intrinsics.areEqual(this.mainAlbumId, groupsGroupFull.mainAlbumId) && Intrinsics.areEqual(this.links, groupsGroupFull.links) && Intrinsics.areEqual(this.contacts, groupsGroupFull.contacts) && this.wall == groupsGroupFull.wall && Intrinsics.areEqual(this.site, groupsGroupFull.site) && this.mainSection == groupsGroupFull.mainSection && this.secondarySection == groupsGroupFull.secondarySection && this.trending == groupsGroupFull.trending && this.canMessage == groupsGroupFull.canMessage && this.isMessagesBlocked == groupsGroupFull.isMessagesBlocked && this.canSendNotify == groupsGroupFull.canSendNotify && Intrinsics.areEqual(this.onlineStatus, groupsGroupFull.onlineStatus) && Intrinsics.areEqual(this.invitedBy, groupsGroupFull.invitedBy) && this.ageLimits == groupsGroupFull.ageLimits && Intrinsics.areEqual(this.banInfo, groupsGroupFull.banInfo) && Intrinsics.areEqual(this.hasMarketApp, groupsGroupFull.hasMarketApp) && Intrinsics.areEqual(this.usingVkpayMarketApp, groupsGroupFull.usingVkpayMarketApp) && Intrinsics.areEqual(this.hasGroupChannel, groupsGroupFull.hasGroupChannel) && Intrinsics.areEqual(this.addresses, groupsGroupFull.addresses) && Intrinsics.areEqual(this.isSubscribedPodcasts, groupsGroupFull.isSubscribedPodcasts) && Intrinsics.areEqual(this.canSubscribePodcasts, groupsGroupFull.canSubscribePodcasts) && Intrinsics.areEqual(this.canSubscribePosts, groupsGroupFull.canSubscribePosts) && Intrinsics.areEqual(this.liveCovers, groupsGroupFull.liveCovers) && Intrinsics.areEqual(this.storiesArchiveCount, groupsGroupFull.storiesArchiveCount) && Intrinsics.areEqual(this.hasUnseenStories, groupsGroupFull.hasUnseenStories) && Intrinsics.areEqual(this.name, groupsGroupFull.name) && Intrinsics.areEqual(this.screenName, groupsGroupFull.screenName) && this.isClosed == groupsGroupFull.isClosed && this.type == groupsGroupFull.type && this.isAdmin == groupsGroupFull.isAdmin && this.adminLevel == groupsGroupFull.adminLevel && this.isMember == groupsGroupFull.isMember && this.isAdvertiser == groupsGroupFull.isAdvertiser && Intrinsics.areEqual(this.startDate, groupsGroupFull.startDate) && Intrinsics.areEqual(this.finishDate, groupsGroupFull.finishDate) && Intrinsics.areEqual(this.deactivated, groupsGroupFull.deactivated) && Intrinsics.areEqual(this.photo50, groupsGroupFull.photo50) && Intrinsics.areEqual(this.photo100, groupsGroupFull.photo100) && Intrinsics.areEqual(this.photo200, groupsGroupFull.photo200) && Intrinsics.areEqual(this.photo200Orig, groupsGroupFull.photo200Orig) && Intrinsics.areEqual(this.photo400, groupsGroupFull.photo400) && Intrinsics.areEqual(this.photo400Orig, groupsGroupFull.photo400Orig) && Intrinsics.areEqual(this.photoMax, groupsGroupFull.photoMax) && Intrinsics.areEqual(this.photoMaxOrig, groupsGroupFull.photoMaxOrig) && Intrinsics.areEqual(this.estDate, groupsGroupFull.estDate) && Intrinsics.areEqual(this.publicDateLabel, groupsGroupFull.publicDateLabel) && Intrinsics.areEqual(this.photoMaxSize, groupsGroupFull.photoMaxSize) && this.isVideoLiveNotificationsBlocked == groupsGroupFull.isVideoLiveNotificationsBlocked && Intrinsics.areEqual(this.videoLive, groupsGroupFull.videoLive);
            }
            return false;
        }

        @Nullable
        public final String getActivity() {
            return this.activity;
        }

        @Nullable
        public final GroupsAddressesInfo getAddresses() {
            return this.addresses;
        }

        @Nullable
        public final GroupsGroupAdminLevel getAdminLevel() {
            return this.adminLevel;
        }

        @Nullable
        public final GroupsGroupFullAgeLimits getAgeLimits() {
            return this.ageLimits;
        }

        @Nullable
        public final GroupsGroupBanInfo getBanInfo() {
            return this.banInfo;
        }

        @Nullable
        public final BaseBoolInt getCanCreateTopic() {
            return this.canCreateTopic;
        }

        @Nullable
        public final BaseBoolInt getCanMessage() {
            return this.canMessage;
        }

        @Nullable
        public final BaseBoolInt getCanPost() {
            return this.canPost;
        }

        @Nullable
        public final BaseBoolInt getCanSeeAllPosts() {
            return this.canSeeAllPosts;
        }

        @Nullable
        public final BaseBoolInt getCanSendNotify() {
            return this.canSendNotify;
        }

        @Nullable
        public final Boolean getCanSubscribePodcasts() {
            return this.canSubscribePodcasts;
        }

        @Nullable
        public final Boolean getCanSubscribePosts() {
            return this.canSubscribePosts;
        }

        @Nullable
        public final BaseBoolInt getCanSuggest() {
            return this.canSuggest;
        }

        @Nullable
        public final BaseBoolInt getCanUploadDoc() {
            return this.canUploadDoc;
        }

        @Nullable
        public final BaseBoolInt getCanUploadStory() {
            return this.canUploadStory;
        }

        @Nullable
        public final BaseBoolInt getCanUploadVideo() {
            return this.canUploadVideo;
        }

        @Nullable
        public final BaseObject getCity() {
            return this.city;
        }

        @Nullable
        public final Integer getClipsCount() {
            return this.clipsCount;
        }

        @Nullable
        public final List<GroupsContactsItem> getContacts() {
            return this.contacts;
        }

        @Nullable
        public final GroupsCountersGroup getCounters() {
            return this.counters;
        }

        @Nullable
        public final BaseCountry getCountry() {
            return this.country;
        }

        @Nullable
        public final GroupsCover getCover() {
            return this.cover;
        }

        @Nullable
        public final BaseCropPhoto getCropPhoto() {
            return this.cropPhoto;
        }

        @Nullable
        public final String getDeactivated() {
            return this.deactivated;
        }

        @Nullable
        public final String getDescription() {
            return this.description;
        }

        @Nullable
        public final String getEstDate() {
            return this.estDate;
        }

        @Nullable
        public final Integer getFinishDate() {
            return this.finishDate;
        }

        @Nullable
        public final Integer getFixedPost() {
            return this.fixedPost;
        }

        @Nullable
        public final Boolean getHasGroupChannel() {
            return this.hasGroupChannel;
        }

        @Nullable
        public final Boolean getHasMarketApp() {
            return this.hasMarketApp;
        }

        @Nullable
        public final BaseBoolInt getHasPhoto() {
            return this.hasPhoto;
        }

        @Nullable
        public final Boolean getHasUnseenStories() {
            return this.hasUnseenStories;
        }

        @NotNull
        public final UserId getId() {
            return this.f36105id;
        }

        @Nullable
        public final Integer getInvitedBy() {
            return this.invitedBy;
        }

        @Nullable
        public final List<GroupsLinksItem> getLinks() {
            return this.links;
        }

        @Nullable
        public final GroupsLiveCovers getLiveCovers() {
            return this.liveCovers;
        }

        @Nullable
        public final Integer getMainAlbumId() {
            return this.mainAlbumId;
        }

        @Nullable
        public final GroupsGroupFullSection getMainSection() {
            return this.mainSection;
        }

        @Nullable
        public final GroupsMarketInfo getMarket() {
            return this.market;
        }

        @Nullable
        public final GroupsGroupFullMemberStatus getMemberStatus() {
            return this.memberStatus;
        }

        @Nullable
        public final Integer getMembersCount() {
            return this.membersCount;
        }

        @Nullable
        public final String getMembersCountText() {
            return this.membersCountText;
        }

        @Nullable
        public final String getName() {
            return this.name;
        }

        @Nullable
        public final GroupsOnlineStatus getOnlineStatus() {
            return this.onlineStatus;
        }

        @Nullable
        public final String getPhoto100() {
            return this.photo100;
        }

        @Nullable
        public final String getPhoto200() {
            return this.photo200;
        }

        @Nullable
        public final String getPhoto200Orig() {
            return this.photo200Orig;
        }

        @Nullable
        public final String getPhoto400() {
            return this.photo400;
        }

        @Nullable
        public final String getPhoto400Orig() {
            return this.photo400Orig;
        }

        @Nullable
        public final String getPhoto50() {
            return this.photo50;
        }

        @Nullable
        public final String getPhotoMax() {
            return this.photoMax;
        }

        @Nullable
        public final String getPhotoMaxOrig() {
            return this.photoMaxOrig;
        }

        @Nullable
        public final GroupsPhotoSize getPhotoMaxSize() {
            return this.photoMaxSize;
        }

        @Nullable
        public final String getPublicDateLabel() {
            return this.publicDateLabel;
        }

        @Nullable
        public final Integer getRequestsCount() {
            return this.requestsCount;
        }

        @Nullable
        public final String getScreenName() {
            return this.screenName;
        }

        @Nullable
        public final GroupsGroupFullSection getSecondarySection() {
            return this.secondarySection;
        }

        @Nullable
        public final String getSite() {
            return this.site;
        }

        @Nullable
        public final Integer getStartDate() {
            return this.startDate;
        }

        @Nullable
        public final String getStatus() {
            return this.status;
        }

        @Nullable
        public final AudioAudio getStatusAudio() {
            return this.statusAudio;
        }

        @Nullable
        public final Integer getStoriesArchiveCount() {
            return this.storiesArchiveCount;
        }

        @Nullable
        public final BaseBoolInt getTrending() {
            return this.trending;
        }

        @Nullable
        public final GroupsGroupType getType() {
            return this.type;
        }

        @Nullable
        public final Boolean getUsingVkpayMarketApp() {
            return this.usingVkpayMarketApp;
        }

        @Nullable
        public final BaseBoolInt getVerified() {
            return this.verified;
        }

        @Nullable
        public final VideoLiveInfo getVideoLive() {
            return this.videoLive;
        }

        @Nullable
        public final Integer getVideoLiveCount() {
            return this.videoLiveCount;
        }

        @Nullable
        public final Integer getVideoLiveLevel() {
            return this.videoLiveLevel;
        }

        @Nullable
        public final Wall getWall() {
            return this.wall;
        }

        @Nullable
        public final String getWikiPage() {
            return this.wikiPage;
        }

        public int hashCode() {
            int hashCode = this.f36105id.hashCode() * 31;
            GroupsMarketInfo groupsMarketInfo = this.market;
            int hashCode2 = (hashCode + (groupsMarketInfo == null ? 0 : groupsMarketInfo.hashCode())) * 31;
            GroupsGroupFullMemberStatus groupsGroupFullMemberStatus = this.memberStatus;
            int hashCode3 = (hashCode2 + (groupsGroupFullMemberStatus == null ? 0 : groupsGroupFullMemberStatus.hashCode())) * 31;
            BaseBoolInt baseBoolInt = this.isAdult;
            int hashCode4 = (hashCode3 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
            BaseBoolInt baseBoolInt2 = this.isHiddenFromFeed;
            int hashCode5 = (hashCode4 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
            BaseBoolInt baseBoolInt3 = this.isFavorite;
            int hashCode6 = (hashCode5 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
            BaseBoolInt baseBoolInt4 = this.isSubscribed;
            int hashCode7 = (hashCode6 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
            BaseObject baseObject = this.city;
            int hashCode8 = (hashCode7 + (baseObject == null ? 0 : baseObject.hashCode())) * 31;
            BaseCountry baseCountry = this.country;
            int hashCode9 = (hashCode8 + (baseCountry == null ? 0 : baseCountry.hashCode())) * 31;
            BaseBoolInt baseBoolInt5 = this.verified;
            int hashCode10 = (hashCode9 + (baseBoolInt5 == null ? 0 : baseBoolInt5.hashCode())) * 31;
            String str = this.description;
            int hashCode11 = (hashCode10 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.wikiPage;
            int hashCode12 = (hashCode11 + (str2 == null ? 0 : str2.hashCode())) * 31;
            Integer num = this.membersCount;
            int hashCode13 = (hashCode12 + (num == null ? 0 : num.hashCode())) * 31;
            String str3 = this.membersCountText;
            int hashCode14 = (hashCode13 + (str3 == null ? 0 : str3.hashCode())) * 31;
            Integer num2 = this.requestsCount;
            int hashCode15 = (hashCode14 + (num2 == null ? 0 : num2.hashCode())) * 31;
            Integer num3 = this.videoLiveLevel;
            int hashCode16 = (hashCode15 + (num3 == null ? 0 : num3.hashCode())) * 31;
            Integer num4 = this.videoLiveCount;
            int hashCode17 = (hashCode16 + (num4 == null ? 0 : num4.hashCode())) * 31;
            Integer num5 = this.clipsCount;
            int hashCode18 = (hashCode17 + (num5 == null ? 0 : num5.hashCode())) * 31;
            GroupsCountersGroup groupsCountersGroup = this.counters;
            int hashCode19 = (hashCode18 + (groupsCountersGroup == null ? 0 : groupsCountersGroup.hashCode())) * 31;
            GroupsCover groupsCover = this.cover;
            int hashCode20 = (hashCode19 + (groupsCover == null ? 0 : groupsCover.hashCode())) * 31;
            BaseBoolInt baseBoolInt6 = this.canPost;
            int hashCode21 = (hashCode20 + (baseBoolInt6 == null ? 0 : baseBoolInt6.hashCode())) * 31;
            BaseBoolInt baseBoolInt7 = this.canSuggest;
            int hashCode22 = (hashCode21 + (baseBoolInt7 == null ? 0 : baseBoolInt7.hashCode())) * 31;
            BaseBoolInt baseBoolInt8 = this.canUploadStory;
            int hashCode23 = (hashCode22 + (baseBoolInt8 == null ? 0 : baseBoolInt8.hashCode())) * 31;
            BaseBoolInt baseBoolInt9 = this.canUploadDoc;
            int hashCode24 = (hashCode23 + (baseBoolInt9 == null ? 0 : baseBoolInt9.hashCode())) * 31;
            BaseBoolInt baseBoolInt10 = this.canUploadVideo;
            int hashCode25 = (hashCode24 + (baseBoolInt10 == null ? 0 : baseBoolInt10.hashCode())) * 31;
            BaseBoolInt baseBoolInt11 = this.canSeeAllPosts;
            int hashCode26 = (hashCode25 + (baseBoolInt11 == null ? 0 : baseBoolInt11.hashCode())) * 31;
            BaseBoolInt baseBoolInt12 = this.canCreateTopic;
            int hashCode27 = (hashCode26 + (baseBoolInt12 == null ? 0 : baseBoolInt12.hashCode())) * 31;
            String str4 = this.activity;
            int hashCode28 = (hashCode27 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Integer num6 = this.fixedPost;
            int hashCode29 = (hashCode28 + (num6 == null ? 0 : num6.hashCode())) * 31;
            BaseBoolInt baseBoolInt13 = this.hasPhoto;
            int hashCode30 = (hashCode29 + (baseBoolInt13 == null ? 0 : baseBoolInt13.hashCode())) * 31;
            BaseCropPhoto baseCropPhoto = this.cropPhoto;
            int hashCode31 = (hashCode30 + (baseCropPhoto == null ? 0 : baseCropPhoto.hashCode())) * 31;
            String str5 = this.status;
            int hashCode32 = (hashCode31 + (str5 == null ? 0 : str5.hashCode())) * 31;
            AudioAudio audioAudio = this.statusAudio;
            int hashCode33 = (hashCode32 + (audioAudio == null ? 0 : audioAudio.hashCode())) * 31;
            Integer num7 = this.mainAlbumId;
            int hashCode34 = (hashCode33 + (num7 == null ? 0 : num7.hashCode())) * 31;
            List<GroupsLinksItem> list = this.links;
            int hashCode35 = (hashCode34 + (list == null ? 0 : list.hashCode())) * 31;
            List<GroupsContactsItem> list2 = this.contacts;
            int hashCode36 = (hashCode35 + (list2 == null ? 0 : list2.hashCode())) * 31;
            Wall wall = this.wall;
            int hashCode37 = (hashCode36 + (wall == null ? 0 : wall.hashCode())) * 31;
            String str6 = this.site;
            int hashCode38 = (hashCode37 + (str6 == null ? 0 : str6.hashCode())) * 31;
            GroupsGroupFullSection groupsGroupFullSection = this.mainSection;
            int hashCode39 = (hashCode38 + (groupsGroupFullSection == null ? 0 : groupsGroupFullSection.hashCode())) * 31;
            GroupsGroupFullSection groupsGroupFullSection2 = this.secondarySection;
            int hashCode40 = (hashCode39 + (groupsGroupFullSection2 == null ? 0 : groupsGroupFullSection2.hashCode())) * 31;
            BaseBoolInt baseBoolInt14 = this.trending;
            int hashCode41 = (hashCode40 + (baseBoolInt14 == null ? 0 : baseBoolInt14.hashCode())) * 31;
            BaseBoolInt baseBoolInt15 = this.canMessage;
            int hashCode42 = (hashCode41 + (baseBoolInt15 == null ? 0 : baseBoolInt15.hashCode())) * 31;
            BaseBoolInt baseBoolInt16 = this.isMessagesBlocked;
            int hashCode43 = (hashCode42 + (baseBoolInt16 == null ? 0 : baseBoolInt16.hashCode())) * 31;
            BaseBoolInt baseBoolInt17 = this.canSendNotify;
            int hashCode44 = (hashCode43 + (baseBoolInt17 == null ? 0 : baseBoolInt17.hashCode())) * 31;
            GroupsOnlineStatus groupsOnlineStatus = this.onlineStatus;
            int hashCode45 = (hashCode44 + (groupsOnlineStatus == null ? 0 : groupsOnlineStatus.hashCode())) * 31;
            Integer num8 = this.invitedBy;
            int hashCode46 = (hashCode45 + (num8 == null ? 0 : num8.hashCode())) * 31;
            GroupsGroupFullAgeLimits groupsGroupFullAgeLimits = this.ageLimits;
            int hashCode47 = (hashCode46 + (groupsGroupFullAgeLimits == null ? 0 : groupsGroupFullAgeLimits.hashCode())) * 31;
            GroupsGroupBanInfo groupsGroupBanInfo = this.banInfo;
            int hashCode48 = (hashCode47 + (groupsGroupBanInfo == null ? 0 : groupsGroupBanInfo.hashCode())) * 31;
            Boolean bool = this.hasMarketApp;
            int hashCode49 = (hashCode48 + (bool == null ? 0 : bool.hashCode())) * 31;
            Boolean bool2 = this.usingVkpayMarketApp;
            int hashCode50 = (hashCode49 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
            Boolean bool3 = this.hasGroupChannel;
            int hashCode51 = (hashCode50 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
            GroupsAddressesInfo groupsAddressesInfo = this.addresses;
            int hashCode52 = (hashCode51 + (groupsAddressesInfo == null ? 0 : groupsAddressesInfo.hashCode())) * 31;
            Boolean bool4 = this.isSubscribedPodcasts;
            int hashCode53 = (hashCode52 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
            Boolean bool5 = this.canSubscribePodcasts;
            int hashCode54 = (hashCode53 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
            Boolean bool6 = this.canSubscribePosts;
            int hashCode55 = (hashCode54 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
            GroupsLiveCovers groupsLiveCovers = this.liveCovers;
            int hashCode56 = (hashCode55 + (groupsLiveCovers == null ? 0 : groupsLiveCovers.hashCode())) * 31;
            Integer num9 = this.storiesArchiveCount;
            int hashCode57 = (hashCode56 + (num9 == null ? 0 : num9.hashCode())) * 31;
            Boolean bool7 = this.hasUnseenStories;
            int hashCode58 = (hashCode57 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
            String str7 = this.name;
            int hashCode59 = (hashCode58 + (str7 == null ? 0 : str7.hashCode())) * 31;
            String str8 = this.screenName;
            int hashCode60 = (hashCode59 + (str8 == null ? 0 : str8.hashCode())) * 31;
            GroupsGroupIsClosed groupsGroupIsClosed = this.isClosed;
            int hashCode61 = (hashCode60 + (groupsGroupIsClosed == null ? 0 : groupsGroupIsClosed.hashCode())) * 31;
            GroupsGroupType groupsGroupType = this.type;
            int hashCode62 = (hashCode61 + (groupsGroupType == null ? 0 : groupsGroupType.hashCode())) * 31;
            BaseBoolInt baseBoolInt18 = this.isAdmin;
            int hashCode63 = (hashCode62 + (baseBoolInt18 == null ? 0 : baseBoolInt18.hashCode())) * 31;
            GroupsGroupAdminLevel groupsGroupAdminLevel = this.adminLevel;
            int hashCode64 = (hashCode63 + (groupsGroupAdminLevel == null ? 0 : groupsGroupAdminLevel.hashCode())) * 31;
            BaseBoolInt baseBoolInt19 = this.isMember;
            int hashCode65 = (hashCode64 + (baseBoolInt19 == null ? 0 : baseBoolInt19.hashCode())) * 31;
            BaseBoolInt baseBoolInt20 = this.isAdvertiser;
            int hashCode66 = (hashCode65 + (baseBoolInt20 == null ? 0 : baseBoolInt20.hashCode())) * 31;
            Integer num10 = this.startDate;
            int hashCode67 = (hashCode66 + (num10 == null ? 0 : num10.hashCode())) * 31;
            Integer num11 = this.finishDate;
            int hashCode68 = (hashCode67 + (num11 == null ? 0 : num11.hashCode())) * 31;
            String str9 = this.deactivated;
            int hashCode69 = (hashCode68 + (str9 == null ? 0 : str9.hashCode())) * 31;
            String str10 = this.photo50;
            int hashCode70 = (hashCode69 + (str10 == null ? 0 : str10.hashCode())) * 31;
            String str11 = this.photo100;
            int hashCode71 = (hashCode70 + (str11 == null ? 0 : str11.hashCode())) * 31;
            String str12 = this.photo200;
            int hashCode72 = (hashCode71 + (str12 == null ? 0 : str12.hashCode())) * 31;
            String str13 = this.photo200Orig;
            int hashCode73 = (hashCode72 + (str13 == null ? 0 : str13.hashCode())) * 31;
            String str14 = this.photo400;
            int hashCode74 = (hashCode73 + (str14 == null ? 0 : str14.hashCode())) * 31;
            String str15 = this.photo400Orig;
            int hashCode75 = (hashCode74 + (str15 == null ? 0 : str15.hashCode())) * 31;
            String str16 = this.photoMax;
            int hashCode76 = (hashCode75 + (str16 == null ? 0 : str16.hashCode())) * 31;
            String str17 = this.photoMaxOrig;
            int hashCode77 = (hashCode76 + (str17 == null ? 0 : str17.hashCode())) * 31;
            String str18 = this.estDate;
            int hashCode78 = (hashCode77 + (str18 == null ? 0 : str18.hashCode())) * 31;
            String str19 = this.publicDateLabel;
            int hashCode79 = (hashCode78 + (str19 == null ? 0 : str19.hashCode())) * 31;
            GroupsPhotoSize groupsPhotoSize = this.photoMaxSize;
            int hashCode80 = (hashCode79 + (groupsPhotoSize == null ? 0 : groupsPhotoSize.hashCode())) * 31;
            BaseBoolInt baseBoolInt21 = this.isVideoLiveNotificationsBlocked;
            int hashCode81 = (hashCode80 + (baseBoolInt21 == null ? 0 : baseBoolInt21.hashCode())) * 31;
            VideoLiveInfo videoLiveInfo = this.videoLive;
            return hashCode81 + (videoLiveInfo != null ? videoLiveInfo.hashCode() : 0);
        }

        @Nullable
        public final BaseBoolInt isAdmin() {
            return this.isAdmin;
        }

        @Nullable
        public final BaseBoolInt isAdult() {
            return this.isAdult;
        }

        @Nullable
        public final BaseBoolInt isAdvertiser() {
            return this.isAdvertiser;
        }

        @Nullable
        public final GroupsGroupIsClosed isClosed() {
            return this.isClosed;
        }

        @Nullable
        public final BaseBoolInt isFavorite() {
            return this.isFavorite;
        }

        @Nullable
        public final BaseBoolInt isHiddenFromFeed() {
            return this.isHiddenFromFeed;
        }

        @Nullable
        public final BaseBoolInt isMember() {
            return this.isMember;
        }

        @Nullable
        public final BaseBoolInt isMessagesBlocked() {
            return this.isMessagesBlocked;
        }

        @Nullable
        public final BaseBoolInt isSubscribed() {
            return this.isSubscribed;
        }

        @Nullable
        public final Boolean isSubscribedPodcasts() {
            return this.isSubscribedPodcasts;
        }

        @Nullable
        public final BaseBoolInt isVideoLiveNotificationsBlocked() {
            return this.isVideoLiveNotificationsBlocked;
        }

        @NotNull
        public String toString() {
            UserId userId = this.f36105id;
            GroupsMarketInfo groupsMarketInfo = this.market;
            GroupsGroupFullMemberStatus groupsGroupFullMemberStatus = this.memberStatus;
            BaseBoolInt baseBoolInt = this.isAdult;
            BaseBoolInt baseBoolInt2 = this.isHiddenFromFeed;
            BaseBoolInt baseBoolInt3 = this.isFavorite;
            BaseBoolInt baseBoolInt4 = this.isSubscribed;
            BaseObject baseObject = this.city;
            BaseCountry baseCountry = this.country;
            BaseBoolInt baseBoolInt5 = this.verified;
            String str = this.description;
            String str2 = this.wikiPage;
            Integer num = this.membersCount;
            String str3 = this.membersCountText;
            Integer num2 = this.requestsCount;
            Integer num3 = this.videoLiveLevel;
            Integer num4 = this.videoLiveCount;
            Integer num5 = this.clipsCount;
            GroupsCountersGroup groupsCountersGroup = this.counters;
            GroupsCover groupsCover = this.cover;
            BaseBoolInt baseBoolInt6 = this.canPost;
            BaseBoolInt baseBoolInt7 = this.canSuggest;
            BaseBoolInt baseBoolInt8 = this.canUploadStory;
            BaseBoolInt baseBoolInt9 = this.canUploadDoc;
            BaseBoolInt baseBoolInt10 = this.canUploadVideo;
            BaseBoolInt baseBoolInt11 = this.canSeeAllPosts;
            BaseBoolInt baseBoolInt12 = this.canCreateTopic;
            String str4 = this.activity;
            Integer num6 = this.fixedPost;
            BaseBoolInt baseBoolInt13 = this.hasPhoto;
            BaseCropPhoto baseCropPhoto = this.cropPhoto;
            String str5 = this.status;
            AudioAudio audioAudio = this.statusAudio;
            Integer num7 = this.mainAlbumId;
            List<GroupsLinksItem> list = this.links;
            List<GroupsContactsItem> list2 = this.contacts;
            Wall wall = this.wall;
            String str6 = this.site;
            GroupsGroupFullSection groupsGroupFullSection = this.mainSection;
            GroupsGroupFullSection groupsGroupFullSection2 = this.secondarySection;
            BaseBoolInt baseBoolInt14 = this.trending;
            BaseBoolInt baseBoolInt15 = this.canMessage;
            BaseBoolInt baseBoolInt16 = this.isMessagesBlocked;
            BaseBoolInt baseBoolInt17 = this.canSendNotify;
            GroupsOnlineStatus groupsOnlineStatus = this.onlineStatus;
            Integer num8 = this.invitedBy;
            GroupsGroupFullAgeLimits groupsGroupFullAgeLimits = this.ageLimits;
            GroupsGroupBanInfo groupsGroupBanInfo = this.banInfo;
            Boolean bool = this.hasMarketApp;
            Boolean bool2 = this.usingVkpayMarketApp;
            Boolean bool3 = this.hasGroupChannel;
            GroupsAddressesInfo groupsAddressesInfo = this.addresses;
            Boolean bool4 = this.isSubscribedPodcasts;
            Boolean bool5 = this.canSubscribePodcasts;
            Boolean bool6 = this.canSubscribePosts;
            GroupsLiveCovers groupsLiveCovers = this.liveCovers;
            Integer num9 = this.storiesArchiveCount;
            Boolean bool7 = this.hasUnseenStories;
            String str7 = this.name;
            String str8 = this.screenName;
            GroupsGroupIsClosed groupsGroupIsClosed = this.isClosed;
            GroupsGroupType groupsGroupType = this.type;
            BaseBoolInt baseBoolInt18 = this.isAdmin;
            GroupsGroupAdminLevel groupsGroupAdminLevel = this.adminLevel;
            BaseBoolInt baseBoolInt19 = this.isMember;
            BaseBoolInt baseBoolInt20 = this.isAdvertiser;
            Integer num10 = this.startDate;
            Integer num11 = this.finishDate;
            String str9 = this.deactivated;
            String str10 = this.photo50;
            String str11 = this.photo100;
            String str12 = this.photo200;
            String str13 = this.photo200Orig;
            String str14 = this.photo400;
            String str15 = this.photo400Orig;
            String str16 = this.photoMax;
            String str17 = this.photoMaxOrig;
            String str18 = this.estDate;
            String str19 = this.publicDateLabel;
            GroupsPhotoSize groupsPhotoSize = this.photoMaxSize;
            BaseBoolInt baseBoolInt21 = this.isVideoLiveNotificationsBlocked;
            VideoLiveInfo videoLiveInfo = this.videoLive;
            return "GroupsGroupFull(id=" + userId + ", market=" + groupsMarketInfo + ", memberStatus=" + groupsGroupFullMemberStatus + ", isAdult=" + baseBoolInt + ", isHiddenFromFeed=" + baseBoolInt2 + ", isFavorite=" + baseBoolInt3 + ", isSubscribed=" + baseBoolInt4 + ", city=" + baseObject + ", country=" + baseCountry + ", verified=" + baseBoolInt5 + ", description=" + str + ", wikiPage=" + str2 + ", membersCount=" + num + ", membersCountText=" + str3 + ", requestsCount=" + num2 + ", videoLiveLevel=" + num3 + ", videoLiveCount=" + num4 + ", clipsCount=" + num5 + ", counters=" + groupsCountersGroup + ", cover=" + groupsCover + ", canPost=" + baseBoolInt6 + ", canSuggest=" + baseBoolInt7 + ", canUploadStory=" + baseBoolInt8 + ", canUploadDoc=" + baseBoolInt9 + ", canUploadVideo=" + baseBoolInt10 + ", canSeeAllPosts=" + baseBoolInt11 + ", canCreateTopic=" + baseBoolInt12 + ", activity=" + str4 + ", fixedPost=" + num6 + ", hasPhoto=" + baseBoolInt13 + ", cropPhoto=" + baseCropPhoto + ", status=" + str5 + ", statusAudio=" + audioAudio + ", mainAlbumId=" + num7 + ", links=" + list + ", contacts=" + list2 + ", wall=" + wall + ", site=" + str6 + ", mainSection=" + groupsGroupFullSection + ", secondarySection=" + groupsGroupFullSection2 + ", trending=" + baseBoolInt14 + ", canMessage=" + baseBoolInt15 + ", isMessagesBlocked=" + baseBoolInt16 + ", canSendNotify=" + baseBoolInt17 + ", onlineStatus=" + groupsOnlineStatus + ", invitedBy=" + num8 + ", ageLimits=" + groupsGroupFullAgeLimits + ", banInfo=" + groupsGroupBanInfo + ", hasMarketApp=" + bool + ", usingVkpayMarketApp=" + bool2 + ", hasGroupChannel=" + bool3 + ", addresses=" + groupsAddressesInfo + ", isSubscribedPodcasts=" + bool4 + ", canSubscribePodcasts=" + bool5 + ", canSubscribePosts=" + bool6 + ", liveCovers=" + groupsLiveCovers + ", storiesArchiveCount=" + num9 + ", hasUnseenStories=" + bool7 + ", name=" + str7 + ", screenName=" + str8 + ", isClosed=" + groupsGroupIsClosed + ", type=" + groupsGroupType + ", isAdmin=" + baseBoolInt18 + ", adminLevel=" + groupsGroupAdminLevel + ", isMember=" + baseBoolInt19 + ", isAdvertiser=" + baseBoolInt20 + ", startDate=" + num10 + ", finishDate=" + num11 + ", deactivated=" + str9 + ", photo50=" + str10 + ", photo100=" + str11 + ", photo200=" + str12 + ", photo200Orig=" + str13 + ", photo400=" + str14 + ", photo400Orig=" + str15 + ", photoMax=" + str16 + ", photoMaxOrig=" + str17 + ", estDate=" + str18 + ", publicDateLabel=" + str19 + ", photoMaxSize=" + groupsPhotoSize + ", isVideoLiveNotificationsBlocked=" + baseBoolInt21 + ", videoLive=" + videoLiveInfo + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GroupsGroupFull(@NotNull UserId id2, @Nullable GroupsMarketInfo groupsMarketInfo, @Nullable GroupsGroupFullMemberStatus groupsGroupFullMemberStatus, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable BaseObject baseObject, @Nullable BaseCountry baseCountry, @Nullable BaseBoolInt baseBoolInt5, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable GroupsCountersGroup groupsCountersGroup, @Nullable GroupsCover groupsCover, @Nullable BaseBoolInt baseBoolInt6, @Nullable BaseBoolInt baseBoolInt7, @Nullable BaseBoolInt baseBoolInt8, @Nullable BaseBoolInt baseBoolInt9, @Nullable BaseBoolInt baseBoolInt10, @Nullable BaseBoolInt baseBoolInt11, @Nullable BaseBoolInt baseBoolInt12, @Nullable String str4, @Nullable Integer num6, @Nullable BaseBoolInt baseBoolInt13, @Nullable BaseCropPhoto baseCropPhoto, @Nullable String str5, @Nullable AudioAudio audioAudio, @Nullable Integer num7, @Nullable List<GroupsLinksItem> list, @Nullable List<GroupsContactsItem> list2, @Nullable Wall wall, @Nullable String str6, @Nullable GroupsGroupFullSection groupsGroupFullSection, @Nullable GroupsGroupFullSection groupsGroupFullSection2, @Nullable BaseBoolInt baseBoolInt14, @Nullable BaseBoolInt baseBoolInt15, @Nullable BaseBoolInt baseBoolInt16, @Nullable BaseBoolInt baseBoolInt17, @Nullable GroupsOnlineStatus groupsOnlineStatus, @Nullable Integer num8, @Nullable GroupsGroupFullAgeLimits groupsGroupFullAgeLimits, @Nullable GroupsGroupBanInfo groupsGroupBanInfo, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable GroupsAddressesInfo groupsAddressesInfo, @Nullable Boolean bool4, @Nullable Boolean bool5, @Nullable Boolean bool6, @Nullable GroupsLiveCovers groupsLiveCovers, @Nullable Integer num9, @Nullable Boolean bool7, @Nullable String str7, @Nullable String str8, @Nullable GroupsGroupIsClosed groupsGroupIsClosed, @Nullable GroupsGroupType groupsGroupType, @Nullable BaseBoolInt baseBoolInt18, @Nullable GroupsGroupAdminLevel groupsGroupAdminLevel, @Nullable BaseBoolInt baseBoolInt19, @Nullable BaseBoolInt baseBoolInt20, @Nullable Integer num10, @Nullable Integer num11, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable String str14, @Nullable String str15, @Nullable String str16, @Nullable String str17, @Nullable String str18, @Nullable String str19, @Nullable GroupsPhotoSize groupsPhotoSize, @Nullable BaseBoolInt baseBoolInt21, @Nullable VideoLiveInfo videoLiveInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(id2, "id");
            this.f36105id = id2;
            this.market = groupsMarketInfo;
            this.memberStatus = groupsGroupFullMemberStatus;
            this.isAdult = baseBoolInt;
            this.isHiddenFromFeed = baseBoolInt2;
            this.isFavorite = baseBoolInt3;
            this.isSubscribed = baseBoolInt4;
            this.city = baseObject;
            this.country = baseCountry;
            this.verified = baseBoolInt5;
            this.description = str;
            this.wikiPage = str2;
            this.membersCount = num;
            this.membersCountText = str3;
            this.requestsCount = num2;
            this.videoLiveLevel = num3;
            this.videoLiveCount = num4;
            this.clipsCount = num5;
            this.counters = groupsCountersGroup;
            this.cover = groupsCover;
            this.canPost = baseBoolInt6;
            this.canSuggest = baseBoolInt7;
            this.canUploadStory = baseBoolInt8;
            this.canUploadDoc = baseBoolInt9;
            this.canUploadVideo = baseBoolInt10;
            this.canSeeAllPosts = baseBoolInt11;
            this.canCreateTopic = baseBoolInt12;
            this.activity = str4;
            this.fixedPost = num6;
            this.hasPhoto = baseBoolInt13;
            this.cropPhoto = baseCropPhoto;
            this.status = str5;
            this.statusAudio = audioAudio;
            this.mainAlbumId = num7;
            this.links = list;
            this.contacts = list2;
            this.wall = wall;
            this.site = str6;
            this.mainSection = groupsGroupFullSection;
            this.secondarySection = groupsGroupFullSection2;
            this.trending = baseBoolInt14;
            this.canMessage = baseBoolInt15;
            this.isMessagesBlocked = baseBoolInt16;
            this.canSendNotify = baseBoolInt17;
            this.onlineStatus = groupsOnlineStatus;
            this.invitedBy = num8;
            this.ageLimits = groupsGroupFullAgeLimits;
            this.banInfo = groupsGroupBanInfo;
            this.hasMarketApp = bool;
            this.usingVkpayMarketApp = bool2;
            this.hasGroupChannel = bool3;
            this.addresses = groupsAddressesInfo;
            this.isSubscribedPodcasts = bool4;
            this.canSubscribePodcasts = bool5;
            this.canSubscribePosts = bool6;
            this.liveCovers = groupsLiveCovers;
            this.storiesArchiveCount = num9;
            this.hasUnseenStories = bool7;
            this.name = str7;
            this.screenName = str8;
            this.isClosed = groupsGroupIsClosed;
            this.type = groupsGroupType;
            this.isAdmin = baseBoolInt18;
            this.adminLevel = groupsGroupAdminLevel;
            this.isMember = baseBoolInt19;
            this.isAdvertiser = baseBoolInt20;
            this.startDate = num10;
            this.finishDate = num11;
            this.deactivated = str9;
            this.photo50 = str10;
            this.photo100 = str11;
            this.photo200 = str12;
            this.photo200Orig = str13;
            this.photo400 = str14;
            this.photo400Orig = str15;
            this.photoMax = str16;
            this.photoMaxOrig = str17;
            this.estDate = str18;
            this.publicDateLabel = str19;
            this.photoMaxSize = groupsPhotoSize;
            this.isVideoLiveNotificationsBlocked = baseBoolInt21;
            this.videoLive = videoLiveInfo;
        }
    }

    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b9\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001Bñ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0002\u0010 J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u0010*J\u000b\u0010B\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010H\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u0010*J\u000b\u0010I\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010J\u001a\u0004\u0018\u00010\u001eHÆ\u0003¢\u0006\u0002\u0010\"J\u000b\u0010K\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010L\u001a\u0004\u0018\u00010\u001eHÆ\u0003¢\u0006\u0002\u0010\"J\u000b\u0010M\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u000fHÆ\u0003Jü\u0001\u0010T\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001eHÆ\u0001¢\u0006\u0002\u0010UJ\u0013\u0010V\u001a\u00020\u001e2\b\u0010W\u001a\u0004\u0018\u00010XHÖ\u0003J\t\u0010Y\u001a\u00020\u0012HÖ\u0001J\t\u0010Z\u001a\u00020\tHÖ\u0001R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010%R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010+\u001a\u0004\b)\u0010*R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b\u001f\u0010\"R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010%R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010+\u001a\u0004\b3\u0010*R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00102R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010%R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u0010%R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010%R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u00102R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u00102¨\u0006["}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$UsersUserXtrType;", "Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem;", "id", "Lcom/vk/dto/common/id/UserId;", "type", "Lcom/vk/sdk/api/users/dto/UsersUserType;", "sex", "Lcom/vk/sdk/api/base/dto/BaseSex;", "screenName", "", "photo50", "photo100", "onlineInfo", "Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;", "online", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "onlineMobile", "onlineApp", "", "verified", "trending", "friendStatus", "Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;", "mutual", "Lcom/vk/sdk/api/friends/dto/FriendsRequestsMutual;", "deactivated", "firstName", "hidden", "lastName", "canAccessClosed", "", "isClosed", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/users/dto/UsersUserType;Lcom/vk/sdk/api/base/dto/BaseSex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;Lcom/vk/sdk/api/friends/dto/FriendsRequestsMutual;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getCanAccessClosed", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getDeactivated", "()Ljava/lang/String;", "getFirstName", "getFriendStatus", "()Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;", "getHidden", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "()Lcom/vk/dto/common/id/UserId;", "getLastName", "getMutual", "()Lcom/vk/sdk/api/friends/dto/FriendsRequestsMutual;", "getOnline", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getOnlineApp", "getOnlineInfo", "()Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;", "getOnlineMobile", "getPhoto100", "getPhoto50", "getScreenName", "getSex", "()Lcom/vk/sdk/api/base/dto/BaseSex;", "getTrending", "getType", "()Lcom/vk/sdk/api/users/dto/UsersUserType;", "getVerified", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/users/dto/UsersUserType;Lcom/vk/sdk/api/base/dto/BaseSex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/users/dto/UsersOnlineInfo;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/friends/dto/FriendsFriendStatusStatus;Lcom/vk/sdk/api/friends/dto/FriendsRequestsMutual;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/users/dto/UsersSubscriptionsItem$UsersUserXtrType;", "equals", "other", "", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class UsersUserXtrType extends UsersSubscriptionsItem {
        @SerializedName("can_access_closed")
        @Nullable
        private final Boolean canAccessClosed;
        @SerializedName("deactivated")
        @Nullable
        private final String deactivated;
        @SerializedName("first_name")
        @Nullable
        private final String firstName;
        @SerializedName("friend_status")
        @Nullable
        private final FriendsFriendStatusStatus friendStatus;
        @SerializedName("hidden")
        @Nullable
        private final Integer hidden;
        @SerializedName("id")
        @NotNull

        /* renamed from: id  reason: collision with root package name */
        private final UserId f36106id;
        @SerializedName("is_closed")
        @Nullable
        private final Boolean isClosed;
        @SerializedName("last_name")
        @Nullable
        private final String lastName;
        @SerializedName("mutual")
        @Nullable
        private final FriendsRequestsMutual mutual;
        @SerializedName("online")
        @Nullable
        private final BaseBoolInt online;
        @SerializedName("online_app")
        @Nullable
        private final Integer onlineApp;
        @SerializedName("online_info")
        @Nullable
        private final UsersOnlineInfo onlineInfo;
        @SerializedName("online_mobile")
        @Nullable
        private final BaseBoolInt onlineMobile;
        @SerializedName("photo_100")
        @Nullable
        private final String photo100;
        @SerializedName("photo_50")
        @Nullable
        private final String photo50;
        @SerializedName("screen_name")
        @Nullable
        private final String screenName;
        @SerializedName("sex")
        @Nullable
        private final BaseSex sex;
        @SerializedName("trending")
        @Nullable
        private final BaseBoolInt trending;
        @SerializedName("type")
        @Nullable
        private final UsersUserType type;
        @SerializedName("verified")
        @Nullable
        private final BaseBoolInt verified;

        public /* synthetic */ UsersUserXtrType(UserId userId, UsersUserType usersUserType, BaseSex baseSex, String str, String str2, String str3, UsersOnlineInfo usersOnlineInfo, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, Integer num, BaseBoolInt baseBoolInt3, BaseBoolInt baseBoolInt4, FriendsFriendStatusStatus friendsFriendStatusStatus, FriendsRequestsMutual friendsRequestsMutual, String str4, String str5, Integer num2, String str6, Boolean bool, Boolean bool2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(userId, (i9 & 2) != 0 ? null : usersUserType, (i9 & 4) != 0 ? null : baseSex, (i9 & 8) != 0 ? null : str, (i9 & 16) != 0 ? null : str2, (i9 & 32) != 0 ? null : str3, (i9 & 64) != 0 ? null : usersOnlineInfo, (i9 & 128) != 0 ? null : baseBoolInt, (i9 & 256) != 0 ? null : baseBoolInt2, (i9 & 512) != 0 ? null : num, (i9 & 1024) != 0 ? null : baseBoolInt3, (i9 & 2048) != 0 ? null : baseBoolInt4, (i9 & 4096) != 0 ? null : friendsFriendStatusStatus, (i9 & 8192) != 0 ? null : friendsRequestsMutual, (i9 & 16384) != 0 ? null : str4, (i9 & 32768) != 0 ? null : str5, (i9 & 65536) != 0 ? null : num2, (i9 & 131072) != 0 ? null : str6, (i9 & 262144) != 0 ? null : bool, (i9 & 524288) == 0 ? bool2 : null);
        }

        @NotNull
        public final UserId component1() {
            return this.f36106id;
        }

        @Nullable
        public final Integer component10() {
            return this.onlineApp;
        }

        @Nullable
        public final BaseBoolInt component11() {
            return this.verified;
        }

        @Nullable
        public final BaseBoolInt component12() {
            return this.trending;
        }

        @Nullable
        public final FriendsFriendStatusStatus component13() {
            return this.friendStatus;
        }

        @Nullable
        public final FriendsRequestsMutual component14() {
            return this.mutual;
        }

        @Nullable
        public final String component15() {
            return this.deactivated;
        }

        @Nullable
        public final String component16() {
            return this.firstName;
        }

        @Nullable
        public final Integer component17() {
            return this.hidden;
        }

        @Nullable
        public final String component18() {
            return this.lastName;
        }

        @Nullable
        public final Boolean component19() {
            return this.canAccessClosed;
        }

        @Nullable
        public final UsersUserType component2() {
            return this.type;
        }

        @Nullable
        public final Boolean component20() {
            return this.isClosed;
        }

        @Nullable
        public final BaseSex component3() {
            return this.sex;
        }

        @Nullable
        public final String component4() {
            return this.screenName;
        }

        @Nullable
        public final String component5() {
            return this.photo50;
        }

        @Nullable
        public final String component6() {
            return this.photo100;
        }

        @Nullable
        public final UsersOnlineInfo component7() {
            return this.onlineInfo;
        }

        @Nullable
        public final BaseBoolInt component8() {
            return this.online;
        }

        @Nullable
        public final BaseBoolInt component9() {
            return this.onlineMobile;
        }

        @NotNull
        public final UsersUserXtrType copy(@NotNull UserId id2, @Nullable UsersUserType usersUserType, @Nullable BaseSex baseSex, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable UsersOnlineInfo usersOnlineInfo, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable FriendsFriendStatusStatus friendsFriendStatusStatus, @Nullable FriendsRequestsMutual friendsRequestsMutual, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable String str6, @Nullable Boolean bool, @Nullable Boolean bool2) {
            Intrinsics.checkNotNullParameter(id2, "id");
            return new UsersUserXtrType(id2, usersUserType, baseSex, str, str2, str3, usersOnlineInfo, baseBoolInt, baseBoolInt2, num, baseBoolInt3, baseBoolInt4, friendsFriendStatusStatus, friendsRequestsMutual, str4, str5, num2, str6, bool, bool2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof UsersUserXtrType) {
                UsersUserXtrType usersUserXtrType = (UsersUserXtrType) obj;
                return Intrinsics.areEqual(this.f36106id, usersUserXtrType.f36106id) && this.type == usersUserXtrType.type && this.sex == usersUserXtrType.sex && Intrinsics.areEqual(this.screenName, usersUserXtrType.screenName) && Intrinsics.areEqual(this.photo50, usersUserXtrType.photo50) && Intrinsics.areEqual(this.photo100, usersUserXtrType.photo100) && Intrinsics.areEqual(this.onlineInfo, usersUserXtrType.onlineInfo) && this.online == usersUserXtrType.online && this.onlineMobile == usersUserXtrType.onlineMobile && Intrinsics.areEqual(this.onlineApp, usersUserXtrType.onlineApp) && this.verified == usersUserXtrType.verified && this.trending == usersUserXtrType.trending && this.friendStatus == usersUserXtrType.friendStatus && Intrinsics.areEqual(this.mutual, usersUserXtrType.mutual) && Intrinsics.areEqual(this.deactivated, usersUserXtrType.deactivated) && Intrinsics.areEqual(this.firstName, usersUserXtrType.firstName) && Intrinsics.areEqual(this.hidden, usersUserXtrType.hidden) && Intrinsics.areEqual(this.lastName, usersUserXtrType.lastName) && Intrinsics.areEqual(this.canAccessClosed, usersUserXtrType.canAccessClosed) && Intrinsics.areEqual(this.isClosed, usersUserXtrType.isClosed);
            }
            return false;
        }

        @Nullable
        public final Boolean getCanAccessClosed() {
            return this.canAccessClosed;
        }

        @Nullable
        public final String getDeactivated() {
            return this.deactivated;
        }

        @Nullable
        public final String getFirstName() {
            return this.firstName;
        }

        @Nullable
        public final FriendsFriendStatusStatus getFriendStatus() {
            return this.friendStatus;
        }

        @Nullable
        public final Integer getHidden() {
            return this.hidden;
        }

        @NotNull
        public final UserId getId() {
            return this.f36106id;
        }

        @Nullable
        public final String getLastName() {
            return this.lastName;
        }

        @Nullable
        public final FriendsRequestsMutual getMutual() {
            return this.mutual;
        }

        @Nullable
        public final BaseBoolInt getOnline() {
            return this.online;
        }

        @Nullable
        public final Integer getOnlineApp() {
            return this.onlineApp;
        }

        @Nullable
        public final UsersOnlineInfo getOnlineInfo() {
            return this.onlineInfo;
        }

        @Nullable
        public final BaseBoolInt getOnlineMobile() {
            return this.onlineMobile;
        }

        @Nullable
        public final String getPhoto100() {
            return this.photo100;
        }

        @Nullable
        public final String getPhoto50() {
            return this.photo50;
        }

        @Nullable
        public final String getScreenName() {
            return this.screenName;
        }

        @Nullable
        public final BaseSex getSex() {
            return this.sex;
        }

        @Nullable
        public final BaseBoolInt getTrending() {
            return this.trending;
        }

        @Nullable
        public final UsersUserType getType() {
            return this.type;
        }

        @Nullable
        public final BaseBoolInt getVerified() {
            return this.verified;
        }

        public int hashCode() {
            int hashCode = this.f36106id.hashCode() * 31;
            UsersUserType usersUserType = this.type;
            int hashCode2 = (hashCode + (usersUserType == null ? 0 : usersUserType.hashCode())) * 31;
            BaseSex baseSex = this.sex;
            int hashCode3 = (hashCode2 + (baseSex == null ? 0 : baseSex.hashCode())) * 31;
            String str = this.screenName;
            int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.photo50;
            int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.photo100;
            int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
            UsersOnlineInfo usersOnlineInfo = this.onlineInfo;
            int hashCode7 = (hashCode6 + (usersOnlineInfo == null ? 0 : usersOnlineInfo.hashCode())) * 31;
            BaseBoolInt baseBoolInt = this.online;
            int hashCode8 = (hashCode7 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
            BaseBoolInt baseBoolInt2 = this.onlineMobile;
            int hashCode9 = (hashCode8 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
            Integer num = this.onlineApp;
            int hashCode10 = (hashCode9 + (num == null ? 0 : num.hashCode())) * 31;
            BaseBoolInt baseBoolInt3 = this.verified;
            int hashCode11 = (hashCode10 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
            BaseBoolInt baseBoolInt4 = this.trending;
            int hashCode12 = (hashCode11 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
            FriendsFriendStatusStatus friendsFriendStatusStatus = this.friendStatus;
            int hashCode13 = (hashCode12 + (friendsFriendStatusStatus == null ? 0 : friendsFriendStatusStatus.hashCode())) * 31;
            FriendsRequestsMutual friendsRequestsMutual = this.mutual;
            int hashCode14 = (hashCode13 + (friendsRequestsMutual == null ? 0 : friendsRequestsMutual.hashCode())) * 31;
            String str4 = this.deactivated;
            int hashCode15 = (hashCode14 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.firstName;
            int hashCode16 = (hashCode15 + (str5 == null ? 0 : str5.hashCode())) * 31;
            Integer num2 = this.hidden;
            int hashCode17 = (hashCode16 + (num2 == null ? 0 : num2.hashCode())) * 31;
            String str6 = this.lastName;
            int hashCode18 = (hashCode17 + (str6 == null ? 0 : str6.hashCode())) * 31;
            Boolean bool = this.canAccessClosed;
            int hashCode19 = (hashCode18 + (bool == null ? 0 : bool.hashCode())) * 31;
            Boolean bool2 = this.isClosed;
            return hashCode19 + (bool2 != null ? bool2.hashCode() : 0);
        }

        @Nullable
        public final Boolean isClosed() {
            return this.isClosed;
        }

        @NotNull
        public String toString() {
            UserId userId = this.f36106id;
            UsersUserType usersUserType = this.type;
            BaseSex baseSex = this.sex;
            String str = this.screenName;
            String str2 = this.photo50;
            String str3 = this.photo100;
            UsersOnlineInfo usersOnlineInfo = this.onlineInfo;
            BaseBoolInt baseBoolInt = this.online;
            BaseBoolInt baseBoolInt2 = this.onlineMobile;
            Integer num = this.onlineApp;
            BaseBoolInt baseBoolInt3 = this.verified;
            BaseBoolInt baseBoolInt4 = this.trending;
            FriendsFriendStatusStatus friendsFriendStatusStatus = this.friendStatus;
            FriendsRequestsMutual friendsRequestsMutual = this.mutual;
            String str4 = this.deactivated;
            String str5 = this.firstName;
            Integer num2 = this.hidden;
            String str6 = this.lastName;
            Boolean bool = this.canAccessClosed;
            Boolean bool2 = this.isClosed;
            return "UsersUserXtrType(id=" + userId + ", type=" + usersUserType + ", sex=" + baseSex + ", screenName=" + str + ", photo50=" + str2 + ", photo100=" + str3 + ", onlineInfo=" + usersOnlineInfo + ", online=" + baseBoolInt + ", onlineMobile=" + baseBoolInt2 + ", onlineApp=" + num + ", verified=" + baseBoolInt3 + ", trending=" + baseBoolInt4 + ", friendStatus=" + friendsFriendStatusStatus + ", mutual=" + friendsRequestsMutual + ", deactivated=" + str4 + ", firstName=" + str5 + ", hidden=" + num2 + ", lastName=" + str6 + ", canAccessClosed=" + bool + ", isClosed=" + bool2 + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UsersUserXtrType(@NotNull UserId id2, @Nullable UsersUserType usersUserType, @Nullable BaseSex baseSex, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable UsersOnlineInfo usersOnlineInfo, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt3, @Nullable BaseBoolInt baseBoolInt4, @Nullable FriendsFriendStatusStatus friendsFriendStatusStatus, @Nullable FriendsRequestsMutual friendsRequestsMutual, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable String str6, @Nullable Boolean bool, @Nullable Boolean bool2) {
            super(null);
            Intrinsics.checkNotNullParameter(id2, "id");
            this.f36106id = id2;
            this.type = usersUserType;
            this.sex = baseSex;
            this.screenName = str;
            this.photo50 = str2;
            this.photo100 = str3;
            this.onlineInfo = usersOnlineInfo;
            this.online = baseBoolInt;
            this.onlineMobile = baseBoolInt2;
            this.onlineApp = num;
            this.verified = baseBoolInt3;
            this.trending = baseBoolInt4;
            this.friendStatus = friendsFriendStatusStatus;
            this.mutual = friendsRequestsMutual;
            this.deactivated = str4;
            this.firstName = str5;
            this.hidden = num2;
            this.lastName = str6;
            this.canAccessClosed = bool;
            this.isClosed = bool2;
        }
    }

    private UsersSubscriptionsItem() {
    }

    public /* synthetic */ UsersSubscriptionsItem(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
