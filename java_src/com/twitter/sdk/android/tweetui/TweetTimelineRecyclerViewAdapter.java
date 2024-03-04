package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes4.dex */
public class TweetTimelineRecyclerViewAdapter extends RecyclerView.Adapter<TweetViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f35399a;

    /* renamed from: b  reason: collision with root package name */
    protected com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> f35400b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f35401c;

    /* loaded from: classes4.dex */
    public static final class TweetViewHolder extends RecyclerView.ViewHolder {
        public TweetViewHolder(CompactTweetView compactTweetView) {
            super(compactTweetView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(TweetViewHolder tweetViewHolder, int i9) {
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: b */
    public TweetViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        CompactTweetView compactTweetView = new CompactTweetView(this.f35399a, new com.twitter.sdk.android.core.models.m().a(), this.f35401c);
        compactTweetView.setOnActionCallback(this.f35400b);
        return new TweetViewHolder(compactTweetView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        throw null;
    }
}
