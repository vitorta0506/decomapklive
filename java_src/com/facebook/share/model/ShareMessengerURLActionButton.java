package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.share.model.ShareMessengerActionButton;
import java.util.Arrays;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000 \u001e2\u00020\u0001:\u0003\u001d\u001e\u001fB\u000f\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0017\u001a\u00020\rH\u0007J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000bR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006 "}, d2 = {"Lcom/facebook/share/model/ShareMessengerURLActionButton;", "Lcom/facebook/share/model/ShareMessengerActionButton;", "builder", "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;", "(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "fallbackUrl", "Landroid/net/Uri;", "getFallbackUrl", "()Landroid/net/Uri;", "isMessengerExtensionURL", "", "()Z", "shouldHideWebviewShareButton", "getShouldHideWebviewShareButton", "url", "getUrl", "webviewHeightRatio", "Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;", "getWebviewHeightRatio", "()Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;", "getIsMessengerExtensionURL", "writeToParcel", "", "dest", "flags", "", "Builder", "Companion", "WebviewHeightRatio", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ShareMessengerURLActionButton extends ShareMessengerActionButton {
    @Nullable
    private final Uri fallbackUrl;
    private final boolean isMessengerExtensionURL;
    private final boolean shouldHideWebviewShareButton;
    @Nullable
    private final Uri url;
    @Nullable
    private final WebviewHeightRatio webviewHeightRatio;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<ShareMessengerURLActionButton> CREATOR = new Parcelable.Creator<ShareMessengerURLActionButton>() { // from class: com.facebook.share.model.ShareMessengerURLActionButton$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public ShareMessengerURLActionButton createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ShareMessengerURLActionButton(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public ShareMessengerURLActionButton[] newArray(int i9) {
            return new ShareMessengerURLActionButton[i9];
        }
    };

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\u0012\u0010\u001d\u001a\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u001f\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000bJ\u0010\u0010\"\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010#\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006$"}, d2 = {"Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;", "Lcom/facebook/share/model/ShareMessengerActionButton$Builder;", "Lcom/facebook/share/model/ShareMessengerURLActionButton;", "()V", "fallbackUrl", "Landroid/net/Uri;", "getFallbackUrl$facebook_common_release", "()Landroid/net/Uri;", "setFallbackUrl$facebook_common_release", "(Landroid/net/Uri;)V", "isMessengerExtensionURL", "", "isMessengerExtensionURL$facebook_common_release", "()Z", "setMessengerExtensionURL$facebook_common_release", "(Z)V", "shouldHideWebviewShareButton", "getShouldHideWebviewShareButton$facebook_common_release", "setShouldHideWebviewShareButton$facebook_common_release", "url", "getUrl$facebook_common_release", "setUrl$facebook_common_release", "webviewHeightRatio", "Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;", "getWebviewHeightRatio$facebook_common_release", "()Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;", "setWebviewHeightRatio$facebook_common_release", "(Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;)V", "build", "readFrom", DeviceRequestsHelper.DEVICE_INFO_MODEL, "setFallbackUrl", "setIsMessengerExtensionURL", "setShouldHideWebviewShareButton", "setUrl", "setWebviewHeightRatio", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder extends ShareMessengerActionButton.Builder<ShareMessengerURLActionButton, Builder> {
        @Nullable
        private Uri fallbackUrl;
        private boolean isMessengerExtensionURL;
        private boolean shouldHideWebviewShareButton;
        @Nullable
        private Uri url;
        @Nullable
        private WebviewHeightRatio webviewHeightRatio;

        @Nullable
        public final Uri getFallbackUrl$facebook_common_release() {
            return this.fallbackUrl;
        }

        public final boolean getShouldHideWebviewShareButton$facebook_common_release() {
            return this.shouldHideWebviewShareButton;
        }

        @Nullable
        public final Uri getUrl$facebook_common_release() {
            return this.url;
        }

        @Nullable
        public final WebviewHeightRatio getWebviewHeightRatio$facebook_common_release() {
            return this.webviewHeightRatio;
        }

        public final boolean isMessengerExtensionURL$facebook_common_release() {
            return this.isMessengerExtensionURL;
        }

        @NotNull
        public final Builder setFallbackUrl(@Nullable Uri uri) {
            this.fallbackUrl = uri;
            return this;
        }

        public final void setFallbackUrl$facebook_common_release(@Nullable Uri uri) {
            this.fallbackUrl = uri;
        }

        @NotNull
        public final Builder setIsMessengerExtensionURL(boolean z10) {
            this.isMessengerExtensionURL = z10;
            return this;
        }

        public final void setMessengerExtensionURL$facebook_common_release(boolean z10) {
            this.isMessengerExtensionURL = z10;
        }

        @NotNull
        public final Builder setShouldHideWebviewShareButton(boolean z10) {
            this.shouldHideWebviewShareButton = z10;
            return this;
        }

        public final void setShouldHideWebviewShareButton$facebook_common_release(boolean z10) {
            this.shouldHideWebviewShareButton = z10;
        }

        @NotNull
        public final Builder setUrl(@Nullable Uri uri) {
            this.url = uri;
            return this;
        }

        public final void setUrl$facebook_common_release(@Nullable Uri uri) {
            this.url = uri;
        }

        @NotNull
        public final Builder setWebviewHeightRatio(@Nullable WebviewHeightRatio webviewHeightRatio) {
            this.webviewHeightRatio = webviewHeightRatio;
            return this;
        }

        public final void setWebviewHeightRatio$facebook_common_release(@Nullable WebviewHeightRatio webviewHeightRatio) {
            this.webviewHeightRatio = webviewHeightRatio;
        }

        @Override // com.facebook.share.ShareBuilder
        @NotNull
        public ShareMessengerURLActionButton build() {
            return new ShareMessengerURLActionButton(this, null);
        }

        @Override // com.facebook.share.model.ShareMessengerActionButton.Builder, com.facebook.share.model.ShareModelBuilder
        @NotNull
        public Builder readFrom(@Nullable ShareMessengerURLActionButton shareMessengerURLActionButton) {
            return shareMessengerURLActionButton == null ? this : setUrl(shareMessengerURLActionButton.getUrl()).setIsMessengerExtensionURL(shareMessengerURLActionButton.isMessengerExtensionURL()).setFallbackUrl(shareMessengerURLActionButton.getFallbackUrl()).setWebviewHeightRatio(shareMessengerURLActionButton.getWebviewHeightRatio()).setShouldHideWebviewShareButton(shareMessengerURLActionButton.getShouldHideWebviewShareButton());
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/share/model/ShareMessengerURLActionButton$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/share/model/ShareMessengerURLActionButton;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;", "", "(Ljava/lang/String;I)V", "WebviewHeightRatioFull", "WebviewHeightRatioTall", "WebviewHeightRatioCompact", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum WebviewHeightRatio {
        WebviewHeightRatioFull,
        WebviewHeightRatioTall,
        WebviewHeightRatioCompact;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static WebviewHeightRatio[] valuesCustom() {
            WebviewHeightRatio[] valuesCustom = values();
            return (WebviewHeightRatio[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    private ShareMessengerURLActionButton(Builder builder) {
        super(builder);
        this.url = builder.getUrl$facebook_common_release();
        this.isMessengerExtensionURL = builder.isMessengerExtensionURL$facebook_common_release();
        this.fallbackUrl = builder.getFallbackUrl$facebook_common_release();
        this.webviewHeightRatio = builder.getWebviewHeightRatio$facebook_common_release();
        this.shouldHideWebviewShareButton = builder.getShouldHideWebviewShareButton$facebook_common_release();
    }

    public /* synthetic */ ShareMessengerURLActionButton(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    @Nullable
    public final Uri getFallbackUrl() {
        return this.fallbackUrl;
    }

    @Deprecated(message = "getIsMessengerExtensionURL is deprecated. Use isMessengerExtensionURL instead", replaceWith = @ReplaceWith(expression = "isMessengerExtensionURL", imports = {}))
    public final boolean getIsMessengerExtensionURL() {
        return this.isMessengerExtensionURL;
    }

    public final boolean getShouldHideWebviewShareButton() {
        return this.shouldHideWebviewShareButton;
    }

    @Nullable
    public final Uri getUrl() {
        return this.url;
    }

    @Nullable
    public final WebviewHeightRatio getWebviewHeightRatio() {
        return this.webviewHeightRatio;
    }

    public final boolean isMessengerExtensionURL() {
        return this.isMessengerExtensionURL;
    }

    @Override // com.facebook.share.model.ShareMessengerActionButton, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i9) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        super.writeToParcel(dest, i9);
        dest.writeParcelable(this.url, 0);
        dest.writeByte(this.isMessengerExtensionURL ? (byte) 1 : (byte) 0);
        dest.writeParcelable(this.fallbackUrl, 0);
        dest.writeSerializable(this.webviewHeightRatio);
        dest.writeByte(this.isMessengerExtensionURL ? (byte) 1 : (byte) 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareMessengerURLActionButton(@NotNull Parcel parcel) {
        super(parcel);
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.url = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.isMessengerExtensionURL = parcel.readByte() != 0;
        this.fallbackUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.webviewHeightRatio = (WebviewHeightRatio) parcel.readSerializable();
        this.shouldHideWebviewShareButton = parcel.readByte() != 0;
    }
}
