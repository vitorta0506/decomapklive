.class final Lio/opencensus/trace/h$b;
.super Lio/opencensus/trace/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/h$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/f;
    .locals 0

    invoke-static {p1, p2}, Lio/opencensus/trace/f$a;->c(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/f$a;

    move-result-object p1

    return-object p1
.end method
