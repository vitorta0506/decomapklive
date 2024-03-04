package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareContent.Builder;
import com.facebook.share.model.ShareHashtag;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b&\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0000*\u0014\b\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u00020\u0004:\u0001%B\u001b\b\u0014\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0002\u0010\u0006B\u000f\b\u0014\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010 \u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00132\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\b2\u0006\u0010$\u001a\u00020\u001fH\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006&"}, d2 = {"Lcom/facebook/share/model/ShareContent;", "M", "B", "Lcom/facebook/share/model/ShareContent$Builder;", "Lcom/facebook/share/model/ShareModel;", "builder", "(Lcom/facebook/share/model/ShareContent$Builder;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "contentUrl", "Landroid/net/Uri;", "getContentUrl", "()Landroid/net/Uri;", "pageId", "", "getPageId", "()Ljava/lang/String;", "peopleIds", "", "getPeopleIds", "()Ljava/util/List;", "placeId", "getPlaceId", "ref", "getRef", "shareHashtag", "Lcom/facebook/share/model/ShareHashtag;", "getShareHashtag", "()Lcom/facebook/share/model/ShareHashtag;", "describeContents", "", "readUnmodifiableStringList", "writeToParcel", "", "out", "flags", "Builder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public abstract class ShareContent<M extends ShareContent<M, B>, B extends Builder<M, B>> implements ShareModel {
    @Nullable
    private final Uri contentUrl;
    @Nullable
    private final String pageId;
    @Nullable
    private final List<String> peopleIds;
    @Nullable
    private final String placeId;
    @Nullable
    private final String ref;
    @Nullable
    private final ShareHashtag shareHashtag;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0019\b&\u0018\u0000*\u0014\b\u0002\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\b\u0003\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00002\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u0017\u0010$\u001a\u00028\u00032\b\u0010%\u001a\u0004\u0018\u00018\u0002H\u0016¢\u0006\u0002\u0010&J\u0015\u0010'\u001a\u00028\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010(J\u0015\u0010)\u001a\u00028\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010*J\u001b\u0010+\u001a\u00028\u00032\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0019¢\u0006\u0002\u0010,J\u0015\u0010-\u001a\u00028\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010*J\u0015\u0010.\u001a\u00028\u00032\b\u0010!\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010*J\u0015\u0010/\u001a\u00028\u00032\b\u00100\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u00101R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0019X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0015\"\u0004\b \u0010\u0017R\u001c\u0010!\u001a\u0004\u0018\u00010\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0017¨\u00062"}, d2 = {"Lcom/facebook/share/model/ShareContent$Builder;", "M", "Lcom/facebook/share/model/ShareContent;", "B", "Lcom/facebook/share/model/ShareModelBuilder;", "()V", "contentUrl", "Landroid/net/Uri;", "getContentUrl$facebook_common_release", "()Landroid/net/Uri;", "setContentUrl$facebook_common_release", "(Landroid/net/Uri;)V", ShareConstants.WEB_DIALOG_PARAM_HASHTAG, "Lcom/facebook/share/model/ShareHashtag;", "getHashtag$facebook_common_release", "()Lcom/facebook/share/model/ShareHashtag;", "setHashtag$facebook_common_release", "(Lcom/facebook/share/model/ShareHashtag;)V", "pageId", "", "getPageId$facebook_common_release", "()Ljava/lang/String;", "setPageId$facebook_common_release", "(Ljava/lang/String;)V", "peopleIds", "", "getPeopleIds$facebook_common_release", "()Ljava/util/List;", "setPeopleIds$facebook_common_release", "(Ljava/util/List;)V", "placeId", "getPlaceId$facebook_common_release", "setPlaceId$facebook_common_release", "ref", "getRef$facebook_common_release", "setRef$facebook_common_release", "readFrom", "content", "(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;", "setContentUrl", "(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;", "setPageId", "(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;", "setPeopleIds", "(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;", "setPlaceId", "setRef", "setShareHashtag", "shareHashtag", "(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class Builder<M extends ShareContent<M, B>, B extends Builder<M, B>> implements ShareModelBuilder<M, B> {
        @Nullable
        private Uri contentUrl;
        @Nullable
        private ShareHashtag hashtag;
        @Nullable
        private String pageId;
        @Nullable
        private List<String> peopleIds;
        @Nullable
        private String placeId;
        @Nullable
        private String ref;

        @Nullable
        public final Uri getContentUrl$facebook_common_release() {
            return this.contentUrl;
        }

        @Nullable
        public final ShareHashtag getHashtag$facebook_common_release() {
            return this.hashtag;
        }

        @Nullable
        public final String getPageId$facebook_common_release() {
            return this.pageId;
        }

        @Nullable
        public final List<String> getPeopleIds$facebook_common_release() {
            return this.peopleIds;
        }

        @Nullable
        public final String getPlaceId$facebook_common_release() {
            return this.placeId;
        }

        @Nullable
        public final String getRef$facebook_common_release() {
            return this.ref;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.facebook.share.model.ShareModelBuilder
        public /* bridge */ /* synthetic */ ShareModelBuilder readFrom(ShareModel shareModel) {
            return readFrom((Builder<M, B>) ((ShareContent) shareModel));
        }

        @NotNull
        public final B setContentUrl(@Nullable Uri uri) {
            this.contentUrl = uri;
            return this;
        }

        public final void setContentUrl$facebook_common_release(@Nullable Uri uri) {
            this.contentUrl = uri;
        }

        public final void setHashtag$facebook_common_release(@Nullable ShareHashtag shareHashtag) {
            this.hashtag = shareHashtag;
        }

        @NotNull
        public final B setPageId(@Nullable String str) {
            this.pageId = str;
            return this;
        }

        public final void setPageId$facebook_common_release(@Nullable String str) {
            this.pageId = str;
        }

        @NotNull
        public final B setPeopleIds(@Nullable List<String> list) {
            this.peopleIds = list == null ? null : Collections.unmodifiableList(list);
            return this;
        }

        public final void setPeopleIds$facebook_common_release(@Nullable List<String> list) {
            this.peopleIds = list;
        }

        @NotNull
        public final B setPlaceId(@Nullable String str) {
            this.placeId = str;
            return this;
        }

        public final void setPlaceId$facebook_common_release(@Nullable String str) {
            this.placeId = str;
        }

        @NotNull
        public final B setRef(@Nullable String str) {
            this.ref = str;
            return this;
        }

        public final void setRef$facebook_common_release(@Nullable String str) {
            this.ref = str;
        }

        @NotNull
        public final B setShareHashtag(@Nullable ShareHashtag shareHashtag) {
            this.hashtag = shareHashtag;
            return this;
        }

        @NotNull
        public B readFrom(@Nullable M m10) {
            return m10 == null ? this : (B) setContentUrl(m10.getContentUrl()).setPeopleIds(m10.getPeopleIds()).setPlaceId(m10.getPlaceId()).setPageId(m10.getPageId()).setRef(m10.getRef()).setShareHashtag(m10.getShareHashtag());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareContent(@NotNull Builder<M, B> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.contentUrl = builder.getContentUrl$facebook_common_release();
        this.peopleIds = builder.getPeopleIds$facebook_common_release();
        this.placeId = builder.getPlaceId$facebook_common_release();
        this.pageId = builder.getPageId$facebook_common_release();
        this.ref = builder.getRef$facebook_common_release();
        this.shareHashtag = builder.getHashtag$facebook_common_release();
    }

    private final List<String> readUnmodifiableStringList(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public final Uri getContentUrl() {
        return this.contentUrl;
    }

    @Nullable
    public final String getPageId() {
        return this.pageId;
    }

    @Nullable
    public final List<String> getPeopleIds() {
        return this.peopleIds;
    }

    @Nullable
    public final String getPlaceId() {
        return this.placeId;
    }

    @Nullable
    public final String getRef() {
        return this.ref;
    }

    @Nullable
    public final ShareHashtag getShareHashtag() {
        return this.shareHashtag;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeParcelable(this.contentUrl, 0);
        out.writeStringList(this.peopleIds);
        out.writeString(this.placeId);
        out.writeString(this.pageId);
        out.writeString(this.ref);
        out.writeParcelable(this.shareHashtag, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareContent(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.contentUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.peopleIds = readUnmodifiableStringList(parcel);
        this.placeId = parcel.readString();
        this.pageId = parcel.readString();
        this.ref = parcel.readString();
        this.shareHashtag = new ShareHashtag.Builder().readFrom$facebook_common_release(parcel).build();
    }
}
