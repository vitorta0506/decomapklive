.class final Lio/grpc/health/v1/a$b;
.super Lio/grpc/health/v1/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/health/v1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/health/v1/a$a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/health/v1/a$b;->a:Ljava/lang/String;

    return-void
.end method
