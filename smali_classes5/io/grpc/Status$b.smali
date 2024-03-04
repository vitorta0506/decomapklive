.class final Lio/grpc/Status$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/s0$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/s0$l<",
        "Lio/grpc/Status;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Status$a;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/Status$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, Lio/grpc/Status;

    invoke-virtual {p0, p1}, Lio/grpc/Status$b;->d(Lio/grpc/Status;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/Status$b;->c([B)Lio/grpc/Status;

    move-result-object p1

    return-object p1
.end method

.method public c([B)Lio/grpc/Status;
    .locals 0

    invoke-static {p1}, Lio/grpc/Status;->b([B)Lio/grpc/Status;

    move-result-object p1

    return-object p1
.end method

.method public d(Lio/grpc/Status;)[B
    .locals 0

    invoke-virtual {p1}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/Status$Code;->access$300(Lio/grpc/Status$Code;)[B

    move-result-object p1

    return-object p1
.end method
