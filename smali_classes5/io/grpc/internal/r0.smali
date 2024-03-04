.class public final Lio/grpc/internal/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Lio/grpc/SecurityLevel;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Lio/grpc/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "io.grpc.internal.GrpcAttributes.securityLevel"

    .line 1
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/r0;->a:Lio/grpc/a$c;

    const-string v0, "io.grpc.internal.GrpcAttributes.clientEagAttrs"

    .line 2
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/r0;->b:Lio/grpc/a$c;

    return-void
.end method
