.class final Lio/grpc/ManagedChannelRegistry$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/b1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ManagedChannelRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/b1$b<",
        "Lio/grpc/ManagedChannelProvider;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/ManagedChannelRegistry$a;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ManagedChannelRegistry$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p0, p1}, Lio/grpc/ManagedChannelRegistry$b;->d(Lio/grpc/ManagedChannelProvider;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p0, p1}, Lio/grpc/ManagedChannelRegistry$b;->c(Lio/grpc/ManagedChannelProvider;)I

    move-result p1

    return p1
.end method

.method public c(Lio/grpc/ManagedChannelProvider;)I
    .locals 0

    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->d()I

    move-result p1

    return p1
.end method

.method public d(Lio/grpc/ManagedChannelProvider;)Z
    .locals 0

    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->b()Z

    move-result p1

    return p1
.end method
