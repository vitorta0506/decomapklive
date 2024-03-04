.class Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;
.super Lpg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field static final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpg/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e$d;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

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
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/util/Date;

    invoke-static {p1}, Lpg/d;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lpg/d;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
