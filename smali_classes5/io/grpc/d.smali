.class public abstract Lio/grpc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/c;",
            ")",
            "Lio/grpc/g<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end method
