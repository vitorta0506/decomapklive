.class final Lio/grpc/v0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/b1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/b1$b<",
        "Lio/grpc/u0;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/v0$a;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/v0$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/grpc/u0;

    invoke-virtual {p0, p1}, Lio/grpc/v0$c;->d(Lio/grpc/u0;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/u0;

    invoke-virtual {p0, p1}, Lio/grpc/v0$c;->c(Lio/grpc/u0;)I

    move-result p1

    return p1
.end method

.method public c(Lio/grpc/u0;)I
    .locals 0

    invoke-virtual {p1}, Lio/grpc/u0;->e()I

    move-result p1

    return p1
.end method

.method public d(Lio/grpc/u0;)Z
    .locals 0

    invoke-virtual {p1}, Lio/grpc/u0;->d()Z

    move-result p1

    return p1
.end method
