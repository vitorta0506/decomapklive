.class abstract Leh/j0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/String;Lio/grpc/e;Z)Leh/j0$d;
    .locals 1

    new-instance v0, Leh/f;

    invoke-direct {v0, p0, p1, p2}, Leh/f;-><init>(Ljava/lang/String;Lio/grpc/e;Z)V

    return-object v0
.end method


# virtual methods
.method abstract a()Lio/grpc/e;
.end method

.method abstract c()Ljava/lang/String;
.end method

.method abstract d()Z
.end method
