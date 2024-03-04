package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes4.dex */
public class MentionEntity extends f {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    public final long f35217id;
    @SerializedName("id_str")
    public final String idStr;
    @SerializedName("name")
    public final String name;
    @SerializedName("screen_name")
    public final String screenName;

    public MentionEntity(long j10, String str, String str2, String str3, int i9, int i10) {
        super(i9, i10);
        this.f35217id = j10;
        this.idStr = str;
        this.name = str2;
        this.screenName = str3;
    }

    @Override // com.twitter.sdk.android.core.models.f
    public /* bridge */ /* synthetic */ int getEnd() {
        return super.getEnd();
    }

    @Override // com.twitter.sdk.android.core.models.f
    public /* bridge */ /* synthetic */ int getStart() {
        return super.getStart();
    }
}
