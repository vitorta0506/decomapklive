package com.twitter.sdk.android.core.models;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes4.dex */
public class n {

    /* renamed from: f  reason: collision with root package name */
    static final n f35307f = new n(null, null, null, null, null);
    @SerializedName("urls")

    /* renamed from: a  reason: collision with root package name */
    public final List<UrlEntity> f35308a;
    @SerializedName("user_mentions")

    /* renamed from: b  reason: collision with root package name */
    public final List<MentionEntity> f35309b;
    @SerializedName(ShareConstants.WEB_DIALOG_PARAM_MEDIA)

    /* renamed from: c  reason: collision with root package name */
    public final List<MediaEntity> f35310c;
    @SerializedName("hashtags")

    /* renamed from: d  reason: collision with root package name */
    public final List<HashtagEntity> f35311d;
    @SerializedName("symbols")

    /* renamed from: e  reason: collision with root package name */
    public final List<SymbolEntity> f35312e;

    private n() {
        this(null, null, null, null, null);
    }

    public n(List<UrlEntity> list, List<MentionEntity> list2, List<MediaEntity> list3, List<HashtagEntity> list4, List<SymbolEntity> list5) {
        this.f35308a = j.a(list);
        this.f35309b = j.a(list2);
        this.f35310c = j.a(list3);
        this.f35311d = j.a(list4);
        this.f35312e = j.a(list5);
    }
}
