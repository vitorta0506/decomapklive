.class public final Lug/m;
.super Lug/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lug/e<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lug/j;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lug/e;-><init>(Lug/j;)V

    const-string p1, "cause"

    .line 2
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lug/m;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public L()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lug/m;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public Q()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
