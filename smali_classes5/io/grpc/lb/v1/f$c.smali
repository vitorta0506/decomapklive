.class final Lio/grpc/lb/v1/f$c;
.super Lio/grpc/lb/v1/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/lb/v1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/lb/v1/f$b;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/lb/v1/f$c;->a:Ljava/lang/String;

    return-void
.end method
