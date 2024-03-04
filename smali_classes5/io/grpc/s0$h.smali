.class final Lio/grpc/s0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:I

.field final synthetic c:Lio/grpc/s0;


# direct methods
.method private constructor <init>(Lio/grpc/s0;Lio/grpc/s0$i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/s0$i<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lio/grpc/s0$h;->c:Lio/grpc/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/grpc/s0$h;->a:Lio/grpc/s0$i;

    .line 4
    iput p3, p0, Lio/grpc/s0$h;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/s0;Lio/grpc/s0$i;ILio/grpc/s0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/s0$h;-><init>(Lio/grpc/s0;Lio/grpc/s0$i;I)V

    return-void
.end method

.method static synthetic c(Lio/grpc/s0$h;)I
    .locals 0

    iget p0, p0, Lio/grpc/s0$h;->b:I

    return p0
.end method

.method static synthetic d(Lio/grpc/s0$h;)Lio/grpc/s0$i;
    .locals 0

    iget-object p0, p0, Lio/grpc/s0$h;->a:Lio/grpc/s0$i;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/s0$h$a;

    invoke-direct {v0, p0}, Lio/grpc/s0$h$a;-><init>(Lio/grpc/s0$h;)V

    return-object v0
.end method
