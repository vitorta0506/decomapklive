package com.twitter.sdk.android.tweetui;
/* loaded from: classes4.dex */
public enum SearchTimeline$ResultType {
    RECENT("recent"),
    POPULAR("popular"),
    MIXED("mixed"),
    FILTERED("filtered");
    
    final String type;

    SearchTimeline$ResultType(String str) {
        this.type = str;
    }
}
