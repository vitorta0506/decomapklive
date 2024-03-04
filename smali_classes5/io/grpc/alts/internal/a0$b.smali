.class final Lio/grpc/alts/internal/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/a0$b$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lio/grpc/alts/internal/RpcProtocolVersions$Version;


# direct methods
.method private constructor <init>(Lio/grpc/alts/internal/a0$b$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lio/grpc/alts/internal/a0$b$a;->a(Lio/grpc/alts/internal/a0$b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/alts/internal/a0$b;->a:Z

    .line 4
    invoke-static {p1}, Lio/grpc/alts/internal/a0$b$a;->b(Lio/grpc/alts/internal/a0$b$a;)Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/a0$b;->b:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/alts/internal/a0$b$a;Lio/grpc/alts/internal/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/a0$b;-><init>(Lio/grpc/alts/internal/a0$b$a;)V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/alts/internal/a0$b;->a:Z

    return v0
.end method
