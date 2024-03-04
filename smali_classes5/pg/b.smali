.class public Lpg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpg/o<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lpg/b;

.field private static final b:Lio/grpc/netty/shaded/io/netty/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpg/b;

    invoke-direct {v0}, Lpg/b;-><init>()V

    sput-object v0, Lpg/b;->a:Lpg/b;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v1, "true"

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lpg/b;->b:Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lpg/b;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
