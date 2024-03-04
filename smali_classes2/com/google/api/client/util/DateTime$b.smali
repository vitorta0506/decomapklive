.class Lcom/google/api/client/util/DateTime$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(JIZLjava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/api/client/util/DateTime$b;->a:J

    .line 4
    iput p3, p0, Lcom/google/api/client/util/DateTime$b;->b:I

    .line 5
    iput-boolean p4, p0, Lcom/google/api/client/util/DateTime$b;->c:Z

    .line 6
    iput-object p5, p0, Lcom/google/api/client/util/DateTime$b;->d:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(JIZLjava/lang/Integer;Lcom/google/api/client/util/DateTime$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/api/client/util/DateTime$b;-><init>(JIZLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/google/api/client/util/DateTime$b;)Lcom/google/api/client/util/DateTime;
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/util/DateTime$b;->c()Lcom/google/api/client/util/DateTime;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/api/client/util/DateTime$b;)Lcom/google/api/client/util/DateTime$SecondsAndNanos;
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/util/DateTime$b;->d()Lcom/google/api/client/util/DateTime$SecondsAndNanos;

    move-result-object p0

    return-object p0
.end method

.method private c()Lcom/google/api/client/util/DateTime;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/google/api/client/util/DateTime$b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/google/api/client/util/DateTime$b;->b:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 3
    new-instance v4, Lcom/google/api/client/util/DateTime;

    iget-boolean v5, p0, Lcom/google/api/client/util/DateTime$b;->c:Z

    xor-int/lit8 v5, v5, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/api/client/util/DateTime$b;->d:Ljava/lang/Integer;

    invoke-direct {v4, v5, v0, v1, v2}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    return-object v4
.end method

.method private d()Lcom/google/api/client/util/DateTime$SecondsAndNanos;
    .locals 5

    new-instance v0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;

    iget-wide v1, p0, Lcom/google/api/client/util/DateTime$b;->a:J

    iget v3, p0, Lcom/google/api/client/util/DateTime$b;->b:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/api/client/util/DateTime$SecondsAndNanos;-><init>(JILcom/google/api/client/util/DateTime$a;)V

    return-object v0
.end method
