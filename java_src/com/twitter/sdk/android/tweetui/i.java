package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.models.HashtagEntity;
import com.twitter.sdk.android.core.models.MentionEntity;
import com.twitter.sdk.android.core.models.SymbolEntity;
import com.twitter.sdk.android.core.models.UrlEntity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    int f35448a;

    /* renamed from: b  reason: collision with root package name */
    int f35449b;

    /* renamed from: c  reason: collision with root package name */
    final String f35450c;

    /* renamed from: d  reason: collision with root package name */
    final String f35451d;

    /* renamed from: e  reason: collision with root package name */
    final String f35452e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(int i9, int i10, String str, String str2, String str3) {
        this.f35448a = i9;
        this.f35449b = i10;
        this.f35450c = str;
        this.f35451d = str2;
        this.f35452e = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i a(HashtagEntity hashtagEntity) {
        String b10 = e0.b(hashtagEntity.text);
        int start = hashtagEntity.getStart();
        int end = hashtagEntity.getEnd();
        return new i(start, end, "#" + hashtagEntity.text, b10, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i b(MentionEntity mentionEntity) {
        String d10 = e0.d(mentionEntity.screenName);
        int start = mentionEntity.getStart();
        int end = mentionEntity.getEnd();
        return new i(start, end, "@" + mentionEntity.screenName, d10, d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i c(SymbolEntity symbolEntity) {
        String e10 = e0.e(symbolEntity.text);
        int start = symbolEntity.getStart();
        int end = symbolEntity.getEnd();
        return new i(start, end, "$" + symbolEntity.text, e10, e10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i d(UrlEntity urlEntity) {
        return new i(urlEntity.getStart(), urlEntity.getEnd(), urlEntity.displayUrl, urlEntity.url, urlEntity.expandedUrl);
    }
}
