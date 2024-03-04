.class final Lio/grpc/netty/shaded/io/netty/util/k$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "Lio/grpc/netty/shaded/io/netty/util/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/util/k$a;",
            "Lio/grpc/netty/shaded/io/netty/util/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x24ef3b9fc599cf83L


# instance fields
.field private volatile a:Lio/grpc/netty/shaded/io/netty/util/k;

.field private final b:Lio/grpc/netty/shaded/io/netty/util/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/k$a;

    const-class v1, Lio/grpc/netty/shaded/io/netty/util/k;

    const-string v2, "a"

    .line 2
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/k$a;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/k;Lio/grpc/netty/shaded/io/netty/util/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/k;",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/k$a;->a:Lio/grpc/netty/shaded/io/netty/util/k;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/util/k$a;->b:Lio/grpc/netty/shaded/io/netty/util/e;

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/util/k$a;)Lio/grpc/netty/shaded/io/netty/util/e;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/util/k$a;->b:Lio/grpc/netty/shaded/io/netty/util/e;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/util/k$a;)Z
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/k$a;->c()Z

    move-result p0

    return p0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/k$a;->a:Lio/grpc/netty/shaded/io/netty/util/k;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
