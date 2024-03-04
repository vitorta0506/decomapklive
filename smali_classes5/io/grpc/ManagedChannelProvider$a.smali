.class public final Lio/grpc/ManagedChannelProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ManagedChannelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/r0<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/grpc/r0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/ManagedChannelProvider$a;->a:Lio/grpc/r0;

    .line 3
    iput-object p2, p0, Lio/grpc/ManagedChannelProvider$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lio/grpc/r0;)Lio/grpc/ManagedChannelProvider$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0<",
            "*>;)",
            "Lio/grpc/ManagedChannelProvider$a;"
        }
    .end annotation

    new-instance v0, Lio/grpc/ManagedChannelProvider$a;

    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/r0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/ManagedChannelProvider$a;-><init>(Lio/grpc/r0;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lio/grpc/ManagedChannelProvider$a;
    .locals 2

    new-instance v0, Lio/grpc/ManagedChannelProvider$a;

    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/grpc/ManagedChannelProvider$a;-><init>(Lio/grpc/r0;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c()Lio/grpc/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/r0<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/ManagedChannelProvider$a;->a:Lio/grpc/r0;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/ManagedChannelProvider$a;->b:Ljava/lang/String;

    return-object v0
.end method
