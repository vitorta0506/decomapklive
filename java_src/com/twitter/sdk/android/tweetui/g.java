package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.models.MediaEntity;
/* loaded from: classes4.dex */
class g extends i {

    /* renamed from: f  reason: collision with root package name */
    final String f35440f;

    /* renamed from: g  reason: collision with root package name */
    final String f35441g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(MediaEntity mediaEntity) {
        super(mediaEntity.getStart(), mediaEntity.getEnd(), mediaEntity.displayUrl, mediaEntity.url, mediaEntity.expandedUrl);
        this.f35440f = mediaEntity.type;
        this.f35441g = mediaEntity.mediaUrlHttps;
    }
}
