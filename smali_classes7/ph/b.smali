.class public Lph/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lmh/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lph/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lph/b;->a:Ljava/util/logging/Logger;

    .line 2
    const-class v0, Lmh/h;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lph/b;->c(Ljava/lang/ClassLoader;)Lmh/h;

    move-result-object v0

    sput-object v0, Lph/b;->b:Lmh/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmh/g;
    .locals 1

    sget-object v0, Lph/b;->b:Lmh/h;

    invoke-interface {v0}, Lmh/h;->a()Lmh/g;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lmh/g;)Lio/opencensus/trace/Span;
    .locals 1

    sget-object v0, Lph/b;->b:Lmh/h;

    invoke-interface {v0, p0}, Lmh/h;->c(Lmh/g;)Lio/opencensus/trace/Span;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/ClassLoader;)Lmh/h;
    .locals 3

    :try_start_0
    const-string v0, "io.opentelemetry.opencensusshim.OpenTelemetryContextManager"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lmh/h;

    .line 2
    invoke-static {p0, v0}, Llh/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmh/h;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lph/b;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t load full implementation for OpenTelemetry context manager, now loading original implementation."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance p0, Lph/c;

    invoke-direct {p0}, Lph/c;-><init>()V

    return-object p0
.end method

.method public static d(Lmh/g;Lio/opencensus/trace/Span;)Lmh/g;
    .locals 1

    sget-object v0, Lph/b;->b:Lmh/h;

    invoke-interface {v0, p0, p1}, Lmh/h;->b(Lmh/g;Lio/opencensus/trace/Span;)Lmh/g;

    move-result-object p0

    return-object p0
.end method
