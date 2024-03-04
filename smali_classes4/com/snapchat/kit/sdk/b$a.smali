.class final Lcom/snapchat/kit/sdk/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbe/b;


# direct methods
.method constructor <init>(Lbe/b;)V
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/b$a;->a:Lbe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/kit/sdk/b$a;->a:Lbe/b;

    .line 2
    invoke-interface {v1}, Lbe/c;->k()Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
