.class public final Lio/grpc/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/d0$b$a;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/Status;

.field private final b:Ljava/lang/Object;

.field public c:Lio/grpc/h;


# direct methods
.method private constructor <init>(Lio/grpc/Status;Ljava/lang/Object;Lio/grpc/h;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "status"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Status;

    iput-object p1, p0, Lio/grpc/d0$b;->a:Lio/grpc/Status;

    .line 4
    iput-object p2, p0, Lio/grpc/d0$b;->b:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lio/grpc/d0$b;->c:Lio/grpc/h;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Status;Ljava/lang/Object;Lio/grpc/h;Lio/grpc/d0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/d0$b;-><init>(Lio/grpc/Status;Ljava/lang/Object;Lio/grpc/h;)V

    return-void
.end method

.method public static a(Lio/grpc/Status;)Lio/grpc/d0$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/Status;->p()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "status is OK"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lio/grpc/d0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lio/grpc/d0$b;-><init>(Lio/grpc/Status;Ljava/lang/Object;Lio/grpc/h;)V

    return-object v0
.end method

.method public static e()Lio/grpc/d0$b$a;
    .locals 2

    new-instance v0, Lio/grpc/d0$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/d0$b$a;-><init>(Lio/grpc/d0$a;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/grpc/d0$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Lio/grpc/h;
    .locals 1

    iget-object v0, p0, Lio/grpc/d0$b;->c:Lio/grpc/h;

    return-object v0
.end method

.method public d()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lio/grpc/d0$b;->a:Lio/grpc/Status;

    return-object v0
.end method
