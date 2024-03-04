.class interface abstract Leh/s2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract b()Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/internal/p1<",
            "Leh/p2;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/xds/XdsInitializationException;
        }
    .end annotation
.end method
