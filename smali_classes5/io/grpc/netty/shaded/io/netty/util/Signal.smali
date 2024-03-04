.class public final Lio/grpc/netty/shaded/io/netty/util/Signal;
.super Ljava/lang/Error;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/Signal$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Error;",
        "Lio/grpc/netty/shaded/io/netty/util/i<",
        "Lio/grpc/netty/shaded/io/netty/util/Signal;",
        ">;"
    }
.end annotation


# static fields
.field private static final pool:Lio/grpc/netty/shaded/io/netty/util/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/j<",
            "Lio/grpc/netty/shaded/io/netty/util/Signal;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x311aa53385c8549L


# instance fields
.field private final constant:Lio/grpc/netty/shaded/io/netty/util/Signal$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/Signal$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/Signal$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/Signal;->pool:Lio/grpc/netty/shaded/io/netty/util/j;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/Signal$b;

    invoke-direct {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/Signal$b;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/Signal;->constant:Lio/grpc/netty/shaded/io/netty/util/Signal$b;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lio/grpc/netty/shaded/io/netty/util/Signal$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/Signal;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/Signal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/netty/shaded/io/netty/util/Signal;"
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/Signal;->pool:Lio/grpc/netty/shaded/io/netty/util/j;

    invoke-virtual {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/j;->d(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/i;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/Signal;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/Signal;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/Signal;->pool:Lio/grpc/netty/shaded/io/netty/util/j;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/j;->e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/i;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/Signal;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lio/grpc/netty/shaded/io/netty/util/Signal;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/Signal;->constant:Lio/grpc/netty/shaded/io/netty/util/Signal$b;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/util/Signal;->constant:Lio/grpc/netty/shaded/io/netty/util/Signal$b;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/a;->a(Lio/grpc/netty/shaded/io/netty/util/a;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/Signal;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/Signal;->compareTo(Lio/grpc/netty/shaded/io/netty/util/Signal;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public expect(Lio/grpc/netty/shaded/io/netty/util/Signal;)V
    .locals 3

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected signal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public id()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/Signal;->constant:Lio/grpc/netty/shaded/io/netty/util/Signal$b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/a;->b()I

    move-result v0

    return v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/Signal;->constant:Lio/grpc/netty/shaded/io/netty/util/Signal$b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/Signal;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
