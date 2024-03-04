package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.guochao.faceshow.utils.Contants;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\u0018\u0000 \u00192\u00020\u0001:\u0003\u0017\u0018\u0019B1\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0001¢\u0006\u0002\u0010\u000bR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/facebook/internal/ImageRequest;", "", "context", "Landroid/content/Context;", "imageUri", "Landroid/net/Uri;", "callback", "Lcom/facebook/internal/ImageRequest$Callback;", "allowCachedRedirects", "", "callerTag", "(Landroid/content/Context;Landroid/net/Uri;Lcom/facebook/internal/ImageRequest$Callback;ZLjava/lang/Object;)V", "getAllowCachedRedirects", "()Z", "getCallback", "()Lcom/facebook/internal/ImageRequest$Callback;", "getCallerTag", "()Ljava/lang/Object;", "getContext", "()Landroid/content/Context;", "getImageUri", "()Landroid/net/Uri;", "isCachedRedirectAllowed", "Builder", "Callback", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ImageRequest {
    @NotNull
    private static final String ACCESS_TOKEN_PARAM = "access_token";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String HEIGHT_PARAM = "height";
    @NotNull
    private static final String MIGRATION_PARAM = "migration_overrides";
    @NotNull
    private static final String MIGRATION_VALUE = "{october_2012:true}";
    @NotNull
    private static final String PATH = "%s/%s/picture";
    public static final int UNSPECIFIED_DIMENSION = 0;
    @NotNull
    private static final String WIDTH_PARAM = "width";
    private final boolean allowCachedRedirects;
    @Nullable
    private final Callback callback;
    @NotNull
    private final Object callerTag;
    @NotNull
    private final Context context;
    @NotNull
    private final Uri imageUri;

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\f\u001a\u00020\rJ\t\u0010\u000e\u001a\u00020\u0003HÂ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÂ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/facebook/internal/ImageRequest$Builder;", "", "context", "Landroid/content/Context;", "imageUri", "Landroid/net/Uri;", "(Landroid/content/Context;Landroid/net/Uri;)V", "allowCachedRedirects", "", "callback", "Lcom/facebook/internal/ImageRequest$Callback;", "callerTag", "build", "Lcom/facebook/internal/ImageRequest;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "setAllowCachedRedirects", "setCallback", "setCallerTag", "toString", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder {
        private boolean allowCachedRedirects;
        @Nullable
        private Callback callback;
        @Nullable
        private Object callerTag;
        @NotNull
        private final Context context;
        @NotNull
        private final Uri imageUri;

        public Builder(@NotNull Context context, @NotNull Uri imageUri) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(imageUri, "imageUri");
            this.context = context;
            this.imageUri = imageUri;
        }

        private final Context component1() {
            return this.context;
        }

        private final Uri component2() {
            return this.imageUri;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, Context context, Uri uri, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                context = builder.context;
            }
            if ((i9 & 2) != 0) {
                uri = builder.imageUri;
            }
            return builder.copy(context, uri);
        }

        @NotNull
        public final ImageRequest build() {
            Context context = this.context;
            Uri uri = this.imageUri;
            Callback callback = this.callback;
            boolean z10 = this.allowCachedRedirects;
            Object obj = this.callerTag;
            if (obj == null) {
                obj = new Object();
            } else if (obj == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            return new ImageRequest(context, uri, callback, z10, obj, null);
        }

        @NotNull
        public final Builder copy(@NotNull Context context, @NotNull Uri imageUri) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(imageUri, "imageUri");
            return new Builder(context, imageUri);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Builder) {
                Builder builder = (Builder) obj;
                return Intrinsics.areEqual(this.context, builder.context) && Intrinsics.areEqual(this.imageUri, builder.imageUri);
            }
            return false;
        }

        public int hashCode() {
            return (this.context.hashCode() * 31) + this.imageUri.hashCode();
        }

        @NotNull
        public final Builder setAllowCachedRedirects(boolean z10) {
            this.allowCachedRedirects = z10;
            return this;
        }

        @NotNull
        public final Builder setCallback(@Nullable Callback callback) {
            this.callback = callback;
            return this;
        }

        @NotNull
        public final Builder setCallerTag(@Nullable Object obj) {
            this.callerTag = obj;
            return this;
        }

        @NotNull
        public String toString() {
            return "Builder(context=" + this.context + ", imageUri=" + this.imageUri + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/ImageRequest$Callback;", "", "onCompleted", "", "response", "Lcom/facebook/internal/ImageResponse;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface Callback {
        void onCompleted(@Nullable ImageResponse imageResponse);
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0007J,\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/facebook/internal/ImageRequest$Companion;", "", "()V", "ACCESS_TOKEN_PARAM", "", "HEIGHT_PARAM", "MIGRATION_PARAM", "MIGRATION_VALUE", "PATH", "UNSPECIFIED_DIMENSION", "", "WIDTH_PARAM", "getProfilePictureUri", "Landroid/net/Uri;", Contants.USER_ID, "width", "height", "accessToken", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final Uri getProfilePictureUri(@Nullable String str, int i9, int i10) {
            return getProfilePictureUri(str, i9, i10, "");
        }

        @JvmStatic
        @NotNull
        public final Uri getProfilePictureUri(@Nullable String str, int i9, int i10, @Nullable String str2) {
            Validate validate = Validate.INSTANCE;
            Validate.notNullOrEmpty(str, Contants.USER_ID);
            int max = Math.max(i9, 0);
            int max2 = Math.max(i10, 0);
            if ((max == 0 && max2 == 0) ? false : true) {
                ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
                Uri.Builder buildUpon = Uri.parse(ServerProtocol.getGraphUrlBase()).buildUpon();
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Locale locale = Locale.US;
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                String format = String.format(locale, ImageRequest.PATH, Arrays.copyOf(new Object[]{FacebookSdk.getGraphApiVersion(), str}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(locale, format, *args)");
                Uri.Builder path = buildUpon.path(format);
                if (max2 != 0) {
                    path.appendQueryParameter("height", String.valueOf(max2));
                }
                if (max != 0) {
                    path.appendQueryParameter("width", String.valueOf(max));
                }
                path.appendQueryParameter(ImageRequest.MIGRATION_PARAM, ImageRequest.MIGRATION_VALUE);
                Utility utility = Utility.INSTANCE;
                if (!Utility.isNullOrEmpty(str2)) {
                    path.appendQueryParameter("access_token", str2);
                } else if (!Utility.isNullOrEmpty(FacebookSdk.getClientToken()) && !Utility.isNullOrEmpty(FacebookSdk.getApplicationId())) {
                    path.appendQueryParameter("access_token", FacebookSdk.getApplicationId() + '|' + FacebookSdk.getClientToken());
                } else {
                    Log.d("ImageRequest", "Needs access token to fetch profile picture. Without an access token a default silhoutte picture is returned");
                }
                Uri build = path.build();
                Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
                return build;
            }
            throw new IllegalArgumentException("Either width or height must be greater than 0".toString());
        }
    }

    private ImageRequest(Context context, Uri uri, Callback callback, boolean z10, Object obj) {
        this.context = context;
        this.imageUri = uri;
        this.callback = callback;
        this.allowCachedRedirects = z10;
        this.callerTag = obj;
    }

    public /* synthetic */ ImageRequest(Context context, Uri uri, Callback callback, boolean z10, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, uri, callback, z10, obj);
    }

    @JvmStatic
    @NotNull
    public static final Uri getProfilePictureUri(@Nullable String str, int i9, int i10) {
        return Companion.getProfilePictureUri(str, i9, i10);
    }

    @JvmStatic
    @NotNull
    public static final Uri getProfilePictureUri(@Nullable String str, int i9, int i10, @Nullable String str2) {
        return Companion.getProfilePictureUri(str, i9, i10, str2);
    }

    public final boolean getAllowCachedRedirects() {
        return this.allowCachedRedirects;
    }

    @Nullable
    public final Callback getCallback() {
        return this.callback;
    }

    @NotNull
    public final Object getCallerTag() {
        return this.callerTag;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final Uri getImageUri() {
        return this.imageUri;
    }

    public final boolean isCachedRedirectAllowed() {
        return this.allowCachedRedirects;
    }
}
