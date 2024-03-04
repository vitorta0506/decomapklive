package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.share.internal.ShareConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 *2\u00020\u0001:\u0001*BO\b\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000bB\u000f\b\u0010\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eB\u000f\b\u0012\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0016\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u001cJ\b\u0010$\u001a\u00020\u001cH\u0016J\b\u0010%\u001a\u0004\u0018\u00010\rJ\u0018\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u001cH\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013R\u0013\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017¨\u0006+"}, d2 = {"Lcom/facebook/Profile;", "Landroid/os/Parcelable;", "id", "", "firstName", "middleName", "lastName", "name", "linkUri", "Landroid/net/Uri;", "pictureUri", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V", "jsonObject", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", ShareConstants.FEED_SOURCE_PARAM, "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getFirstName", "()Ljava/lang/String;", "getId", "getLastName", "getLinkUri", "()Landroid/net/Uri;", "getMiddleName", "getName", "getPictureUri", "describeContents", "", "equals", "", "other", "", "getProfilePictureUri", "width", "height", "hashCode", "toJSONObject", "writeToParcel", "", "dest", "flags", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class Profile implements Parcelable {
    @JvmField
    @NotNull
    public static final Parcelable.Creator<Profile> CREATOR;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String FIRST_NAME_KEY = "first_name";
    @NotNull
    private static final String ID_KEY = "id";
    @NotNull
    private static final String LAST_NAME_KEY = "last_name";
    @NotNull
    private static final String LINK_URI_KEY = "link_uri";
    @NotNull
    private static final String MIDDLE_NAME_KEY = "middle_name";
    @NotNull
    private static final String NAME_KEY = "name";
    @NotNull
    private static final String PICTURE_URI_KEY = "picture_uri";
    @NotNull
    private static final String TAG;
    @Nullable
    private final String firstName;
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final String f4813id;
    @Nullable
    private final String lastName;
    @Nullable
    private final Uri linkUri;
    @Nullable
    private final String middleName;
    @Nullable
    private final String name;
    @Nullable
    private final Uri pictureUri;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010\u0012\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/facebook/Profile$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/Profile;", "FIRST_NAME_KEY", "", "ID_KEY", "LAST_NAME_KEY", "LINK_URI_KEY", "MIDDLE_NAME_KEY", "NAME_KEY", "PICTURE_URI_KEY", "TAG", "fetchProfileForCurrentAccessToken", "", "getCurrentProfile", "setCurrentProfile", "profile", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void fetchProfileForCurrentAccessToken() {
            AccessToken.Companion companion = AccessToken.Companion;
            AccessToken currentAccessToken = companion.getCurrentAccessToken();
            if (currentAccessToken == null) {
                return;
            }
            if (!companion.isCurrentAccessTokenActive()) {
                setCurrentProfile(null);
                return;
            }
            Utility utility = Utility.INSTANCE;
            Utility.getGraphMeRequestWithCacheAsync(currentAccessToken.getToken(), new Utility.GraphMeRequestWithCacheCallback() { // from class: com.facebook.Profile$Companion$fetchProfileForCurrentAccessToken$1
                @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
                public void onFailure(@Nullable FacebookException facebookException) {
                    String str;
                    str = Profile.TAG;
                    Log.e(str, Intrinsics.stringPlus("Got unexpected exception: ", facebookException));
                }

                @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
                public void onSuccess(@Nullable JSONObject jSONObject) {
                    String str;
                    String optString = jSONObject == null ? null : jSONObject.optString("id");
                    if (optString == null) {
                        str = Profile.TAG;
                        Log.w(str, "No user ID returned on Me request");
                        return;
                    }
                    String optString2 = jSONObject.optString("link");
                    String optString3 = jSONObject.optString("profile_picture", null);
                    Profile.Companion.setCurrentProfile(new Profile(optString, jSONObject.optString("first_name"), jSONObject.optString(AuthenticationTokenClaims.JSON_KEY_MIDDLE_NAME), jSONObject.optString("last_name"), jSONObject.optString("name"), optString2 != null ? Uri.parse(optString2) : null, optString3 != null ? Uri.parse(optString3) : null));
                }
            });
        }

        @JvmStatic
        @Nullable
        public final Profile getCurrentProfile() {
            return ProfileManager.Companion.getInstance().getCurrentProfile();
        }

        @JvmStatic
        public final void setCurrentProfile(@Nullable Profile profile) {
            ProfileManager.Companion.getInstance().setCurrentProfile(profile);
        }
    }

    static {
        String simpleName = Profile.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "Profile::class.java.simpleName");
        TAG = simpleName;
        CREATOR = new Parcelable.Creator<Profile>() { // from class: com.facebook.Profile$Companion$CREATOR$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public Profile createFromParcel(@NotNull Parcel source) {
                Intrinsics.checkNotNullParameter(source, "source");
                return new Profile(source, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public Profile[] newArray(int i9) {
                return new Profile[i9];
            }
        };
    }

    public /* synthetic */ Profile(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
        this(parcel);
    }

    @JvmOverloads
    public Profile(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Uri uri) {
        this(str, str2, str3, str4, str5, uri, null, 64, null);
    }

    public /* synthetic */ Profile(String str, String str2, String str3, String str4, String str5, Uri uri, Uri uri2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, uri, (i9 & 64) != 0 ? null : uri2);
    }

    @JvmStatic
    public static final void fetchProfileForCurrentAccessToken() {
        Companion.fetchProfileForCurrentAccessToken();
    }

    @JvmStatic
    @Nullable
    public static final Profile getCurrentProfile() {
        return Companion.getCurrentProfile();
    }

    @JvmStatic
    public static final void setCurrentProfile(@Nullable Profile profile) {
        Companion.setCurrentProfile(profile);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        Uri uri;
        Uri uri2;
        if (this == obj) {
            return true;
        }
        if (obj instanceof Profile) {
            String str5 = this.f4813id;
            return ((str5 == null && ((Profile) obj).f4813id == null) || Intrinsics.areEqual(str5, ((Profile) obj).f4813id)) && (((str = this.firstName) == null && ((Profile) obj).firstName == null) || Intrinsics.areEqual(str, ((Profile) obj).firstName)) && ((((str2 = this.middleName) == null && ((Profile) obj).middleName == null) || Intrinsics.areEqual(str2, ((Profile) obj).middleName)) && ((((str3 = this.lastName) == null && ((Profile) obj).lastName == null) || Intrinsics.areEqual(str3, ((Profile) obj).lastName)) && ((((str4 = this.name) == null && ((Profile) obj).name == null) || Intrinsics.areEqual(str4, ((Profile) obj).name)) && ((((uri = this.linkUri) == null && ((Profile) obj).linkUri == null) || Intrinsics.areEqual(uri, ((Profile) obj).linkUri)) && (((uri2 = this.pictureUri) == null && ((Profile) obj).pictureUri == null) || Intrinsics.areEqual(uri2, ((Profile) obj).pictureUri))))));
        }
        return false;
    }

    @Nullable
    public final String getFirstName() {
        return this.firstName;
    }

    @Nullable
    public final String getId() {
        return this.f4813id;
    }

    @Nullable
    public final String getLastName() {
        return this.lastName;
    }

    @Nullable
    public final Uri getLinkUri() {
        return this.linkUri;
    }

    @Nullable
    public final String getMiddleName() {
        return this.middleName;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Uri getPictureUri() {
        return this.pictureUri;
    }

    @NotNull
    public final Uri getProfilePictureUri(int i9, int i10) {
        String str;
        Uri uri = this.pictureUri;
        if (uri != null) {
            return uri;
        }
        AccessToken.Companion companion = AccessToken.Companion;
        if (companion.isCurrentAccessTokenActive()) {
            AccessToken currentAccessToken = companion.getCurrentAccessToken();
            str = currentAccessToken == null ? null : currentAccessToken.getToken();
        } else {
            str = "";
        }
        return ImageRequest.Companion.getProfilePictureUri(this.f4813id, i9, i10, str);
    }

    public int hashCode() {
        String str = this.f4813id;
        int hashCode = 527 + (str != null ? str.hashCode() : 0);
        String str2 = this.firstName;
        if (str2 != null) {
            hashCode = (hashCode * 31) + str2.hashCode();
        }
        String str3 = this.middleName;
        if (str3 != null) {
            hashCode = (hashCode * 31) + str3.hashCode();
        }
        String str4 = this.lastName;
        if (str4 != null) {
            hashCode = (hashCode * 31) + str4.hashCode();
        }
        String str5 = this.name;
        if (str5 != null) {
            hashCode = (hashCode * 31) + str5.hashCode();
        }
        Uri uri = this.linkUri;
        if (uri != null) {
            hashCode = (hashCode * 31) + uri.hashCode();
        }
        Uri uri2 = this.pictureUri;
        return uri2 != null ? (hashCode * 31) + uri2.hashCode() : hashCode;
    }

    @Nullable
    public final JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f4813id);
            jSONObject.put(FIRST_NAME_KEY, this.firstName);
            jSONObject.put("middle_name", this.middleName);
            jSONObject.put(LAST_NAME_KEY, this.lastName);
            jSONObject.put("name", this.name);
            Uri uri = this.linkUri;
            if (uri != null) {
                jSONObject.put(LINK_URI_KEY, uri.toString());
            }
            Uri uri2 = this.pictureUri;
            if (uri2 != null) {
                jSONObject.put(PICTURE_URI_KEY, uri2.toString());
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i9) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.f4813id);
        dest.writeString(this.firstName);
        dest.writeString(this.middleName);
        dest.writeString(this.lastName);
        dest.writeString(this.name);
        Uri uri = this.linkUri;
        dest.writeString(uri == null ? null : uri.toString());
        Uri uri2 = this.pictureUri;
        dest.writeString(uri2 != null ? uri2.toString() : null);
    }

    @JvmOverloads
    public Profile(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Uri uri, @Nullable Uri uri2) {
        Validate validate = Validate.INSTANCE;
        Validate.notNullOrEmpty(str, "id");
        this.f4813id = str;
        this.firstName = str2;
        this.middleName = str3;
        this.lastName = str4;
        this.name = str5;
        this.linkUri = uri;
        this.pictureUri = uri2;
    }

    public Profile(@NotNull JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        this.f4813id = jsonObject.optString("id", null);
        this.firstName = jsonObject.optString(FIRST_NAME_KEY, null);
        this.middleName = jsonObject.optString("middle_name", null);
        this.lastName = jsonObject.optString(LAST_NAME_KEY, null);
        this.name = jsonObject.optString("name", null);
        String optString = jsonObject.optString(LINK_URI_KEY, null);
        this.linkUri = optString == null ? null : Uri.parse(optString);
        String optString2 = jsonObject.optString(PICTURE_URI_KEY, null);
        this.pictureUri = optString2 != null ? Uri.parse(optString2) : null;
    }

    private Profile(Parcel parcel) {
        this.f4813id = parcel.readString();
        this.firstName = parcel.readString();
        this.middleName = parcel.readString();
        this.lastName = parcel.readString();
        this.name = parcel.readString();
        String readString = parcel.readString();
        this.linkUri = readString == null ? null : Uri.parse(readString);
        String readString2 = parcel.readString();
        this.pictureUri = readString2 != null ? Uri.parse(readString2) : null;
    }
}
