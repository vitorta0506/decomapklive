.class public abstract Lfh/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;Z)Lfh/j;
    .locals 8

    new-instance v7, Lfh/e;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lfh/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;Z)V

    return-object v7
.end method

.method public static d(Ljava/lang/String;)Lfh/j;
    .locals 7

    const-string v0, "contains"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    .line 2
    invoke-static/range {v1 .. v6}, Lfh/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;Z)Lfh/j;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Z)Lfh/j;
    .locals 7

    const-string v0, "exact"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    .line 2
    invoke-static/range {v1 .. v6}, Lfh/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;Z)Lfh/j;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Z)Lfh/j;
    .locals 7

    const-string v0, "prefix"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v6, p1

    .line 2
    invoke-static/range {v1 .. v6}, Lfh/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;Z)Lfh/j;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/re2j/Pattern;)Lfh/j;
    .locals 7

    const-string v0, "regEx"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    .line 2
    invoke-static/range {v1 .. v6}, Lfh/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;Z)Lfh/j;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Z)Lfh/j;
    .locals 7

    const-string v0, "suffix"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move v6, p1

    .line 2
    invoke-static/range {v1 .. v6}, Lfh/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;Z)Lfh/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract c()Ljava/lang/String;
.end method

.method abstract i()Z
.end method

.method abstract j()Ljava/lang/String;
.end method

.method abstract k()Lcom/google/re2j/Pattern;
.end method

.method abstract l()Ljava/lang/String;
.end method
