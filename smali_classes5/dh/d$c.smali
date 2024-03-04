.class Ldh/d$c;
.super Lio/grpc/n0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldh/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/n0$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
    .locals 0

    invoke-static {}, Lio/grpc/n0$e;->g()Lio/grpc/n0$e;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BUFFER_PICKER"

    return-object v0
.end method
