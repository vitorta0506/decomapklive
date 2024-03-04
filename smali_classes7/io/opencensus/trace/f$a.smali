.class final Lio/opencensus/trace/f$a;
.super Lio/opencensus/trace/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/f;-><init>()V

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static c(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/f$a;
    .locals 0

    new-instance p1, Lio/opencensus/trace/f$a;

    invoke-direct {p1, p0}, Lio/opencensus/trace/f$a;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Z)Lio/opencensus/trace/f;
    .locals 0

    return-object p0
.end method

.method public b()Lio/opencensus/trace/Span;
    .locals 1

    sget-object v0, Lio/opencensus/trace/d;->e:Lio/opencensus/trace/d;

    return-object v0
.end method
