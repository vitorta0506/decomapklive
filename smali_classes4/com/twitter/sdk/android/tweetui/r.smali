.class public final synthetic Lcom/twitter/sdk/android/tweetui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/tweetui/s;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetui/s;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/r;->a:Lcom/twitter/sdk/android/tweetui/s;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/r;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/r;->a:Lcom/twitter/sdk/android/tweetui/s;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/r;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/twitter/sdk/android/tweetui/s;->d(Lcom/twitter/sdk/android/tweetui/s;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
