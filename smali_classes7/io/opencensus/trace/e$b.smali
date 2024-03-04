.class final Lio/opencensus/trace/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljh/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lmh/g;

.field private final b:Lio/opencensus/trace/Span;

.field private final c:Z


# direct methods
.method private constructor <init>(Lio/opencensus/trace/Span;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/opencensus/trace/e$b;->b:Lio/opencensus/trace/Span;

    .line 4
    iput-boolean p2, p0, Lio/opencensus/trace/e$b;->c:Z

    .line 5
    invoke-static {}, Lph/b;->a()Lmh/g;

    move-result-object p2

    invoke-static {p2, p1}, Lph/b;->d(Lmh/g;Lio/opencensus/trace/Span;)Lmh/g;

    move-result-object p1

    invoke-interface {p1}, Lmh/g;->b()Lmh/g;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/trace/e$b;->a:Lmh/g;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/Span;ZLio/opencensus/trace/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/trace/e$b;-><init>(Lio/opencensus/trace/Span;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    invoke-static {}, Lph/b;->a()Lmh/g;

    move-result-object v0

    iget-object v1, p0, Lio/opencensus/trace/e$b;->a:Lmh/g;

    invoke-interface {v0, v1}, Lmh/g;->a(Lmh/g;)V

    .line 2
    iget-boolean v0, p0, Lio/opencensus/trace/e$b;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/opencensus/trace/e$b;->b:Lio/opencensus/trace/Span;

    invoke-virtual {v0}, Lio/opencensus/trace/Span;->f()V

    :cond_0
    return-void
.end method
