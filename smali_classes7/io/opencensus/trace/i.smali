.class public final Lio/opencensus/trace/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lio/opencensus/trace/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/opencensus/trace/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/i;->a:Ljava/util/logging/Logger;

    .line 2
    const-class v0, Lio/opencensus/trace/g;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/opencensus/trace/i;->c(Ljava/lang/ClassLoader;)Lio/opencensus/trace/g;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/i;->b:Lio/opencensus/trace/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/opencensus/trace/export/b;
    .locals 1

    sget-object v0, Lio/opencensus/trace/i;->b:Lio/opencensus/trace/g;

    invoke-virtual {v0}, Lio/opencensus/trace/g;->a()Lio/opencensus/trace/export/b;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lio/opencensus/trace/h;
    .locals 1

    sget-object v0, Lio/opencensus/trace/i;->b:Lio/opencensus/trace/g;

    invoke-virtual {v0}, Lio/opencensus/trace/g;->b()Lio/opencensus/trace/h;

    move-result-object v0

    return-object v0
.end method

.method static c(Ljava/lang/ClassLoader;)Lio/opencensus/trace/g;
    .locals 6

    .line 1
    const-class v0, Lio/opencensus/trace/g;

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "io.opentelemetry.opencensusshim.OpenTelemetryTraceComponentImpl"

    .line 2
    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-static {v2, v0}, Llh/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/opencensus/trace/g;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 4
    sget-object v3, Lio/opencensus/trace/i;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Couldn\'t load full implementation for OpenTelemetry TraceComponent, now trying to load original implementation."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    const-string v2, "io.opencensus.impl.trace.TraceComponentImpl"

    .line 5
    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    invoke-static {v2, v0}, Llh/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/opencensus/trace/g;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v2

    .line 7
    sget-object v3, Lio/opencensus/trace/i;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Couldn\'t load full implementation for TraceComponent, now trying to load lite implementation."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_2
    const-string v2, "io.opencensus.impllite.trace.TraceComponentImplLite"

    .line 8
    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 9
    invoke-static {p0, v0}, Llh/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/g;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 10
    sget-object v0, Lio/opencensus/trace/i;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t load lite implementation for TraceComponent, now using default implementation for TraceComponent."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-static {}, Lio/opencensus/trace/g;->c()Lio/opencensus/trace/g;

    move-result-object p0

    return-object p0
.end method
