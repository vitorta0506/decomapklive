.class public final Lio/grpc/alts/internal/g0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/g0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/grpc/SecurityLevel;

.field private final b:Lio/grpc/c0$c;


# direct methods
.method public constructor <init>(Lio/grpc/SecurityLevel;Lio/grpc/c0$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "securityLevel"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/SecurityLevel;

    iput-object p1, p0, Lio/grpc/alts/internal/g0$b$a;->a:Lio/grpc/SecurityLevel;

    .line 3
    iput-object p2, p0, Lio/grpc/alts/internal/g0$b$a;->b:Lio/grpc/c0$c;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/c0$c;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/g0$b$a;->b:Lio/grpc/c0$c;

    return-object v0
.end method

.method public b()Lio/grpc/SecurityLevel;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/g0$b$a;->a:Lio/grpc/SecurityLevel;

    return-object v0
.end method
