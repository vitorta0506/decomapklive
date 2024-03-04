.class final Lkg/n$a;
.super Lug/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/n<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lug/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lkg/n$a;->o()[B

    move-result-object v0

    return-object v0
.end method

.method protected o()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->j(I)[B

    move-result-object v0

    return-object v0
.end method
