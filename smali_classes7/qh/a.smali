.class public Lqh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lqh/d;

.field static final b:Lqh/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lqh/d;

    const-string v1, ""

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v1, v2, v3}, Lqh/d;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lqh/a;->a:Lqh/d;

    .line 2
    new-instance v0, Lqh/b;

    invoke-direct {v0, v2, v3}, Lqh/b;-><init>(J)V

    sput-object v0, Lqh/a;->b:Lqh/b;

    return-void
.end method

.method protected constructor <init>(Lqh/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lqh/a;->a:Lqh/d;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "nope"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method protected a(Ljava/lang/String;J)Lqh/d;
    .locals 0

    sget-object p1, Lqh/a;->a:Lqh/d;

    return-object p1
.end method

.method protected b(Ljava/lang/String;Lqh/d;)V
    .locals 0

    return-void
.end method

.method protected c(Lqh/b;)V
    .locals 0

    return-void
.end method

.method protected d()Lqh/b;
    .locals 1

    sget-object v0, Lqh/a;->b:Lqh/b;

    return-object v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected f(Ljava/lang/String;Lqh/d;)V
    .locals 0

    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected h(Ljava/lang/String;Lqh/d;)V
    .locals 0

    return-void
.end method
