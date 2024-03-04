.class public final synthetic Lcom/twitter/sdk/android/tweetui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/tweetui/s;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetui/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/q;->a:Lcom/twitter/sdk/android/tweetui/s;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/q;->a:Lcom/twitter/sdk/android/tweetui/s;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/tweetui/s;->e(Lcom/twitter/sdk/android/tweetui/s;Landroid/view/View;)V

    return-void
.end method
