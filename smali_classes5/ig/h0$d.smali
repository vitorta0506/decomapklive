.class public final Lig/h0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lig/g0$a;

.field public final b:Lio/grpc/b;

.field public final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lig/g0$a;Lio/grpc/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lig/h0$d;->a:Lig/g0$a;

    .line 3
    iput-object p2, p0, Lig/h0$d;->b:Lio/grpc/b;

    .line 4
    iput-object p3, p0, Lig/h0$d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lig/h0$d;
    .locals 2

    .line 1
    new-instance v0, Lig/h0$d;

    const-string v1, "error"

    .line 2
    invoke-static {p0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lig/h0$d;-><init>(Lig/g0$a;Lio/grpc/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lig/g0$a;)Lig/h0$d;
    .locals 2

    .line 1
    new-instance v0, Lig/h0$d;

    const-string v1, "factory"

    .line 2
    invoke-static {p0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lig/g0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lig/h0$d;-><init>(Lig/g0$a;Lio/grpc/b;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c(Lio/grpc/b;)Lig/h0$d;
    .locals 3

    const-string v0, "callCreds"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lig/h0$d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lig/h0$d;->b:Lio/grpc/b;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lio/grpc/m;

    invoke-direct {v1, v0, p1}, Lio/grpc/m;-><init>(Lio/grpc/b;Lio/grpc/b;)V

    move-object p1, v1

    .line 5
    :cond_1
    new-instance v0, Lig/h0$d;

    iget-object v1, p0, Lig/h0$d;->a:Lig/g0$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lig/h0$d;-><init>(Lig/g0$a;Lio/grpc/b;Ljava/lang/String;)V

    return-object v0
.end method
