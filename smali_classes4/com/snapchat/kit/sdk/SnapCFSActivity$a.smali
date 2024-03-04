.class final Lcom/snapchat/kit/sdk/SnapCFSActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lie/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/SnapCFSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/snapchat/kit/sdk/SnapCFSActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/SnapCFSActivity;Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$a;->b:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$a;->a:Landroid/net/Uri;

    return-void
.end method
