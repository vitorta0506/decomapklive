.class Lio/grpc/ManagedChannelRegistry$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/ManagedChannelRegistry;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/grpc/ManagedChannelProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/ManagedChannelRegistry;


# direct methods
.method constructor <init>(Lio/grpc/ManagedChannelRegistry;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/ManagedChannelRegistry$a;->a:Lio/grpc/ManagedChannelRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/ManagedChannelProvider;Lio/grpc/ManagedChannelProvider;)I
    .locals 0

    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->d()I

    move-result p1

    invoke-virtual {p2}, Lio/grpc/ManagedChannelProvider;->d()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/ManagedChannelProvider;

    check-cast p2, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p0, p1, p2}, Lio/grpc/ManagedChannelRegistry$a;->a(Lio/grpc/ManagedChannelProvider;Lio/grpc/ManagedChannelProvider;)I

    move-result p1

    return p1
.end method
