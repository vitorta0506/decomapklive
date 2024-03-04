.class public final synthetic Lcom/twitter/sdk/android/tweetui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/core/b;

.field public final synthetic b:Lcom/twitter/sdk/android/core/models/l;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/models/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/y;->a:Lcom/twitter/sdk/android/core/b;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/y;->b:Lcom/twitter/sdk/android/core/models/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/y;->a:Lcom/twitter/sdk/android/core/b;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/y;->b:Lcom/twitter/sdk/android/core/models/l;

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/tweetui/z;->a(Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/models/l;)V

    return-void
.end method
