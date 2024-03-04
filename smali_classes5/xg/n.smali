.class Lxg/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/r2;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lio/grpc/internal/q2;
    .locals 2

    const/16 v0, 0x1000

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x100000

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    new-instance v0, Lxg/m;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-direct {v0, v1, p1}, Lxg/m;-><init>(Lokio/Buffer;I)V

    return-object v0
.end method
