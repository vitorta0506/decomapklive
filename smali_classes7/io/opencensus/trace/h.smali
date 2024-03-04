.class public abstract Lio/opencensus/trace/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/h$b;
    }
.end annotation


# static fields
.field private static final a:Lio/opencensus/trace/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/opencensus/trace/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/h$b;-><init>(Lio/opencensus/trace/h$a;)V

    sput-object v0, Lio/opencensus/trace/h;->a:Lio/opencensus/trace/h$b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lio/opencensus/trace/h;
    .locals 1

    sget-object v0, Lio/opencensus/trace/h;->a:Lio/opencensus/trace/h$b;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lio/opencensus/trace/f;
    .locals 1

    invoke-static {}, Lio/opencensus/trace/e;->a()Lio/opencensus/trace/Span;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/opencensus/trace/h;->c(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/f;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/f;
.end method

.method public final d(Lio/opencensus/trace/Span;)Ljh/a;
    .locals 1

    const-string v0, "span"

    invoke-static {p1, v0}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/trace/Span;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/opencensus/trace/e;->b(Lio/opencensus/trace/Span;Z)Ljh/a;

    move-result-object p1

    return-object p1
.end method
