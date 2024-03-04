.class public final Lio/grpc/r$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/r$e;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/r;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/r$e;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lio/grpc/r$e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/r;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lio/grpc/r;->b:Lio/grpc/y0$d;

    invoke-static {p1, p0}, Lio/grpc/y0;->a(Lio/grpc/y0$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/grpc/r$e;->b:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/r$e;->a:Ljava/lang/String;

    return-object v0
.end method
