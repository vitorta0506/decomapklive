package com.twitter.sdk.android.core.models;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes4.dex */
public class SymbolEntity extends f {
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    public final String text;

    public SymbolEntity(String str, int i9, int i10) {
        super(i9, i10);
        this.text = str;
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
