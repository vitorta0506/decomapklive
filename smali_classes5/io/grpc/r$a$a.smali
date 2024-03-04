.class Lio/grpc/r$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/r$a;->A(Lio/grpc/r$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/r$a;


# direct methods
.method constructor <init>(Lio/grpc/r$a;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/r$a$a;->a:Lio/grpc/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/r;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/r$a$a;->a:Lio/grpc/r$a;

    invoke-virtual {p1}, Lio/grpc/r;->e()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/r$a;->C(Ljava/lang/Throwable;)Z

    return-void
.end method
