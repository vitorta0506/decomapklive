.class public final synthetic Lcom/twitter/sdk/android/tweetui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

.field public final synthetic b:Lcom/twitter/sdk/android/core/models/l;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/core/models/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/d;->a:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/d;->b:Lcom/twitter/sdk/android/core/models/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/d;->a:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/d;->b:Lcom/twitter/sdk/android/core/models/l;

    invoke-static {v0, v1, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->p(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/core/models/l;Landroid/view/View;)V

    return-void
.end method
