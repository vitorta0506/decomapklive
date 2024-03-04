.class public abstract Lfh/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfh/i$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Lfh/i$a;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;
    .locals 10

    const-string v0, "name"

    move-object v2, p0

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lfh/c;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lfh/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Lfh/i$a;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;
    .locals 9

    const-string v0, "name"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "exactValue"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v8, p2

    .line 3
    invoke-static/range {v1 .. v8}, Lfh/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Lfh/i$a;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;
    .locals 9

    const-string v0, "name"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "prefix"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p1

    move v8, p2

    .line 3
    invoke-static/range {v1 .. v8}, Lfh/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Lfh/i$a;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;ZZ)Lfh/i;
    .locals 9

    const-string v0, "name"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v8, p2

    invoke-static/range {v1 .. v8}, Lfh/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Lfh/i$a;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Lfh/i$a;Z)Lfh/i;
    .locals 9

    const-string v0, "name"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "range"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move v8, p2

    .line 3
    invoke-static/range {v1 .. v8}, Lfh/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Lfh/i$a;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Lcom/google/re2j/Pattern;Z)Lfh/i;
    .locals 9

    const-string v0, "name"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "safeRegEx"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move v8, p2

    .line 3
    invoke-static/range {v1 .. v8}, Lfh/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Lfh/i$a;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;
    .locals 9

    const-string v0, "name"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "suffix"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 3
    invoke-static/range {v1 .. v8}, Lfh/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/re2j/Pattern;Lfh/i$a;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)Lfh/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract i()Z
.end method

.method public j(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lfh/i;->m()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lfh/i;->m()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lfh/i;->i()Z

    move-result v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lfh/i;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {p0}, Lfh/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lfh/i;->o()Lcom/google/re2j/Pattern;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {p0}, Lfh/i;->o()Lcom/google/re2j/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/re2j/Pattern;->matches(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lfh/i;->n()Lfh/i$a;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 7
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 8
    invoke-virtual {p0}, Lfh/i;->n()Lfh/i$a;

    move-result-object p1

    invoke-virtual {p1}, Lfh/i$a;->c()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_4

    .line 9
    invoke-virtual {p0}, Lfh/i;->n()Lfh/i$a;

    move-result-object p1

    invoke-virtual {p1}, Lfh/i$a;->b()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    .line 10
    :cond_5
    invoke-virtual {p0}, Lfh/i;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 11
    invoke-virtual {p0}, Lfh/i;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {p0}, Lfh/i;->m()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 13
    invoke-virtual {p0}, Lfh/i;->m()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    .line 14
    :cond_7
    invoke-virtual {p0}, Lfh/i;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    .line 15
    :goto_1
    invoke-virtual {p0}, Lfh/i;->i()Z

    move-result v2

    if-eq p1, v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m()Ljava/lang/Boolean;
.end method

.method public abstract n()Lfh/i$a;
.end method

.method public abstract o()Lcom/google/re2j/Pattern;
.end method

.method public abstract p()Ljava/lang/String;
.end method
