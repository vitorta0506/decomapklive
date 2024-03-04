.class public abstract Leh/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/j0$b;,
        Leh/j0$a;,
        Leh/j0$c;,
        Leh/j0$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Leh/j0$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/xds/XdsInitializationException;
        }
    .end annotation
.end method

.method b(Ljava/util/Map;)Leh/j0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Leh/j0$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/xds/XdsInitializationException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
