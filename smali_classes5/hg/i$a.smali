.class Lhg/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhg/i$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/s0;)Lio/grpc/n0$e;
    .locals 0

    invoke-static {}, Lio/grpc/n0$e;->g()Lio/grpc/n0$e;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BUFFER_ENTRY"

    return-object v0
.end method
