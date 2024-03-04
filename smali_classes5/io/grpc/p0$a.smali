.class final Lio/grpc/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/b1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/b1$b<",
        "Lio/grpc/o0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/grpc/o0;

    invoke-virtual {p0, p1}, Lio/grpc/p0$a;->d(Lio/grpc/o0;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/o0;

    invoke-virtual {p0, p1}, Lio/grpc/p0$a;->c(Lio/grpc/o0;)I

    move-result p1

    return p1
.end method

.method public c(Lio/grpc/o0;)I
    .locals 0

    invoke-virtual {p1}, Lio/grpc/o0;->c()I

    move-result p1

    return p1
.end method

.method public d(Lio/grpc/o0;)Z
    .locals 0

    invoke-virtual {p1}, Lio/grpc/o0;->d()Z

    move-result p1

    return p1
.end method
