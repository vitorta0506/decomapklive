.class abstract Leh/l2$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/l2$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Z)Leh/l2$a$b$a;
    .locals 1

    new-instance v0, Leh/g0;

    invoke-direct {v0, p0, p1, p2, p3}, Leh/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Z)V

    return-object v0
.end method

.method static c(Ljava/lang/String;Z)Leh/l2$a$b$a;
    .locals 1

    const-string v0, "path"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, v0, p1}, Leh/l2$a$b$a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Z)Leh/l2$a$b$a;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/lang/String;Z)Leh/l2$a$b$a;
    .locals 1

    const-string v0, "prefix"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, v0, p1}, Leh/l2$a$b$a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Z)Leh/l2$a$b$a;

    move-result-object p0

    return-object p0
.end method

.method static e(Lcom/google/re2j/Pattern;)Leh/l2$a$b$a;
    .locals 2

    const-string v0, "regEx"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v0, p0, v1}, Leh/l2$a$b$a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Z)Leh/l2$a$b$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract a()Z
.end method

.method abstract f()Ljava/lang/String;
.end method

.method abstract g()Ljava/lang/String;
.end method

.method abstract h()Lcom/google/re2j/Pattern;
.end method
