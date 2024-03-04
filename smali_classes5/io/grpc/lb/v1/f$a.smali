.class Lio/grpc/lb/v1/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/lb/v1/f;->b(Lio/grpc/d;)Lio/grpc/lb/v1/f$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/b$a<",
        "Lio/grpc/lb/v1/f$d;",
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
.method public bridge synthetic a(Lio/grpc/d;Lio/grpc/c;)Lio/grpc/stub/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/f$a;->b(Lio/grpc/d;Lio/grpc/c;)Lio/grpc/lb/v1/f$d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/grpc/d;Lio/grpc/c;)Lio/grpc/lb/v1/f$d;
    .locals 2

    new-instance v0, Lio/grpc/lb/v1/f$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/grpc/lb/v1/f$d;-><init>(Lio/grpc/d;Lio/grpc/c;Lio/grpc/lb/v1/f$a;)V

    return-object v0
.end method
