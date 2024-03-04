.class final Lug/h$e;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2948fde46dbd74dfL


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Lug/h$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lug/h$e;"
        }
    .end annotation

    new-instance v0, Lug/h$e;

    invoke-direct {v0}, Lug/h$e;-><init>()V

    invoke-static {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->f(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lug/h$e;

    return-object p0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
