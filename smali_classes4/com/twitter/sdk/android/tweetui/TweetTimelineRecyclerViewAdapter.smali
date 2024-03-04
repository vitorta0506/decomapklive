.class public Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Lcom/twitter/sdk/android/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:I


# virtual methods
.method public a(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;
    .locals 2

    .line 1
    new-instance p1, Lcom/twitter/sdk/android/core/models/m;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/models/m;-><init>()V

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/m;->a()Lcom/twitter/sdk/android/core/models/l;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/twitter/sdk/android/tweetui/CompactTweetView;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->a:Landroid/content/Context;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->c:I

    invoke-direct {p2, v0, p1, v1}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/l;I)V

    .line 3
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->b:Lcom/twitter/sdk/android/core/b;

    invoke-virtual {p2, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setOnActionCallback(Lcom/twitter/sdk/android/core/b;)V

    .line 4
    new-instance p1, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;-><init>(Lcom/twitter/sdk/android/tweetui/CompactTweetView;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->a(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->b(Landroid/view/ViewGroup;I)Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;

    move-result-object p1

    return-object p1
.end method
