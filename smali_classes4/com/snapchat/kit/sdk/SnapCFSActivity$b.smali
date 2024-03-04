.class final Lcom/snapchat/kit/sdk/SnapCFSActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lce/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/SnapCFSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/snapchat/kit/sdk/SnapCFSActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/SnapCFSActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/SnapCFSActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$a;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$a;-><init>(Lcom/snapchat/kit/sdk/SnapCFSActivity$b;Lcom/snapchat/kit/sdk/SnapCFSActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/SnapCFSActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$b;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$b;-><init>(Lcom/snapchat/kit/sdk/SnapCFSActivity$b;Lcom/snapchat/kit/sdk/SnapCFSActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onLogout()V
    .locals 0

    return-void
.end method
