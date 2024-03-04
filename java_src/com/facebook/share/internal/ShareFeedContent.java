package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB\u000f\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004B\u000f\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0019H\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\f\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000bR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000bR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000bR\u0013\u0010\u0016\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000b¨\u0006 "}, d2 = {"Lcom/facebook/share/internal/ShareFeedContent;", "Lcom/facebook/share/model/ShareContent;", "Lcom/facebook/share/internal/ShareFeedContent$Builder;", "builder", "(Lcom/facebook/share/internal/ShareFeedContent$Builder;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "link", "", "getLink", "()Ljava/lang/String;", "linkCaption", "getLinkCaption", "linkDescription", "getLinkDescription", "linkName", "getLinkName", "mediaSource", "getMediaSource", "picture", "getPicture", "toId", "getToId", "describeContents", "", "writeToParcel", "", "out", "flags", "Builder", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ShareFeedContent extends ShareContent<ShareFeedContent, Builder> {
    @Nullable
    private final String link;
    @Nullable
    private final String linkCaption;
    @Nullable
    private final String linkDescription;
    @Nullable
    private final String linkName;
    @Nullable
    private final String mediaSource;
    @Nullable
    private final String picture;
    @Nullable
    private final String toId;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<ShareFeedContent> CREATOR = new Parcelable.Creator<ShareFeedContent>() { // from class: com.facebook.share.internal.ShareFeedContent$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public ShareFeedContent createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ShareFeedContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public ShareFeedContent[] newArray(int i9) {
            return new ShareFeedContent[i9];
        }
    };

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b!\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\u0012\u0010\u001d\u001a\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u001f\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010 \u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010!\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\"\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010#\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010$\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u0010\u0010%\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\t¨\u0006&"}, d2 = {"Lcom/facebook/share/internal/ShareFeedContent$Builder;", "Lcom/facebook/share/model/ShareContent$Builder;", "Lcom/facebook/share/internal/ShareFeedContent;", "()V", "link", "", "getLink$facebook_common_release", "()Ljava/lang/String;", "setLink$facebook_common_release", "(Ljava/lang/String;)V", "linkCaption", "getLinkCaption$facebook_common_release", "setLinkCaption$facebook_common_release", "linkDescription", "getLinkDescription$facebook_common_release", "setLinkDescription$facebook_common_release", "linkName", "getLinkName$facebook_common_release", "setLinkName$facebook_common_release", "mediaSource", "getMediaSource$facebook_common_release", "setMediaSource$facebook_common_release", "picture", "getPicture$facebook_common_release", "setPicture$facebook_common_release", "toId", "getToId$facebook_common_release", "setToId$facebook_common_release", "build", "readFrom", "content", "setLink", "setLinkCaption", "setLinkDescription", "setLinkName", "setMediaSource", "setPicture", "setToId", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder extends ShareContent.Builder<ShareFeedContent, Builder> {
        @Nullable
        private String link;
        @Nullable
        private String linkCaption;
        @Nullable
        private String linkDescription;
        @Nullable
        private String linkName;
        @Nullable
        private String mediaSource;
        @Nullable
        private String picture;
        @Nullable
        private String toId;

        @Nullable
        public final String getLink$facebook_common_release() {
            return this.link;
        }

        @Nullable
        public final String getLinkCaption$facebook_common_release() {
            return this.linkCaption;
        }

        @Nullable
        public final String getLinkDescription$facebook_common_release() {
            return this.linkDescription;
        }

        @Nullable
        public final String getLinkName$facebook_common_release() {
            return this.linkName;
        }

        @Nullable
        public final String getMediaSource$facebook_common_release() {
            return this.mediaSource;
        }

        @Nullable
        public final String getPicture$facebook_common_release() {
            return this.picture;
        }

        @Nullable
        public final String getToId$facebook_common_release() {
            return this.toId;
        }

        @NotNull
        public final Builder setLink(@Nullable String str) {
            this.link = str;
            return this;
        }

        public final void setLink$facebook_common_release(@Nullable String str) {
            this.link = str;
        }

        @NotNull
        public final Builder setLinkCaption(@Nullable String str) {
            this.linkCaption = str;
            return this;
        }

        public final void setLinkCaption$facebook_common_release(@Nullable String str) {
            this.linkCaption = str;
        }

        @NotNull
        public final Builder setLinkDescription(@Nullable String str) {
            this.linkDescription = str;
            return this;
        }

        public final void setLinkDescription$facebook_common_release(@Nullable String str) {
            this.linkDescription = str;
        }

        @NotNull
        public final Builder setLinkName(@Nullable String str) {
            this.linkName = str;
            return this;
        }

        public final void setLinkName$facebook_common_release(@Nullable String str) {
            this.linkName = str;
        }

        @NotNull
        public final Builder setMediaSource(@Nullable String str) {
            this.mediaSource = str;
            return this;
        }

        public final void setMediaSource$facebook_common_release(@Nullable String str) {
            this.mediaSource = str;
        }

        @NotNull
        public final Builder setPicture(@Nullable String str) {
            this.picture = str;
            return this;
        }

        public final void setPicture$facebook_common_release(@Nullable String str) {
            this.picture = str;
        }

        @NotNull
        public final Builder setToId(@Nullable String str) {
            this.toId = str;
            return this;
        }

        public final void setToId$facebook_common_release(@Nullable String str) {
            this.toId = str;
        }

        @Override // com.facebook.share.ShareBuilder
        @NotNull
        public ShareFeedContent build() {
            return new ShareFeedContent(this, null);
        }

        @Override // com.facebook.share.model.ShareContent.Builder, com.facebook.share.model.ShareModelBuilder
        @NotNull
        public Builder readFrom(@Nullable ShareFeedContent shareFeedContent) {
            return shareFeedContent == null ? this : ((Builder) super.readFrom((Builder) shareFeedContent)).setToId(shareFeedContent.getToId()).setLink(shareFeedContent.getLink()).setLinkName(shareFeedContent.getLinkName()).setLinkCaption(shareFeedContent.getLinkCaption()).setLinkDescription(shareFeedContent.getLinkDescription()).setPicture(shareFeedContent.getPicture()).setMediaSource(shareFeedContent.getMediaSource());
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/share/internal/ShareFeedContent$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/share/internal/ShareFeedContent;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private ShareFeedContent(Builder builder) {
        super(builder);
        this.toId = builder.getToId$facebook_common_release();
        this.link = builder.getLink$facebook_common_release();
        this.linkName = builder.getLinkName$facebook_common_release();
        this.linkCaption = builder.getLinkCaption$facebook_common_release();
        this.linkDescription = builder.getLinkDescription$facebook_common_release();
        this.picture = builder.getPicture$facebook_common_release();
        this.mediaSource = builder.getMediaSource$facebook_common_release();
    }

    public /* synthetic */ ShareFeedContent(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public final String getLink() {
        return this.link;
    }

    @Nullable
    public final String getLinkCaption() {
        return this.linkCaption;
    }

    @Nullable
    public final String getLinkDescription() {
        return this.linkDescription;
    }

    @Nullable
    public final String getLinkName() {
        return this.linkName;
    }

    @Nullable
    public final String getMediaSource() {
        return this.mediaSource;
    }

    @Nullable
    public final String getPicture() {
        return this.picture;
    }

    @Nullable
    public final String getToId() {
        return this.toId;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        super.writeToParcel(out, i9);
        out.writeString(this.toId);
        out.writeString(this.link);
        out.writeString(this.linkName);
        out.writeString(this.linkCaption);
        out.writeString(this.linkDescription);
        out.writeString(this.picture);
        out.writeString(this.mediaSource);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareFeedContent(@NotNull Parcel parcel) {
        super(parcel);
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.toId = parcel.readString();
        this.link = parcel.readString();
        this.linkName = parcel.readString();
        this.linkCaption = parcel.readString();
        this.linkDescription = parcel.readString();
        this.picture = parcel.readString();
        this.mediaSource = parcel.readString();
    }
}
