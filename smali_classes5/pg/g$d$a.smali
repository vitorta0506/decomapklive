.class final Lpg/g$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/g$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
