.class public final Lio/opencensus/trace/d;
.super Lio/opencensus/trace/Span;
.source "SourceFile"


# static fields
.field public static final e:Lio/opencensus/trace/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/opencensus/trace/d;

    invoke-direct {v0}, Lio/opencensus/trace/d;-><init>()V

    sput-object v0, Lio/opencensus/trace/d;->e:Lio/opencensus/trace/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    sget-object v0, Lmh/j;->f:Lmh/j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/opencensus/trace/Span;-><init>(Lmh/j;Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmh/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "description"

    .line 1
    invoke-static {p1, v0}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attributes"

    .line 2
    invoke-static {p2, p1}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Lio/opencensus/trace/MessageEvent;)V
    .locals 1

    const-string v0, "messageEvent"

    invoke-static {p1, v0}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Lio/opencensus/trace/NetworkEvent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public g(Lmh/i;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i(Ljava/lang/String;Lmh/a;)V
    .locals 1

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 2
    invoke-static {p2, p1}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmh/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attributes"

    invoke-static {p1, v0}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BlankSpan"

    return-object v0
.end method
