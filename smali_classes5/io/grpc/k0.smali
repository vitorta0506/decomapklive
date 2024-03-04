.class public final Lio/grpc/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/Status;->y:Lio/grpc/s0$i;

    sput-object v0, Lio/grpc/k0;->a:Lio/grpc/s0$i;

    .line 2
    sget-object v0, Lio/grpc/Status;->w:Lio/grpc/s0$i;

    sput-object v0, Lio/grpc/k0;->b:Lio/grpc/s0$i;

    return-void
.end method
