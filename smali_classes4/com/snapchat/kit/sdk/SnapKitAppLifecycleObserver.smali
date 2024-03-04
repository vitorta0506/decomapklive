.class public Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private a:Lhe/c;


# direct methods
.method constructor <init>(Lhe/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;->a:Lhe/c;

    return-void
.end method


# virtual methods
.method public onEnterForeground()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;->a:Lhe/c;

    invoke-virtual {v1, v0}, Lhe/c;->c(Ljava/util/Date;)V

    return-void
.end method
