.class final Leh/q2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/q2$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Leh/q2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Leh/q2;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "prefix"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/q2;->a:Ljava/lang/String;

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Leh/q2;->b:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/logging/LogRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    const-string p0, "log"

    .line 5
    invoke-virtual {v1, p0}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    :cond_0
    return-void
.end method

.method private static e(Leh/q2$b;)Ljava/util/logging/Level;
    .locals 1

    .line 1
    sget-object v0, Leh/q2$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0
.end method

.method static f(Lio/grpc/g0;)Leh/q2;
    .locals 1

    const-string v0, "logId"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Leh/q2;

    invoke-virtual {p0}, Lio/grpc/g0;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Leh/q2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method a(Leh/q2$b;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Leh/q2;->e(Leh/q2$b;)Ljava/util/logging/Level;

    move-result-object p1

    .line 2
    sget-object v0, Leh/q2;->b:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method b(Leh/q2$b;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Leh/q2;->e(Leh/q2$b;)Ljava/util/logging/Level;

    move-result-object p1

    .line 2
    iget-object v0, p0, Leh/q2;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Leh/q2;->d(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method varargs c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Leh/q2;->e(Leh/q2$b;)Ljava/util/logging/Level;

    move-result-object p1

    .line 2
    sget-object v0, Leh/q2;->b:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p3, p0, Leh/q2;->a:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Leh/q2;->d(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
