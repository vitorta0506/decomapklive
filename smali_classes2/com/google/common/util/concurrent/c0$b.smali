.class final Lcom/google/common/util/concurrent/c0$b;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/c0<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/c0$b;->a:Lcom/google/common/util/concurrent/c0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/c0;Lcom/google/common/util/concurrent/c0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/c0$b;-><init>(Lcom/google/common/util/concurrent/c0;)V

    return-void
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/c0$b;Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/c0$b;->c(Ljava/lang/Thread;)V

    return-void
.end method

.method private c(Ljava/lang/Thread;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/c0$b;->a:Lcom/google/common/util/concurrent/c0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
