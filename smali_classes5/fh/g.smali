.class public abstract Lfh/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/net/InetAddress;I)Lfh/g;
    .locals 1

    new-instance v0, Lfh/a;

    invoke-direct {v0, p0, p1}, Lfh/a;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/net/InetAddress;
.end method

.method abstract c()I
.end method
